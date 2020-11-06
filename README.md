# Docker Container for Hashicorp Vault

## Build And Run

```bash
docker-compose build
docker-compose up
```

## Local Client Installation

Set the URL in environement variable `VAULT_ADDR`. You may copy the vault binary directly from the docker image (at least in Linux x86_64):

```bash
export VAULT_ADDR=http://localhost:8200
docker cp  vault_vault_1:/bin/vault ~/bin/
```

## Initialisation

You may do everything locally or on the [web ui](http://localhost:8200). Here how to do it locally:

- initialize (backup the secrets!):
  `vault operator init`
- unseal the vault (run 3 times with 3 keys):
  `vault operator unseal`
- login with root token:
  `vault login`
