JQ="jq --raw-output --exit-status"
VERSION ?= $$(git rev-parse HEAD)
ENV ?= $$(git branch)
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

.PHONY: phoenix_start pmix mix app-console app-bash app
