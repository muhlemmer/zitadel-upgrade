# zitadel-upgrade

This repo is a self-contained docker compose project with a PostgreSQL database and zitadel. It serves to reproduce the bug described in https://github.com/zitadel/zitadel/issues/7008, and eventually the possibility to confirm its fix.

## Steps

The following steps will load example data into a postgreSQL server and fire up zitadel using that data. The data is created using zitadel v2.40.11.

1. init the DB and example data. Safe to ignore errors from pg_restore regarding existing relations.

```bash
docker compose up -d db
docker compose run zitadel init --config /config/zitadel.yaml
docker compose exec db pg_restore -U postgres -d zitadel  /export/zitadel-2.40.11.sql
```

2. Bring up zitadel service

```bash
docker compose up -d
docker compose logs -f zitadel
```

3. Observe logs and go to http://localhost:9001/ui/console and see everything works. Login with `zitadel-admin@zitadel.localhost` and `Password2!`.

## Reset state

If at any moment you want to restart the experiment, remove the `data` directory and start from the top.

```bash
docker compose down
sudo rm -r data
```

## Upgrade

Logout all users before upgrade. (End session is also broken by the same bug.)
In the `.env` upgrade set `ZITADEL_VERSION="v2.42.2"` and run:

```bash
docker compose up -d
docker compose logs -f zitadel
```

Now, if you will go to http://localhost:9001/ui/console you will see the error reproduced in the browser:

```json
{"error":"server_error","error_description":"unable to retrieve client by id"}
```