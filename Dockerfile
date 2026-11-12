FROM alpine:3.24.4@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash


RUN date > /build-date

CMD ["cat", "/build-date"]
