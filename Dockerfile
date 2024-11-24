FROM alpine:3.20.3@sha256:1e42bbe2508154c9126d48c2b8a75420c3544343bf86fd041fb7527e017a4b4a
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash=5.2.21-r0


RUN date > /build-date

CMD ["cat", "/build-date"]
