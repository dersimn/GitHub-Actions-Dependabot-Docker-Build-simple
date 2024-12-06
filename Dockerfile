FROM alpine:3.21.0@sha256:21dc6063fd678b478f57c0e13f47560d0ea4eeba26dfc947b2a4f81f686b9f45
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash


RUN date > /build-date

CMD ["cat", "/build-date"]
