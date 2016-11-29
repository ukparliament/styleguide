install:
	@git submodule init
	@git submodule update
	@bundle
	@npm i
	@make install -C pugin
