# Sails Boilerplate

*An opinionated configuration*

***

* ## [sailsjs](http://sailsjs.org/#/) web framework

  An ambitious server side framework.

* ## [compass](http://compass-style.org/) styles

  * ### [scss](http://sass-lang.com/)
  
    Syntactically awesome style sheets.
  
  * ### [normalize](http://necolas.github.io/normalize.css/)
  
    A CSS reset snippet.
  
* ## icons

  * ### [svgstore](https://github.com/FWeinb/grunt-svgstore)
    
    Concatenates a bunch of svg files into a single svg file.
  
  * ### [webfont](https://github.com/sapegin/grunt-webfont)
  
    Takes a bunch of svg files and produces a webfont.
  
* ## [passport](http://passportjs.org/)

  A library which manages authentication with different OAuth providers.

* ## [jasmine](http://jasmine.github.io/2.1/introduction.html)

  A testing suite for javascript.

* ## [jade](http://jade-lang.com/) templating

  A node oriented html templating language.

* ## [marionette](http://marionettejs.com/) (SPA) frontend

  A Backbone framework for building massive, maintainable single page applications.

  * ### [backbone](http://backbonejs.org/)
  
    Gives backbone to your frontend architecture.
  
  * ### [jquery](http://jquery.com/)
  
    The popular DOM selector library.
  
  * ### [lodash](https://lodash.com/)
  
    A powerful and efficient javascript utilities library.
  
  * ### [backbone.sails](https://github.com/oscarhaggerty/Backbone.Sails)
  
    A plugin which integrates Sails into Backbone.

* ## mongodb database

  * ### [mongodb](http://www.mongodb.org/)
  
    The mongodb driver.

  * ### [connect-mongo](https://github.com/kcbanner/connect-mongo)
  
    A session-store which persists to mongodb.

* ## automation

  * ### [cron](https://www.npmjs.org/package/cron)
  
    A node package to repeat scheduled tasks on the server.
  
  * ### [browsersync](http://www.browsersync.io/)
  
    Set's up a proxy server to sails, which refreshes in the browser when files
    are changed.
  
  * ### [nodemon](https://github.com/ChrisWren/grunt-nodemon)
  
    Reboot's the server when server side code changes.
  
  * ### [forever](https://www.npmjs.com/package/forever)
  
    Continuously runs a process (`app.js`) reinitializing if there is an error.

* ## [node-debug](https://www.npmjs.com/package/node-debug)

  Set's up a browser based window for debugging server side code.

* ## bower package manager

  * ### [bower](http://bower.io/)
  
    A package manager for front end javascript libraries.
  
  * ### [grunt-bower](https://www.npmjs.com/package/grunt-bower)
  
    The grunt task which automates the integration of bower packages into the
    sails build system.

***

## TO START

* `npm install .`
* `bower install .`

### Development Environment

* `grunt watchAll`
* `grunt bootDev`

### Debugging Environment

* `grunt buildDev`
* `grunt debug`

### Production Environment

* configure `config/env/production`
* `set PORT=80 & set NODE_ENV=production` *(windows)*
* `grunt buildProd`
* `forever start app.js --prod`
* `forever stop app.js`

## External Dependencies

* [ruby](http://www.ruby-lang.org/en/downloads/)
* `gem update --system && gem install compass`
* `npm install -g forever mongodb node-debug bower browser-sync`
* [ttfautohont](http://www.freetype.org/ttfautohint/#download)
* [fontforge](http://fontforge.github.io/en-US/) (make sure bin folder is available to your environment)