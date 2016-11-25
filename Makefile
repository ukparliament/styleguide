# Node modules for browser testing
BROWSER-SYNC=node ./node_modules/.bin/browser-sync

# Application host and port
APP_HOST=localhost
APP_PORT=3000

# Application asset paths
APP_ASSETS=app/assets
APP_VIEWS=app/views


install:
	@git submodule init
	@git submodule update
	@bundle
	@npm i
	@make install -C pugin
	@make build -C pugin

browser-sync:
	@$(BROWSER-SYNC) start --proxy $(APP_HOST):$(APP_PORT) --files "$(APP_ASSETS), $(APP_VIEWS)"
