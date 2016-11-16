install:
	@git submodule update --remote
	@make install -C pugin
	@make css images -C pugin
	@mkdir -p ./public/_js
	@cp ./node_modules/prismjs/prism.js ./public/_js
