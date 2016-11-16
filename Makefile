install:
	@bundle
	@make install -C pugin
	@make build -C pugin
