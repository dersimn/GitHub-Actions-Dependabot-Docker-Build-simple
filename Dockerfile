FROM alpine:3.20.3@sha256:beefdbd8a1da6d2915566fde36db9db0b524eb737fc57cd1367effd16dc0d06d
# Use Tag + SHA here so that Dependabot detects updates

RUN date > /build-date

CMD ["cat", "/build-date"]
