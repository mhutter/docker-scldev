TAG ?= mhutter/scldev

build: Dockerfile
	docker build -t $(TAG) .
