install:
	@git submodule init
	@git submodule update
	@bundle
	@make install -C pugin
	@make build -C pugin
