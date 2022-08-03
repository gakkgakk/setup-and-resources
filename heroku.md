Most or all of shis is taken from (strapi docs)[https://docs.strapi.io/developer-docs/latest/setup-deployment-guides/deployment/hosting-guides/heroku.html] and (dehlin blog)[https://blog.dehlin.dev/strapi-v4-with-docker-and-heroku]

Installation

```bash
sudo snap install --classic heroku
```

Login

```bash
heroku login

```

Update `.gitignore`

Add the following line at end of `.gitignore`:

`Path: ./my-project/.gitignore`

```
package-lock.json
```

Create heroku app

```bash
heroku create app-name --region eu
```

Heroku Database set-up

heroku addons:create heroku-postgresql:hobby-dev -a app-name

Set environment variables for heroku app

```bash
heroku config:set NODE_ENV=production -a app-name
heroku config:set WEBSITE_URL=$(heroku info -a awesomestrapi -s | grep web_url | cut -d= -f2) -a app-name
heroku config:set APP_KEYS=$(openssl rand -hex 64) -a app-name
heroku config:set API_TOKEN_SALT=$(openssl rand -hex 32) -a app-name
heroku config:set ADMIN_JWT_SECRET=$(openssl rand -hex 32) -a app-name
heroku config:set JWT_SECRET=$(openssl rand -hex 32) -a app-name
```

Configure production environment by creating the following two files

```bash
Path: ./config/env/production/server.js
Path: ./config/env/production/database.js
```

where `./config/env/production/database.js` looks like

```javascript
const parse = require('pg-connection-string').parse;
const config = parse(process.env.DATABASE_URL);

module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: config.host,
      port: config.port,
      database: config.database,
      user: config.user,
      password: config.password,
      ssl: {
        rejectUnauthorized: false
      },
    },
    debug: false,
  },
});
```

Install pg-connection-string

```bash
yarn add pg-connection-string
```

`./config/env/production/server.js` looks like

```javascript
module.exports = ({ env }) => ({
  url: env('WEBSITE_URL'),
  port: process.env.PORT,
});
```

Todo: Install and configure cloudinary for media library storage

For connection of git repo to heroku, use the heroku dashboard:

app > settings > deploy > deployment method > choose one and connect it
