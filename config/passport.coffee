#===============================================================================
# Passport configuration
#
# http://passportjs.org/guide/configure/
#===============================================================================

passport = require "passport"
LocalStrategy = require("passport-local").Strategy

#  passport.serializeUser (user, done) ->
#    done null, user.id
#
#  passport.deserializeUser (id, done) ->
#    User.findOneById id, done

passport.use new LocalStrategy
  usernameField: "email"
  passwordField: "password"
, (email, password, done) ->
  User.findOne(email: email).exec (err, user) ->

    if err
      return done(err)

    if !user
      return done null, false,
        message: "incorrect email"

    user.validPassword(password)
    .then ->
      done null, user
    .catch (err) ->
      done null, false,
        message: "incorrect password"

module.exports =
  express:
    customMiddleware: (app) ->
      app.use passport.initialize()

      # app.use passport.session() // see the 'isAuthenticated' policy

      sails.log.info "Passport middleware initialized"