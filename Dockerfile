FROM alpine:3.21.1@sha256:b97e2a89d0b9e4011bb88c02ddf01c544b8c781acf1f4d559e7c8f12f1047ac3
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash


RUN date > /build-date

CMD ["cat", "/build-date"]
