APPLICATION_JS ?= lib/javascripts/application.js

build:
	@cat src/vendor/jquery.js         >  ${APPLICATION_JS}
	@cat src/vendor/jquery-ui.js      >> ${APPLICATION_JS}
	@cat src/vendor/underscore.js     >> ${APPLICATION_JS}
	@cat src/vendor/transformjs.js    >> ${APPLICATION_JS}
	@cat src/vendor/json2.js          >> ${APPLICATION_JS}
	@coffee -p src/helpers.coffee     >> ${APPLICATION_JS}
	@coffee -p src/models.coffee      >> ${APPLICATION_JS}
	@coffee -p src/controllers.coffee >> ${APPLICATION_JS}
	@coffee -p src/application.coffee >> ${APPLICATION_JS}

.PHONY: build
