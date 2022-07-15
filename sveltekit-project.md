# SvelteKit Project Setup

## Svelte

`npm init svelte@next project-dir-name`

Which Svelte app template? Skeleton project
Typescript? You decide
ESLint? Yes
Prettier? Yes
Playwright? Yes (not sure what this is)

`cd project-dir-name & npm install`


### Folders and files to add

* Layout file: `src/routes/__layout.svelte` (need to contain `<slot></slot>` for anything to show up on the website)
* Components folder: `src/components`
* Stores folder: `src/stores`
* App css file: `src/app.css
* Postcss config: `postcss.config.cjs`
* Tailwind config: `tailwind.config.cjs`
* Environment file: `.env`

App css:

```
@tailwind base;
@tailwind components;
@tailwind utilities;
```

Postcss config:

```
module.exports = {
    plugins: {
        tailwindcss: {},
        autoprefixer: {},
    },
}
```

Tailwind config:

```
const colors = require('tailwindcss/colors')

module.exports = {
  purge: ['./src/**/*.svelte', './src/**/*.css'],
  media: false,
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
```

## Tailwind

`npm install --save-dev tailwindcss postcss autoprefixer`

## Supabase

Backend

`npm install @supabase/supabase-js`
