# responder

Containers respond to HTTP requests on port 8080 with the "version" that the
image is built with using a build arg. Example:

	$ docker build --build-arg VERSION=v1 -t subfuzion/responder:v1 .
	$ docker run -d --network=host subfuzion/responder:v1
	$ curl localhost:8080
	v1

As shown above, the build arg and the image tag should match.

The `hooks` directory supports automated Docker Hub builds. It uses the `git tag`
for the repo to supply the build arg to `docker build`.




