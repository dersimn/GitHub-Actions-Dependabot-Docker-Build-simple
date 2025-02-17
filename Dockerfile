FROM alpine:3.21.3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash


RUN date > /build-date

CMD ["cat", "/build-date"]
