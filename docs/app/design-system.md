# Design System

Voydex should feel like a clean adventure companion: warm, playful, polished, and Pokémon-adjacent without becoming loud or toy-like.

Avoid a corporate SaaS hero, a generic wiki look, and overly game-ish UI chrome.

## Design Direction

The desired mix:

- Adventure.
- Clean companion app.
- Pokémon-related, but not a direct Pokémon brand copy.
- Soft illustrated scenic imagery.
- Clear data surfaces for repeated use.
- Subtle personality through assets, icons, color, and state.

## UI Stack

- Tailwind CSS.
- shadcn-style primitives in `src/shared/components/ui`.
- Base UI-backed shadcn primitives where installed.
- Lucide icons for interface actions.
- Custom visual assets for hero/background/brand moments.

## Component Rules

- Use `src/shared/components/ui` primitives for buttons, inputs, selects, sheets, dialogs, dropdowns, tabs, accordions, fields, and similar controls.
- Use Base UI `render` composition when a primitive supports custom rendering. Do not use Radix `asChild` unless the local primitive explicitly supports it.
- Keep `src/app` route files thin. Put real UI in `src/modules`, `src/features`,
  or `src/shared` components.
- Prefer reusable product components for repeated play surfaces such as play headers, tab shells, progress summaries, Pokémon cards, type badges, and empty states.
- Generated screenshots are design references, not exact code specs. Implement the intent with real data, responsive behavior, accessibility, and existing app primitives.
- Avoid overcomplicated Tailwind strings. If styling repeats, extract a small component or variant.
- Standard cards, panels, tables, filters, and repeated data surfaces should use
  solid semantic surfaces such as `bg-card`, `bg-background`, and `bg-popover`.
  Do not create feature-local glass/opacity/backdrop recipes for normal data
  surfaces. If a surface behavior repeats across modules, put it in a shared
  primitive, variant, or helper.
- Reserve alpha and backdrop effects for intentional visual layers: artwork
  overlays, hero/media treatments, modal scrims, disabled states, and semantic
  status tints.

## Color Tokens

`src/app/globals.css` is the stylesheet entry point and owns the base shadcn
tokens. App, Pokemon, and game token groups are split under
`src/shared/styles` and imported from that entry point.

The current primary token is blue, with supporting colors for state and
Pokémon-related semantics. Avoid turning the whole app into one flat-color
theme.

Existing token groups:

- Base UI tokens: background, foreground, card, primary, secondary, muted, accent, destructive, border, input, ring.
- App semantic tokens: success, info, warning, rare, legendary, mythic, seen, battle, milestone, decision.
- Pokémon type tokens: normal, fire, water, electric, grass, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dragon, dark, steel, fairy.
- Pokémon game tokens: cover/accent colors for seeded games such as red, blue,
  yellow, emerald, scarlet, violet, and Legends entries. These live in
  `src/modules/reference/features/games/styles/game-tokens.css`, are exposed
  through `src/modules/reference/styles.css`, and are used by Codex game cards
  and game detail accents.

## Layout Rules

- App pages use the shared `AppShell`. Protected routes provide an authenticated
  account state; public Codex routes use `PublicAppShell` and can render for
  anonymous users.
- Align the navbar and main app content to a centered responsive canvas of
  roughly 1200–1280 pixels at large viewports.
- Treat that canvas as a maximum working width rather than stretching every
  section. Reading content and forms may be narrower; browse grids, tables, and
  workspaces can use the available width.
- Keep the background image visible in the side gutters and, where appropriate,
  subtly behind page context so the app retains its scenic sense of place.
- Avoid nested cards unless the inner card is a true repeated item or modal.
- Prefer dense but clear operational surfaces for logged-in app workflows.

## Mainline Play Hub Direction

The Play Hub top section should be contextual page information, not a Card. It
can sit directly on the scenic background so the user can focus on the tabbed
workspace below.

The main Play Hub workspace should be one Card containing tabs. The current tab
set is Overview, Team, Progress, Plans, History, and Settings. Only build rich
tab content when the underlying workflow is ready.

Overview should stay high-signal and avoid filler:

- Left column: Journey Status and Recent History.
- Right column: Current Team and Progress Summary.
- Do not add Team Health to Overview until the Team tab has a real analysis
  model.
- Do not add extra right-column cards just to fill vertical space.
- Overview cards should use the shared detail section card pattern and avoid
  feature-local card styling.

Progress Summary should show applicable tracks only. Hide tracks with no
positive total for the play, show a progress bar plus `completed / total`, and
avoid visible percentage labels.

## Home Page Hero Direction

The home page hero should use layered assets:

- A clean adventurous landscape viewed toward a distant destination such as a
  village, with matched day and night compositions selected by the resolved
  light or dark theme.
- Separate brand mark image.
- Separate Voydex title image.
- Native text subtitle.
- Native buttons.

This keeps the home page close to the selected visual reference while preserving responsive layout, accessibility, and clickable controls.

Keep the identity, concise description, and actions centered in a visually
quiet part of the scene. Preserve the background as the emotional focus rather
than hiding it behind a large opaque card. The current artwork may be improved,
but the adventurous overlook and theme-aware day/night relationship are the
accepted direction. Define intentional crops for desktop, mobile, and short
viewports instead of assuming one `cover` crop works everywhere.

Keep Landing extremely concise. Do not add feature grids, product tours,
onboarding steps, module explanations, screenshots, statistics, or long copy.
Intro owns product explanation and onboarding for users who choose to learn
more.

## Buttons And Controls

- Use icons for clear actions.
- Use text buttons for primary commands where labels matter.
- Keep button styling cleaner than the generated mockup. The button shape can be slightly curved, but avoid heavy decorative borders.
- Primary buttons should not use a mismatched border color.
- Treat selectors as real selectors when the underlying choice changes data,
  scope, availability, or stats. For example, Pokemon forms should not live as a
  tiny thumbnail rail inside the portrait. The current Pokemon detail pattern is
  a dedicated Forms card with image, number, name, and type identity per option.
  Use popovers, command menus, sheets, search, or grouping only when the option
  count and viewport make that clearer. Shiny can remain a direct toggle because
  it is only a visual alternate of the selected form.

## Icons And Pokémon Type Assets

Pokémon type SVGs live under:

```txt
public/icons/types
```

Use them for Pokémon-specific surfaces where type identity matters. Use Lucide icons for general app actions and navigation.

## Accessibility

- Image-only brand text must have an accessible text equivalent, usually an `sr-only` heading.
- Buttons and links need visible labels or accessible names.
- Do not rely on color alone for completion, warnings, or disabled states.
- Check mobile layouts for text overflow and overlapping controls.
