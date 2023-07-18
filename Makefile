
run-postgres:
	docker run --name basic-postgres --rm -e POSTGRES_USER=arroyo -e POSTGRES_PASSWORD=arroyo -p 5432:5432 -it postgres:14.1-alpine

run-migrations:
	refinery migrate -c dev/refinery.toml -p arroyo-api/migrations

