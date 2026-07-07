# HeyMax — Logo Placement Spec

Machine- and human-readable reference for choosing the correct HeyMax logo. Pairs with `brand-spec.json` (same data, structured) and `logo-picker.html` (visual picker).

**Typeface:** Plus Jakarta Sans
**Asset source:** [Logo Placements Drive folder](https://drive.google.com/drive/folders/1bTzH-rSwBXhQkRZV049NIn3o9oceB5ji)

## Rules

- **Transition:** Wordmark everywhere for now. The favicon is the only monogram in active use.
- **Background:** Light asset on light backgrounds, dark asset on dark. Dark brand surfaces use **#21005E** (headers, footers, in-app bar, email, merch, decks). The splash screen uses Secondary **#F3EAFF**.
- **Gradients:** Never use a gradient that is not brand-provided. Only two are approved — the main-logo swoosh gradient (inside the gradient wordmark) and the social-avatar tile gradient (#ECEBFB → #F6E9F4).
- **Framing:** Long banners must give the logo generous padding — never frame it close to the edges.
- **Distortion:** Never stretch, rotate, recolour, fade, or add effects. Use the logo at full strength.

## Colours

| Name | HEX | RGB | CMYK |
|------|-----|-----|------|
| Primary (deep) | #21005E | 33, 0, 94 | 65, 100, 0, 63 |
| Primary (violet) | #4000B8 | 64, 0, 184 | 65, 100, 0, 28 |
| Secondary | #F3EAFF | 243, 234, 255 | 5, 8, 0, 0 |
| Dark | #1A1A1A | 26, 26, 26 | 0, 0, 0, 90 |
| White | #FFFFFF | 255, 255, 255 | 0, 0, 0, 0 |
| Monogram navy | #130739 | — | — |

App-icon tiles: purple bg #3C3682 with #F3EAFF wordmark, or light bg #F6F6FC with #21005E wordmark.

## Placements

| Placement | Category | Light / Primary | Dark / Alt |
|-----------|----------|-----------------|------------|
| Favicon | App & Icons | Bracket M — Navy, Flat.svg (on white) | Bracket M — White, Flat.svg (on #21005E) |
| App icon — square | App & Icons | App Icon-3.svg (light) | App Icon.svg (purple) |
| App icon — rounded | App & Icons | App Icon-5.svg (light) | App Icon-2.svg (purple) |
| App icon — round | App & Icons | App Icon-4.svg (light) | App Icon-1.svg (purple) |
| Push notification icon | App & Icons | App Icon-3.svg (light) | App Icon.svg (purple) |
| Monogram | App & Icons | Outline Navy (light) / Gradient / Filled | Outline White (dark) |
| Splash screen | Product | Splash — main gradient logo on #F3EAFF | — |
| Header, footer & in-app bar | Product | Wordmark_purple.png on white | Wordmark_white.png on #21005E |
| Email header | Product | Wordmark_black.png on white | Wordmark_white.png on #21005E |
| Social avatar | Social | Round / Square on lilac→pink gradient, #21005E wordmark | — |
| Social share / Open Graph | Social | Open_graph.png on #21005E | (same both) |
| Social banner | Social | Opt 1 #21005E · Opt 2 #4000B8 · Opt 3 #F3EAFF | — |
| Merch / physical | Merch | Wordmark_black.png on white | Wordmark_white.png on #21005E |
| Slide decks | Internal | Wordmark_purple.png on white | Wordmark_white.png on #21005E |

## How an agent should use this

1. Identify the placement (e.g. "email header", "app icon", "Instagram banner").
2. Determine the background tone (light vs dark) or the required tile finish.
3. Return the matching `file` from `brand-spec.json`, its `background`, and `logo_color`.
4. Always point the user to the Drive folder for the original file — the previews in `logo-picker.html` are indicative only.
