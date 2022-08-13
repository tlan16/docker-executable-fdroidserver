build:
	echo "Starting build"
	docker build -t "ghcr.io/tlan16/docker-executable-fdroidserver" .
	echo "Build complete"
