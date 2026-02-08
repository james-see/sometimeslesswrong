# Usually Less Wrong - Website Summary

## Overview

This is a personal website built with Astro, created as a creative expression space. The site features an interactive canvas experience with floating word cubes and serves as a home for blog posts covering various topics in personal philosophy, entrepreneurship, technology, photography, and lifestyle.

## Tech Stack

- **Framework**: Astro 4.6.1
- **Language**: TypeScript
- **Content**: Markdown and MDX with content collections
- **Styling**: Custom CSS in Astro components
- **Integrations**:
  - Vue 3.4.21 for components
  - MDX support for enhanced markdown
  - RSS feed generation
  - Sitemap generation
- **TypeScript**: 5.4.5 with strict type checking

## Project Structure

```
sometimeslesswrong/
├── public/                    # Static assets and images
│   ├── fonts/                 # Custom fonts (Atkinson, PTF55F)
│   ├── *.jpg                  # Various placeholder and featured images
│   ├── *.jpeg                 # Additional images
│   ├── favicon.svg
│   └── menu/index.html        # Additional menu structure
├── src/
│   ├── components/            # Reusable UI components
│   │   ├── BaseHead.astro     # Global SEO and meta tags
│   │   ├── Header/astro       # Navigation header
│   │   ├── Footer.astro       # Footer with social links
│   │   ├── FormattedDate.astro # Date formatting
│   │   └── CopyableParagraph.astro # MDX component for copyable text
│   ├── layouts/               # Page layouts
│   │   └── BlogPost.astro     # Blog post layout wrapper
│   ├── content/collections/   # Blog content management
│   │   ├── blog/              # 14 blog posts (MD and MDX)
│   │   └── config.ts          # Content collection schema
│   ├── pages/                 # Page routes and routes
│   │   ├── index.astro        # Interactive homepage canvas
│   │   ├── blog/
│   │   │   ├── index.astro    # Blog listing
│   │   │   └── [...slug].astro # Individual post pages
│   │   └── rss.xml.js         # RSS feed generation
│   ├── consts.ts              # Global constants (site title/description)
│   └── env.d.ts               # Environment type definitions
├── astro.config.mjs           # Astro configuration
├── package.json               # Dependencies and scripts
├── tsconfig.json              # TypeScript configuration
├── deploy.sh                  # Deployment script
└── README.md                  # Initial Astro template documentation
```

## Key Features

### 1. Interactive Homepage Canvas (`src/pages/index.astro`)
- Features animated floating cubes with words representing:
  - Metatron (divine geometry/archangel)
  - Merkaba (sacred geometry)
  - Fibonacci (number sequence)
  - Chakra (energy centers)
  - Gnomon (sundial/gnomon)
  - Tetractys (numerical arrangement)
  - Mandalas (geometric patterns)
- Canvas-based trail drawing system
- Random color cycling
- Word rotation to avoid repetition
- Download canvas as image functionality
- Fully responsive design
- Mobile-optimized canvas sizing

### 2. Blog System
- **14 Blog Posts** covering diverse topics:
  - Personal philosophy ("The Goal")
  - Tech tutorials ("Installing Hugo Ubuntu")
  - Photography insights
  - Entrepreneurship and sales
  - Daily routines and productivity
  - Digital lifestyle topics
- Content collections with schema validation
- Hero images for featured posts
- RSS feed generation
- Responsive grid layout
- Individual post pages with MDX support

### 3. Social Integration
- Twitter (@jc50000000)
- GitHub (james-see)
- Spotify
- Download canvas functionality (when appropriate)

### 4. Performance & SEO
- Lighthouse score: 100/100
- Optimized for mobile
- Canonical URLs
- OpenGraph data support
- Automatic sitemap generation

## Blog Posts Overview

Recent/most relevant posts include:
- The Year We Missed (2013)
- Leadership Insights for Startups
- Why Flickr is My Online Backup Solution
- Mobile Photographers Make Great Salesmen
- Dad Chef QRCode Menu Project
- On Photography and Joy
- Notes Selling Software
- My Daily News Routine
- Change Your Inbox Habit
- A List of Google Alternatives
- Creative Existence in the Digital Age

## Project Configuration

### Site Information
- **Site URL**: https://sometimeslesswrong.com
- **Site Title**: "Sometimes Less Wrong"
- **Site Description**: "James Campbell's thoughts now on the web."

### Build & Development Scripts
```json
{
  "dev": "astro dev",
  "start": "astro dev",
  "build": "astro check && astro build",
  "preview": "astro preview",
  "astro": "astro"
}
```

### Deployment
- Custom `deploy.sh` script for deployment
- Built-in preview mode for testing
- Output directory: `./dist/`

## Styling Approach

- Custom CSS embedded directly in components
- No external CSS frameworks
- CSS variables for theming
- Responsive media queries
- Monospace font families for tech aesthetic

## Image Assets

Multiple placeholder and featured images:
- Blog post placeholders (5 images)
- Portfolio/featured images (8 images)
- Landscape/architecture shots
- Personal photography work

## Potential Updates & Areas for Expansion

1. **Blog Content**: 14 posts may benefit from additional content or pruning
2. **Homepage Experience**: Canvas effect could be optimized or modernized
3. **Navigation**: Could benefit from improved structure or mobile menu
4. **Content Organization**: Categories or tags for blog posts
5. **Contact Integration**: Direct contact method or email link
6. **Privacy Policy/About Section**: Standard website pages
7. **Analytics**: Optional integration (currently no tracking)
8. **Comments System**: For reader engagement
9. **Newsletter Integration**: Email subscription option
10. **Projects/Portfolio Section**: Showcase work beyond blog

## Development Notes

- Astro content collections with TypeScript validation
- No build dependencies other than standard Astro ecosystem
- All styling in component files (no separate CSS files in src)
- Static site generation with optional Vue components
- Content is managed manually through markdown files

## Date Context

Based on blog post dates, site has been active since 2012-2013. Current build suggests recent updates with Vue integration added for component functionality.