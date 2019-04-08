FROM rnix/openssl-gost:alpine

# Magic from https://serverfault.com/a/910870 to circumvent image bloat
# caused by https://github.com/rnixik/docker-openssl-gost/issues/6
FROM scratch
COPY --from=0 / /

RUN apk add --no-cache openjdk8-jre-base
