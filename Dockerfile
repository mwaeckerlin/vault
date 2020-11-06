FROM vault as build

FROM mwaeckerlin/scratch as production
ENV VAULT_ADDR http://127.0.0.1:8200
VOLUME /vault
VOLUME /etc/vault
COPY --from=build /bin/vault /bin/vault
COPY config.hcl /etc/vault/config.hcl
ENTRYPOINT [ "/bin/vault" ]
CMD [ "server", "-config=/etc/vault/config.hcl"]
WORKDIR /vault
