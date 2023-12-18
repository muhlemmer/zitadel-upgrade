# zitadel-upgrade

This repo is a self-contained docker compose project with a PostgreSQL database and zitadel. It serves to reproduce the bug described in https://github.com/zitadel/zitadel/issues/7008, and eventually the possibility to confirm its fix.

## Disclaimer

Important: this repo only contains info to reproduce a particular bug. This repo does not provide any type of advise on how to run zitadel. Nor does it confirm specific confirmation on behalf of the zitadel organization regarding the (in)stability of the product. If used incorrectly commands and config in this repo might destroy existing zitadel data!

**All commands in this file are supposed to be run from the root of this repository!!**

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

:memo: At this point the logs are already displaying an amount of distress from the handler, most probably due to the low `MaxOpenConns` settings in `zitadel.yaml`. However the client bug we are trying to reproduce isn't yet triggered, because that projection is probably filled enough to function.

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
{
  "error": "server_error",
  "error_description": "unable to retrieve client by id"
}
```

## Workaround

The theory of the projects getting stuck is exhaustion of the SQL connection pool. As single handler might need to obtain a second connection while still inside a transaction. If the connection pool is exhausted, the handler will deadlock. This can be confirmed by changing `Database.postgres.MaxOpenConns` to a higher value, like `100`. After setting the value, restart zitadel:

```bash
docker compose restart zitadel
docker compose logs -f zitadel
```

You will now find that the lof output is way less. And login should work fine.
