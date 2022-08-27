# SvelteKit Project Setup

## Install Svelte

`npm init svelte@next project-dir-name`

Which Svelte app template? Skeleton project

Typescript? You decide

ESLint? Yes

Prettier? Yes

Playwright? Not sure

`cd project-dir-name & npm install`

## Install Tailwind

`npm install --save-dev tailwindcss postcss autoprefixer`

### Folders and files to add

#### Folders

* Lib folder: `src/lib` - can be accessed as `import Component from "$lib/Component.svelte"`
* Components folder: `src/lib/components`
* Stores folder: `src/lib/stores`

#### Files

`src/app.css`:

```
@tailwind base;
@tailwind components;
@tailwind utilities;
```

`src/routes/+layout.svelte`:

```
<script>
    import "../app.css";
</script>

<slot></slot>
```

`postcss.config.cjs`:

```
module.exports = {
    plugins: {
        tailwindcss: {},
        autoprefixer: {},
    },
}
```

`tailwind.config.cjs`:

```
const colors = require('tailwindcss/colors')

module.exports = {
  content: ['./src/**/*.svelte', './src/**/*.css'],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

## Backend

### Alternative 1. Install supabase

[Supabase](https://supabase.com/) is a (serverless?) database with a graphical UI. It let's you quickly setup and use a new SQL database.

Inside of svelte-project, run

`npm install @supabase/supabase-js`

### Alternative 2. Install strapi

[Strapi](https://strapi.io/) is a headless cms with a graphical UI for configuring concepts/models and generating content.

Note: setup strapi in its own project folder. It will run on its own server.

`npx create-strapi-app <strapi project name> --quickstart`

If you'd like to use graphql:

`cd <strapi project name> & npm run strapi install graphql`

### Alternative 3. Install strapi and host it on supabase?

Todo
