.PHONY: build serve clean stop prune logs

build:
	docker compose run --rm zola

serve:
	docker compose up -d zola-serve

stop:
	docker compose down zola-serve

clean:
	rm -rf public/*

prune:
	docker image rm -f ghcr.io/getzola/zola:v0.19.1 || true
	docker image rm -f lexyweb-zola:latest || true

logs:
	docker compose logs -f zola-serve
