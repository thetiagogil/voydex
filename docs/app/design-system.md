# Design System: Soft Clay

Voydex is quiet where you work and loud where you remember. Your team, what
you caught, what you earned and where you started stay alive and
Pokémon-specific; the chrome around them (buttons, filters, menus, form
controls) stays calm so the loud parts mean more.

This document is the canonical description of the system as built. The agreed
brief and its reasoning live in [Soft Clay Brief](../design/soft-clay-brief.md);
the visual study it diffs against is `Voydex Redesign v3` (outside the repo,
`index.html` and `REDESIGN.md`). Implementation evidence overrides both.

## Where It Lives

| Concern                  | Source                                                                  |
| ------------------------ | ----------------------------------------------------------------------- |
| Tokens, Tailwind theme   | `src/shared/styles/app-tokens.css`                                      |
| Base type, focus, motion | `src/shared/styles/app-base.css`                                        |
| Utilities                | `src/shared/styles/app-utilities.css`                                   |
| Fonts                    | `src/app/fonts.ts` (Fredoka and Nunito through `next/font`)             |
| Game colour table        | `src/modules/reference/features/games/utils/game-color-styles.ts`       |
| Type colours             | `src/modules/reference/features/pokemon/styles/pokemon-type-tokens.css` |
| Primitives               | `src/shared/components/ui` (shadcn-style, Base UI), restyled in place   |
| Retired-design guard     | `scripts/design/check-design-leftovers.mjs` (`npm run design:check`)    |

Light mode only for now. Tokens are named by role so dark mode can later be a
second set of values for the same names (`.dark`), without renaming anything.
The `dark:` variant is wired to a `.dark` class that nothing sets yet.

## Tokens

Use the role tokens as Tailwind colours (`bg-surface`, `text-ink-2`,
`border-line`). The shadcn names (`bg-card`, `text-muted-foreground`,
`bg-primary`) are aliases of the same values so the primitives keep working;
new code prefers the role names.

| Group          | Tokens                                                                                                                     |
| -------------- | -------------------------------------------------------------------------------------------------------------------------- |
| Ground and ink | `bg #F2EDE1`, `surface #FFFCF5`, `surface-2 #F7F1E4`, `hover`, `ink`, `ink-2`, `ink-3`, `on-ink`                           |
| Lines          | `line`, `lip`, `track`, `dash` (missing and open slots), `mute`, `scrim`                                                   |
| Action         | `action #3B8360` and `action-lip`, `action-soft`, `link`, `focus`                                                          |
| Meaning        | `gold`, `gold-deep`, `gold-ring`; `ok`, `warn`, `danger` families (deep, soft, line); `ball`                               |
| Meadow         | `sky`, `hill`, `hill-2`                                                                                                    |
| Context        | `game`, `game-soft`, `game-wash`, `game-lip`, `game-deep`, `on-game`, `select-soft`, `select-ink`                          |
| Corners        | `rounded-xs 6`, `sm 12`, `md 16`, `lg 20` (buttons), `xl 26`, `2xl 32` (cards), `full`                                     |
| Shadows        | `shadow-card` (clay edge), `shadow-soft`, `shadow-cover`, `shadow-float`, `shadow-overlay`, `shadow-action`, `shadow-game` |
| Type scale     | `text-12 13 14 15 16 17 20 24 28 32 44 60`; nothing under 12px                                                             |

The action green holds 4.5:1 with white. Focus is always the action green
outline, inside a Play too.

## Type

- **Fredoka (600)** is the app's voice: page, section, card, sheet and dialog
  titles at 20px and up, list group headings, the Play name, the trainer name,
  the names of Pokémon you own on stickers, and figures of 24px and up.
  `h1`–`h3` default to it; card titles use it through `CardTitle`.
- **Nunito (600–800)** is everything you operate: every button including the
  main one, tabs, pills, chips, labels, table headers and reference-card
  titles.
- Nothing under 16px is Fredoka.

## Loudness Budget

| Level  | For                                                    | May use                                                                                                                   |
| ------ | ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| Loud   | Identity and reward: the Play, what you own and earned | Game fill, stickers, tilt (stamps only), coloured lips, gold, slap and pop, dotted texture (Play header only), the meadow |
| Lively | Pokémon themselves                                     | Type colours, art on its type-tint circle, type dots and chips                                                            |
| Quiet  | Everything you operate and the chrome around content   | Cream surfaces, the 3px clay edge, ink, Nunito, the one action green, the soft selected tint, hairlines                   |

- One loud kind per section, plus the page's main button. Chrome is never the
  loud thing.
- Loud must be earned or be identity, never a control.

## Colour Rules

- **Game colour is a Play's identity, never a theme.** A Play's shell wraps its
  content in `game-scope` with `getGameColourStyle(gameSlug)`; inside it,
  `game-*` tokens follow that game. Pages without a Play wear Voydex green.
- **Fill** only on the Play header and docked bar, the active Play tab, and
  places where one Play or game is the subject (cover tiles, the start
  medallion). **Accent** elsewhere in a Play: progress bars, the
  next-milestone border, selection borders, eyebrows. Never the background of
  a card, row, section or input.
- **Selected controls** have one style everywhere: `bg-select-soft
text-select-ink` (the soft tint of the context colour with deep ink). Solid
  game colour is kept for the active tab only.
- **Codex** has no game-colour surfaces; covers carry the game.
- **Type colours** keep the official hexes. A labelled chip (`type-chip`)
  deepens only the four palest types so its white label reads; dots keep the
  official colour.
- **Meaning colours** are small marks (`StatusBadge` tones `ok`, `warn`,
  `danger`, `gold`, `neutral`), never filled banners.
- **Gold** is for what you earned: League stamps, milestones that aren't
  badges, collectibles found.

## Edges

- **Coloured lip (loud)** only on the main button (5px action lip that presses
  down), the Play header and docked bar (5px game lip), Story's next-milestone
  row, and things you own (stickers, roster tiles, caught Pokémon cards,
  stamps, found collectibles, the trainer card) plus the small lip under
  medallions.
- **Clay edge (quiet material)**: a section card on the page ground has a 3px
  neutral edge (`shadow-card`, `--clay-edge`). It never moves when pressed and
  never takes game, type or gold colour. It drops when a card sits inside
  another card, a sheet or a dialog (`Card` handles this), and grid items you
  don't own get a 1px line instead.
- **Flat**: secondary buttons (cream with a 1.5px line, inset fill inside a
  card or dialog, no press), dialogs, sheets and menus (overlay or float
  shadow only), pills, chips and pickers.

## Motion

Motion is a reward. Hover lifts and the Pokémon hop are fine on things you can
open. `animate-slap` and `animate-pop` play only at the moment something is
recorded or marked, never on load or redraw. Nothing loops and controls don't
bounce. `app-base.css` honours reduced motion.

## Components

Restyled primitives under `src/shared/components/ui` keep their names and APIs:
`Button` (default is the main button; `outline` and `secondary` are flat
secondaries; `destructive` is the danger outline), `Card` (`default` clay edge,
`inset`, `interactive`, `bare`), `Badge`, `Dialog`, `Sheet`, `DropdownMenu`,
`Select`, `Tabs`, `Tooltip` (ink), `Input`, `InputGroup` (the search field),
`Switch`, `Toggle`, `Progress` (game-coloured), `NavigationMenu`.

Voydex components:

| Component                            | Where                                                                        | Notes                                                      |
| ------------------------------------ | ---------------------------------------------------------------------------- | ---------------------------------------------------------- |
| Play header and docked bar           | `modules/mainline/.../hub/shell/top-section`, `mainline-play-docked-bar.tsx` | Game fill, dotted texture, Fredoka name, cover, game lip   |
| Play tabs                            | `mainline-play-navigation.tsx`                                               | `NavigationMenuControl*` with `variant="tab"`              |
| `PokemonCard`                        | `modules/reference/features/pokemon/components/pokemon-card.tsx`             | The one Pokémon card: `plain`, `caught`, `seen`, `missing` |
| `PokemonSticker`, `PokemonEmptySlot` | `.../pokemon/components/pokemon-sticker.tsx`                                 | Owned Pokémon only; empty slots are dashed                 |
| `PokemonTypeBadge`                   | `.../pokemon/components/pokemon-type-icon.tsx`                               | TypeChip (`icon-label`, `label`) and TypeDot (`icon`)      |
| `PokemonPortrait`                    | `.../pokemon/components/pokemon-portrait.tsx`                                | Art on its soft type-tint circle                           |
| `Medallion`, `RecordRow`             | `modules/mainline/features/plays/shared/components`                          | Moments: badge, gold, Pokémon, note, status, start         |
| `BadgeStamp`                         | `modules/mainline/features/plays/shared/components/badge-stamp.tsx`          | The only thing that tilts at rest                          |
| `SegmentedControl`                   | `src/shared/components/segmented-control.tsx`                                | `pills` for filters, `segment` for modes                   |
| `StatusBadge`                        | `src/shared/components/status-badge.tsx`                                     | Small meaning marks                                        |
| `EmptyState`                         | `src/shared/components/empty-state.tsx`                                      | One Pokémon on grass, one sentence, at most two actions    |
| `PageHeader`, `DetailSectionCard`    | `src/shared/components`                                                      | Fredoka heading, quiet card                                |
| `LogoMark`                           | `src/shared/components/brand/logo-mark.tsx`                                  | The "V" tile, a placeholder until the logo is designed     |

Section grammar: a section that is a grid of cards keeps its heading on the
page; a section of content (text, rows, stamps) is one card with the heading
inside.

## Component Rules

- Use the primitives in `src/shared/components/ui` for buttons, inputs,
  selects, sheets, dialogs, menus and tabs. Use Base UI `render` composition;
  do not use Radix `asChild` unless a primitive supports it.
- Before adding or materially styling a recurring pattern, inventory the
  primitives and the components above and reuse the closest one. Add a variant
  only for a materially different contract.
- Use the shared row-interaction variants for repeated data rows. Static
  timelines and prose lists don't get hover styling.
- Keep `src/app` routes thin; real UI lives in `src/modules`, `src/features`
  or `src/shared`.
- No feature-local glass, opacity or backdrop recipes for data surfaces. Alpha
  is for scrims, disabled states and the Play header's texture.

## Loading

Keep the shell visible and show one accessible Spinner in the content region
for an initial page load. Keep valid content visible during in-place work and
show a local pending state on the responsible control. No Skeletons yet.

## Icons And Type Assets

`src/shared/domain/icons/app-icons.ts` is the single icon catalogue; render
entries through `AppIcon`. Add a semantic entry before using a new icon.
Milestone medallion icons live under `appIcons.milestones`. Type icons are
`public/icons/types/*.svg`, drawn white on type colour.

## Copy

No em dashes in UI text. Dates read month first. One name for each thing:
Play, Plan, Missing (the Pokédex's third state), Log in and Log out, Start a
Play. Where a page reads data for you, say it in one specific sentence.

## Accessibility

- Buttons and links need visible labels or accessible names.
- Never rely on colour alone: stamps, medallions and Pokédex marks carry
  labels.
- Check phone layouts for overflow and overlapping controls; tap targets stay
  at least 36px.

## Migration Status

Moved to Soft Clay: tokens, fonts, the app shell and nav, every shared
primitive, the Play header and tabs, Play Overview and Play Pokédex. Other
screens inherit the tokens and primitives but still need their own pass, in
the brief's order: Team, Story, History, Analysis, Plan, Collectibles, Account
settings, Plays; then the new screens, the Codex and the public site. Each
screen's old parts are deleted as it moves over. `npm run design:check` fails
on any reference to the retired journal design.
