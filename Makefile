install:
	@make install -C pugin
	@make css images -C pugin
	@cp ./node_modules/prismjs/prism.js ./public/_js
