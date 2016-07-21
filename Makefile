.PHONY: image run

image:
	docker build --tag reppard/scout2 .

check:
	docker run --rm --env-file .env reppard/scout2

release:
	docker push reppard/scout2
