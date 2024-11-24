FROM alpine:3.19.4@sha256:7a85bf5dc56c949be827f84f9185161265c58f589bb8b2a6b6bb6d3076c1be21
# Use Tag + SHA here so that Dependabot detects updates

# Test installing specific version of a package
RUN apk add bash=5.2.21-r0


RUN date > /build-date

CMD ["cat", "/build-date"]
