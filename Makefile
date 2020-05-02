JQ="jq --raw-output --exit-status"
VERSION ?= $$(git rev-parse HEAD)
APP_IMAGE=gcr.io/iam-cloud-215310/blue_i_web
ENV ?= $$(git branch)

build_image:
	docker pull ${IMAGE}:latest; docker build --build-arg APP_VERSION=${VERSION} --cache-from ${IMAGE}:latest -t ${IMAGE}:${VERSION} -t ${IMAGE}:latest .
	docker tag "${IMAGE}:${VERSION}" "${IMAGE}:latest"

build_app:
	make IMAGE=${APP_IMAGE} build_image

push_image:
	docker push ${IMAGE}:${VERSION}
	docker push ${IMAGE}:latest

push_app_image:
	make IMAGE=${APP_IMAGE} push_image

app:
	docker-compose up

app-bash:
	docker-compose run --rm web bash

app-console:
	docker-compose run --rm web iex -S mix

mix:
	iex -S mix

pmix:
	iex -S mix phx.server

phoenix_start:
	mix phx.server

format:
	mix format

credo:
	mix credo

lint-js:
	yarn lint

lint-js-fix:
	yarn lint --fix

.PHONY: phoenix_start pmix mix app-console app-bash app format credo lint-js-fix
