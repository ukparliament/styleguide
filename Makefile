install:
	@git submodule init
	@git submodule update
	@bundle
	@sudo npm install -g browser-sync
	@npm i
	@make install -C pugin
	@make build -C pugin
