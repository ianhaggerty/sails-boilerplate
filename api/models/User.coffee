#===============================================================================
# User model
#
# Represents a single user.
#===============================================================================

Promise = require "bluebird"
bcrypt  = require "bcrypt"

module.exports =
  attributes:

  # Personal Details
    email:
      type: "email"
      unique: true
      required: true

    password:
      type: "string"
      minLength: 8
      maxLength: 256

    isAdmin:
      type: "boolean"
      defaultsTo: false

  # Instance Methods
    toJSON: ->
      o = @toObject()
      delete o.password
      o
    validPassword: (password)->
      hash = @password
      new Promise (resolve, reject)->
        bcrypt.compare password, hash, (err, res)->
          if err
            reject err
          else if !res
            reject "Passwords do not match"
          else
            resolve()

# Static Methods

# Lifecycle Callbacks
  beforeValidate: (values, next)->
    removeAdmin values ## IMPERATIVE ##
    next()

  beforeCreate: (values, next) ->
    hashPassword values, next

removeAdmin = (values)->
  if values.isAdmin
    delete values.isAdmin

hashPassword = (values, next)->
  if values.password
    bcrypt.hash values.password, 10, (err, hash)->
      values.password = hash
      next(err)
  else
    next()