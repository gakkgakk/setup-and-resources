# SvelteKit Project Setup

Todo: add instructions for [daisyui](https://daisyui.com/)?

## Install Svelte

`npm init svelte@next project-dir-name`

Which Svelte app template? Skeleton project
Typescript? You decide
ESLint? Yes
Prettier? Yes
Playwright? Yes (not sure what this is)

`cd project-dir-name & npm install`

## Install Tailwind

`npm install --save-dev tailwindcss postcss autoprefixer`

## Install Supabase

For backend

`npm install @supabase/supabase-js`

### Folders and files to add

#### Folders

* Components folder: `src/components`
* Stores folder: `src/stores`

#### Files

`src/app.css`:

```
@tailwind base;
@tailwind components;
@tailwind utilities;
```

`src/routes/__layout.svelte`:

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
