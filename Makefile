install:
	@git submodule init
	@git submodule update
	@bundle
	@bundle exec rails generate browser_sync_rails:install
	@npm i
	@make install -C pugin
	@make build -C pugin
