# Sails Boilerplate

*An opinionated configuration*

***

* ## [sailsjs](http://sailsjs.org/#/) web framework

* ## [compass](http://compass-style.org/) styles

  * ### [scss](http://sass-lang.com/)
  
  * ### [normalize](http://necolas.github.io/normalize.css/)
  
* ## icons

  * ### [svgstore](https://github.com/FWeinb/grunt-svgstore)
  
  * ### [webfont](https://github.com/sapegin/grunt-webfont)
  
* ## [passport](http://passportjs.org/) authentication

* ## [jasmine](http://jasmine.github.io/2.1/introduction.html) tests

* ## [jade](http://jade-lang.com/) templating

* ## [marionette](http://marionettejs.com/) (SPA) frontend

  * ### [backbone](http://backbonejs.org/)
  
  * ### [jquery](http://jquery.com/)
  
  * ### [lodash](https://lodash.com/)
  
  * ### [backbone.sails](https://github.com/oscarhaggerty/Backbone.Sails)

* ## [mongodb](http://www.mongodb.org/) database

* ## [connect-mongo](https://github.com/kcbanner/connect-mongo) session store

* ## [cron](https://www.npmjs.org/package/cron) jobs

* ## [browsersync](http://www.browsersync.io/) live reloading

* ## [nodemon](https://github.com/ChrisWren/grunt-nodemon) server rebooting

* ## [forever](https://www.npmjs.com/package/forever) continuous script running

* ## [node-debug](https://www.npmjs.com/package/node-debug) server side debugging

***

## TO START

* `npm install .`

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
* `npm install -g forever mongodb node-debug`