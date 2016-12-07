IMAGE = 165162103257.dkr.ecr.eu-west-1.amazonaws.com/styleguide

# Construct the image tag.
VERSION=0.1.$(GO_PIPELINE_COUNTER)


# ECS-related
ECS_CLUSTER = ci
ECS_APP_NAME = styleguide
AWS_REGION = eu-west-1


build:
	#docker-compose build
	docker build -t $(IMAGE):$(VERSION) -t $(IMAGE):latest .

push:
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
	docker rmi $(IMAGE):$(VERSION)
	docker rmi $(IMAGE):latest


# http://serverfault.com/questions/682340/update-the-container-of-a-service-in-amazon-ecs?rq=1
deploy-ecs-ci:
	aws ecs register-task-definition --cli-input-json file://./aws_ecs/styleguide.json
	aws ecs update-service --service $(ECS_APP_NAME) --cluster $(ECS_CLUSTER) \
							--region $(AWS_REGION) --task-definition $(ECS_APP_NAME)


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





