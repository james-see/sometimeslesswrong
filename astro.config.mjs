import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';

import vue from "@astrojs/vue";

// https://astro.build/config
export default defineConfig({
  site: 'https://sometimeslesswrong.com',
  integrations: [mdx(), sitemap(), vue()]
});