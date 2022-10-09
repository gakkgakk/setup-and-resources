## Airbyte

steg 1: klon airbyte repo

```
git clone https://github.com/airbytehq/airbyte.git
```

Gå inn i repo-mappen og kjør

`docker compose up`

ferdig

### API Connector Utvikling

Se [Creating a HTTP API Source tutorial](https://docs.airbyte.com/connector-development/tutorials/cdk-tutorial-python-http/getting-started).

Kan også ta en titt på [yahoo-finance-financials](https://github.com/Travbula/yahoo-finance-financials-airbyte-source) og [rikstoto-api](https://github.com/Travbula/rikstoto-api-airbyte-source) eller noen av de mange connectorene som allerede eksisterer i Airbyte.

Tips: for å raskt lage et schema, som skjer i [steg 5](https://docs.airbyte.com/connector-development/tutorials/cdk-tutorial-python-http/declare-schema) av tutorialen, bruk en JSON schema generator på responsen fra API-et, f.eks. [denne](https://www.liquid-technologies.com/online-json-to-schema-converter) fra liquid technologies.

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

### Div dbt ressurser

* [dbt fundamentals videokurs](https://courses.getdbt.com/courses/fundamentals): veldig bra for introduksjon til dbt
* [getting started with dbt cloud](https://docs.getdbt.com/guides/getting-started): hjelp for å konfigurasjon mot cloud-løsningen
* [getting started with dbt core](https://docs.getdbt.com/guides/getting-started/learning-more/getting-started-dbt-core): hjelp for konfigurasjon med open source-løsningen
