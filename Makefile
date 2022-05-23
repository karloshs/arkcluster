build:
	docker build -f base.Dockerfile . -t karloshs/arkcluster-base
	docker build -f Dockerfile . -t karloshs/arkcluster

clean:
	docker image rm karloshs/arkcluster-base ||:
	docker image rm karloshs/arkcluster ||:

push:
	docker image push karloshs/arkcluster-base
	docker image push karloshs/arkcluster

all: clean build push
