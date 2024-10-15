FROM alpine:3.20.2

RUN date > /build-date

CMD ["cat", "/build-date"]
