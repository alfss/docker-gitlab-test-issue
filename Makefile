all: build_postgres build_gitlab build_nginx run
.PHONY : all

build_nginx:
	cd nginx && $(MAKE)

build_postgres:
	cd postgres && $(MAKE)

build_gitlab:
	cd gitlab && $(MAKE)

run:
	docker-compose -p ksv up -d

clean:
	docker-compose -p ksv down -v
