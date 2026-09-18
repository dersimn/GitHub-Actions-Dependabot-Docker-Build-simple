FROM alpine:3.24.2@sha256:3cf95fe0816180395592b8373f3ec60663f076127617bbacb4eacf9667afe2e9
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash


RUN date > /build-date

CMD ["cat", "/build-date"]
