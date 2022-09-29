## Airbyte

steg 1: klon airbyte repo

```
git clone https://github.com/airbytehq/airbyte.git
```

Gå inn i repo-mappen og kjør

`docker compose up`

ferdig

## dbt-core

installasjon av dbt for postgres:

```
python3 -m venv .venv
```

```
source .venv/bin/activate
```

```
python3 -m pip install dbt-postgres
```

```
dbt init
```

installasjon for sql server: https://docs.getdbt.com/reference/warehouse-profiles/mssql-profile

https://docs.getdbt.com/guides/getting-started/learning-more/getting-started-dbt-core

vs code plugin: https://marketplace.visualstudio.com/items?itemName=innoverio.vscode-dbt-power-user

## Koble til server fra vs code

https://code.visualstudio.com/docs/remote/ssh
