---
name: Update site fonts
overview: Replace the current Atkinson/PTF55F/monospace fonts with the new UniversLTPro (headings/titles) and TwCenMTPro (body/default) font families across the entire site.
todos:
  - id: copy-fonts
    content: Copy TwCenMTPro and UniversLTPro woff/woff2 files from fonts/ to public/fonts/
    status: completed
  - id: update-fontface
    content: Replace @font-face declarations in global.css with new UniversLTPro and TwCenMTPro definitions
    status: completed
  - id: update-body-heading
    content: Update body font-family to TwCenMTPro and add UniversLTPro to all heading selectors in global.css
    status: completed
  - id: replace-monospace
    content: Replace all monospace font-family references across global.css, Footer.astro, BlogPost.astro, index.astro
    status: completed
  - id: update-preloads
    content: Update font preload links in BaseHead.astro to reference new woff2 files
    status: completed
  - id: cleanup-old-fonts
    content: Remove old atkinson and PTF55F font files from public/fonts/
    status: completed
  - id: test-locally
    content: Run dev server and verify fonts render correctly
    status: completed
isProject: false
---

# Update Site Fonts to Univers and Tw Cen MT Pro

## Current State

The site uses three fonts:

- **PTF55F** -- body text (`font-family: 'PTF55F', serif` on `body`)
- **Atkinson** -- regular (400) and bold (700), declared but barely used directly
- **monospace** -- site title, footer, buttons, notifications, blog "back" link, homepage cubes

Font files live in `public/fonts/` (Atkinson + PTF55F woff files). The new fonts are in `fonts/` at the repo root with all formats already converted (OTF, TTF, WOFF, WOFF2).

## Changes

### 1. Copy new font files to `public/fonts/`

Copy the WOFF and WOFF2 files from `fonts/` to `public/fonts/`:

- `TwCenMTPro-SemiMedium.woff` + `.woff2`
- `UniversLTPro-45Light.woff` + `.woff2`

### 2. Update `@font-face` declarations in [src/styles/global.css](src/styles/global.css)

Replace the three existing `@font-face` blocks (Atkinson regular, Atkinson bold, PTF55F) with two new ones:

- `'UniversLTPro'` -- src: woff2 + woff, weight 400, for headings
- `'TwCenMTPro'` -- src: woff2 + woff, weight 400, for body

### 3. Update body font-family in [src/styles/global.css](src/styles/global.css)

- `body` selector: change `font-family: 'PTF55F', serif` to `font-family: 'TwCenMTPro', sans-serif`
- `h1, h2, h3, h4, h5, h6` selector: add `font-family: 'UniversLTPro', sans-serif`

### 4. Replace all `monospace` font-family references

These occur in multiple files and should switch to the appropriate new font:

- **[src/styles/global.css](src/styles/global.css)** lines 165, 176: `.notification` and `.site-title` -- change `monospace` to `'TwCenMTPro', sans-serif` (notification) and `'UniversLTPro', sans-serif` (site-title, since it's a title)
- **[src/components/Footer.astro](src/components/Footer.astro)** lines 46, 67: footer and `#downloadCanvas` button -- change `monospace` to `'TwCenMTPro', sans-serif`
- **[src/layouts/BlogPost.astro](src/layouts/BlogPost.astro)** lines 62, 70: `.back-to-blog a` and its hover -- change `monospace` to `'TwCenMTPro', sans-serif`
- **[src/pages/index.astro](src/pages/index.astro)** line 47: `.cube` -- change `'Courier New', Courier, monospace` to `'TwCenMTPro', sans-serif`

### 5. Update font preloads in [src/components/BaseHead.astro](src/components/BaseHead.astro)

Replace the three existing `<link rel="preload">` tags (lines 25-27) with preloads for the new WOFF2 files:

- `UniversLTPro-45Light.woff2`
- `TwCenMTPro-SemiMedium.woff2`

### 6. Optionally clean up old font files from `public/fonts/`

Remove `atkinson-regular.woff`, `atkinson-bold.woff`, and `PTF55F.woff` since they are no longer referenced.

### 7. Test locally

Run `npm run dev` (or `astro dev`) and verify fonts load correctly on the homepage, blog index, and individual blog posts.