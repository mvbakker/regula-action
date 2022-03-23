FROM fugue/regula:v2.5.0 AS regula
ARG HTTP_PROXY=http://public-egress-proxy.gcp.asml.com:3128
ARG HTTPS_PROXY=http://public-egress-proxy.gcp.asml.com:3128
USER root
RUN apk add --update bash jq
USER michiel_bakker_asml_com 
# USER ${APP_USER}
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
