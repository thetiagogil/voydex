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

| Group          | Tokens                                                                                                                                              |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Ground and ink | `bg #F2EDE1`, `surface #FFFCF5`, `surface-2 #F7F1E4`, `hover`, `ink`, `ink-2`, `ink-3`, `on-ink`, `ink-tint` (secondary text on type or game tints) |
| Lines          | `line`, `lip`, `track`, `dash` (missing and open slots), `mute`, `scrim`                                                                            |
| Action         | `action #3B8360` and `action-lip`, `action-soft`, `link`, `focus`                                                                                   |
| Meaning        | `gold`, `gold-deep`, `gold-ring`; `ok`, `warn`, `danger` families (deep, soft, line); `ball`                                                        |
| Meadow         | `sky`, `hill`, `hill-2`                                                                                                                             |
| Context        | `game`, `game-strong`, `game-soft`, `game-wash`, `game-lip`, `game-deep`, `select-soft`, `select-ink`                                               |
| Corners        | `rounded-xs 6`, `sm 12`, `md 16`, `lg 20` (buttons), `xl 26`, `2xl 32` (cards), `full`                                                              |
| Shadows        | `shadow-card` (clay edge), `shadow-soft`, `shadow-cover`, `shadow-float`, `shadow-overlay`, `shadow-action`, `shadow-game`                          |
| Type scale     | `text-12 13 14 15 16 17 20 24 28 32 44 60`; nothing under 12px                                                                                      |

The action green holds 4.5:1 with white. Focus is always the action green
outline, inside a Play too.

## Type

- **Fredoka (600)** is the app's voice: page, section, card, sheet and dialog
  titles at 20px and up, list group headings, the Play name, the trainer name,
  the names of Pokémon you own on stickers, and figures of 24px and up.
  `h1`–`h3` default to it; card titles use it through `CardTitle`.
- **Nunito (600–800)** is everything you operate (settled 2026-10-13 after a
  side-by-side with v3's Fredoka button): every button including the
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
  `game-*` tokens follow that game. The shell also sets the same values on the
  document root while the Play is open, so portalled menus, sheets and dialogs
  wear it too. Pages without a Play wear Voydex green.
- **Labelled fills use `game-strong`:** the game colour darkened only as far as
  a white label needs for 4.5:1 (computed per game in TypeScript). The active
  Play tab and the start medallion use it; `game-deep` and `select-ink` are
  mixed deep enough to hold 4.5:1 on their tints for every game.
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
- **Clay edge (quiet material)**: a section card on the page ground has a 3px (settled 2026-10-13 against v3's 4px)
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
recorded or marked, never on load or redraw. The one exception is the
meadow's partners, which pop in (`animate-meadow-pop`) once per visit. Nothing loops and controls don't
bounce. `app-base.css` honours reduced motion.

## Components

Restyled primitives under `src/shared/components/ui` keep their names and APIs:
`Button` (default is the main button; `outline` and `secondary` are flat
secondaries; `destructive` is the danger outline), `Card` (`default` clay edge,
`inset`, `interactive`, `bare`), `Badge`, `Dialog`, `Sheet`, `DropdownMenu`,
`Select`, `Tabs`, `Tooltip` (ink), `Input`, `InputGroup` (the search field),
`Switch`, `Progress` (how far along, in the context colour),
`NavigationMenu`. `Tabs` and `Switch` have no screen yet; they are kept on
purpose for the forms still to come (Play settings, account preferences).
Option sets use `SegmentedControl`, not a toggle group. Two are Soft Clay
additions:

- **`Meter`** (`ui/meter.tsx`): a measurement on a known scale (role `meter`),
  such as a base stat, drawn as v3's pressed-in track with a fill in the given
  colour (a type, for example). Use `Progress` for how far along something is.
- **`Toaster`** (`ui/sonner.tsx`): mounted once in the app shell. Toasts are
  v3's ink pill at the bottom centre with the float shadow, a status icon and
  an action in the one action green. They slide in quietly and never bounce.
  The shell sets `--toast-bottom` so toasts clear the phone bottom bar.

**Fields** share one look from `ui/field-surface.ts`
(`fieldSurfaceClassName`, `fieldFocusClassName`), used by `Input`,
`Textarea`, `InputGroup`, `Combobox` and the `Select` trigger. On the page ground a field
is cream with a 1.5px line; inside a card, dialog, alert dialog, sheet or
popover it takes the inset fill (`surface-2`) without the line. An invalid
field takes the danger line; focus is the action-green outline. Inputs are
48px tall; the search field and default select trigger are 46px. Don't style a
field locally; extend the shared surface.

Voydex components:

| Component                            | Where                                                                        | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------------------------ | ---------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| App bars                             | `src/features/app-shell/components/navigation`                               | v3's top bar, the phone and tablet bottom bar, the account and public menus (see [Navigation And Routes](../product/navigation-and-routes.md))                                                                                                                                                                                                                                                                                                                    |
| Play header and docked bar           | `modules/mainline/.../hub/shell/top-section`, `mainline-play-docked-bar.tsx` | Game fill, dotted texture, Fredoka name, cover, game lip                                                                                                                                                                                                                                                                                                                                                                                                          |
| Play tabs                            | `mainline-play-navigation.tsx`                                               | `NavigationMenuControl*` with `variant="tab"`                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `PokemonCard`                        | `modules/reference/features/pokemon/components/pokemon-card.tsx`             | The one Pokémon card: `plain`, `caught` (with a Poké Ball), `seen` (with an eye), `missing`; sizes `md`, `sm`, `fluid`. The public pages draw it too, through `publicArt`                                                                                                                                                                                                                                                                                         |
| `PokemonSticker`, `PokemonEmptySlot` | `.../pokemon/components/pokemon-sticker.tsx`                                 | Owned Pokémon only, drawn with the `sticker` utility. `default` art hops on hover; `compact` fills roster grids with slot and shiny marks and can be a picked button (`selected` takes the Play's colour). `PokemonEmptySlot` is the open slot, drawn with `empty-slot`                                                                                                                                                                                           |
| `PokemonTypeBadge`                   | `.../pokemon/components/pokemon-type-icon.tsx`                               | TypeChip (`icon-label`, `label`) and TypeDot (`icon`)                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PokemonTypeList`                    | `.../pokemon/components/pokemon-type-list.tsx`                               | A Pokémon's types as chips or dots: `types` (slot order; empty renders nothing) or the `primaryType` and `secondaryType` pair; `badgeDisplay`, `badgeSize`. `PokemonCard` and `PokemonSticker` draw their dots with it; never map types to badges by hand                                                                                                                                                                                                         |
| `PokemonPortrait`                    | `.../pokemon/components/pokemon-portrait.tsx`                                | Art on its soft type-tint circle                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `Medallion`                          | `modules/mainline/features/plays/shared/components/medallion.tsx`            | One per moment: `badge` (type), `gold`, `pokemon`, `note`, `status`, `start` (game colour)                                                                                                                                                                                                                                                                                                                                                                        |
| `RecordRow`                          | `.../plays/shared/components/record-row.tsx`                                 | Medallion, kicker, line, optional body; `trailing` adds a third column, `wrap` shows text in full, `medallionFaded` for a Pokémon that left the team. Rows sit between rules inside one card                                                                                                                                                                                                                                                                      |
| `PlayMomentTime`                     | `.../plays/shared/components/play-moment-time.tsx`                           | Any recorded instant, read in the viewer's time zone: `day` ("Today", "Aug 12") or `date` ("Aug 12, 2025"), its time on hover. `formatPlayDate` is for calendar days such as `started_on` only                                                                                                                                                                                                                                                                    |
| `BadgeStamp`                         | `.../plays/shared/components/badge-stamp.tsx`                                | The only thing that tilts at rest                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `CodexHead`                          | `modules/codex/shared/components/codex-head.tsx`                             | Every Codex page's head: "Codex", the `CodexSectionSwitch` (Pokémon or Games), then the crumb trail; `trailEnd` for a last step that is a control                                                                                                                                                                                                                                                                                                                 |
| Codex list pieces                    | `modules/codex/shared/components`                                            | `CodexGenerationSection` (Fredoka heading over a hairline), `CodexTypeFilter` (one dot per type), `BrowseResultSummary` (shown only while a filter is on)                                                                                                                                                                                                                                                                                                         |
| `SegmentedControl`                   | `src/shared/components/segmented-control.tsx`                                | Every segment switch and pill set: `pills` for filters, `segment` for modes; sizes `md` and `sm` (v3 `.gens`, 40px on phones); `fullWidth`. Options take `count`, `icon`, `dot` (a colour dot filled with `--game`: pass `getGameColourStyle(slug)`), `disabled`, and `href` (links: `aria-current="page"` for `value`, `aria-current="true"` for an option flagged `current`, the section you are in without being its exact page). `value` may be `null`        |
| `ProgressMeter`                      | `src/shared/components/progress-meter.tsx`                                   | v3's metric: a name, a big Fredoka percentage, a context-colour bar and one detail line; no card of its own; `href` makes it a link                                                                                                                                                                                                                                                                                                                               |
| `ExplanatoryTip`                     | `src/shared/components/explanatory-tip.tsx`                                  | The reason behind a figure: an "i" dot (`dot` inset, `raised` beside a control) or a custom trigger, opening an ink popover on hover, focus or press (pinned on press)                                                                                                                                                                                                                                                                                            |
| `StatusBadge`                        | `src/shared/components/status-badge.tsx`                                     | Small meaning marks                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `EmptyState`                         | `src/shared/components/empty-state.tsx`                                      | `card` (default): one sentence, at most two actions, one Pokémon on grass when `artUrl` is given; `bare`: one quiet centred sentence with no card. `headingLevel="h2"` where it stands in for a page                                                                                                                                                                                                                                                              |
| `SystemState`                        | `src/features/system/components/system-state.tsx`                            | Not-found and error pages: centred Fredoka title, one sentence, at most two actions, optional Pokémon on grass                                                                                                                                                                                                                                                                                                                                                    |
| `PageHeader`                         | `src/shared/components/page-header.tsx`                                      | Every page head: Fredoka title, one line, an optional action; `headingLevel` `h1` (default) or `h2` where the page already has its `h1`, such as a Play tab                                                                                                                                                                                                                                                                                                       |
| `SectionHead`, `SectionMoreLink`     | `src/shared/components/section-head.tsx`                                     | v3 `.sec-head`: Fredoka 24 `title` (`headingLevel` 2 or 3, `titleId` for `aria-labelledby`), `aside` beside it (hidden under 560px), `description`, `icon`, and trailing `more` (`{ href, label }`, the link onward with an arrow) and `action`. Above a grid on the page ground, and inside `DetailSectionCard`                                                                                                                                                  |
| `DetailSectionCard`                  | `src/shared/components/detail-section-card.tsx`                              | A content section as one quiet card with its `SectionHead` inside (same props plus `more`), including the Codex Pokémon entry's sections                                                                                                                                                                                                                                                                                                                          |
| `RangeHeading`                       | `src/shared/components/range-heading.tsx`                                    | v3 `.range`, the head of a range in a long list: Fredoka 20 `title`, `count` line, trailing `actions`, a hairline under it; `headingLevel`, `titleId`                                                                                                                                                                                                                                                                                                             |
| `Toolbar`, `ToolbarDivider`          | `src/shared/components/toolbar.tsx`                                          | v3 `.toolbar`, the one toolbar card: `search` slot (whole first row on phones), the hairline (`ToolbarDivider`, hidden on phones), `trailing` slot, then `children` rows. It counts as a card, so fields inside take the inset fill. `render={<form />}` makes it the form; or put `BrowseFilterPanel variant="bare" className="contents"` in a slot                                                                                                              |
| `BrowseFilterPanel`                  | `src/shared/components/browse-filter-panel.tsx`                              | The filter form: `bare` inside a `Toolbar`; `default` is a stacked filter card                                                                                                                                                                                                                                                                                                                                                                                    |
| `BottomSheet`                        | `src/shared/components/bottom-sheet.tsx`                                     | v3's bottom sheet on the `Sheet` primitive, for details and filters on phones and tablets: grab handle, rounded top, 88% tall and 560px wide at most, scrolling body, `footer` pinned above the safe area (its children share the width). `title` (visible Fredoka 24) or `label` when the body has its own `SheetTitle`; `description` (`descriptionHidden`), `actions` beside the close button, `trigger`, `open`, `onOpenChange`, `initialFocus`, `finalFocus` |
| `GameCover`                          | `modules/reference/features/games/components/game-cover.tsx`                 | The one game cover: the box art, or the initials on the game colour when there is none or it fails; sizes `shelf`, `hero`, `header`, `dock`, `token`                                                                                                                                                                                                                                                                                                              |
| `MeadowCard`                         | `src/features/site/components/meadow-card.tsx`                               | The meadow: `band` is Home's, edge to edge under the bar (the shell's `hero` slot) and rounded only at the bottom; `card` is the Intro's closing meadow                                                                                                                                                                                                                                                                                                           |
| `LogoMark`                           | `src/shared/components/brand/logo-mark.tsx`                                  | The "V" tile, a placeholder until the logo is designed                                                                                                                                                                                                                                                                                                                                                                                                            |

Section grammar: a section that is a grid of cards keeps its heading on the
page (`SectionHead`); a section of content (text, rows, stamps) is one card
with the heading inside (`DetailSectionCard`).

Two utilities in `app-utilities.css` carry the recipes features may need
without the component: `sticker` (an owned thing's surface: type tint from
`--t`, 4px white border, 5px tinted lip; override `--sticker-border`,
`--sticker-lip`, `--sticker-shadow`) and `empty-slot` (the one open slot:
2.5px dashed `dash`, no fill). Don't hand-roll either.

## Component Rules

- Use the primitives in `src/shared/components/ui` for buttons, inputs,
  selects, sheets, dialogs, menus and tabs. Use Base UI `render` composition;
  do not use Radix `asChild` unless a primitive supports it.
- Before adding or materially styling a recurring pattern, inventory the
  primitives and the components above and reuse the closest one. Add a variant
  only for a materially different contract.
- Fields take the shared field surface; selected options take `bg-select-soft
text-select-ink`; tips that explain a figure use `ExplanatoryTip`; feedback
  after an action is a toast, not an inline banner.
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

Every existing screen is on Soft Clay on the `claude/soft-clay-redesign`
branch, pending the owner's review: the app shell and bars, Plays, the Play
header and tabs, Overview, Team (Roster, Plan, Analysis, History), Story,
Pokédex, Collectibles, Account settings, the Codex (Pokémon list and entry,
Games, game pages and Pokédexes), Home, Intro, Log in and the not-found and
error pages. Old parts were deleted as each screen moved over;
`npm run design:check` fails on any reference to the retired journal design.

Not built yet, per the brief:

- **New screens** the app doesn't have: Mainline home, the Play's History and
  Settings tabs, New Play, Start a Play, Forgot password, New password
  and Check your email.
- **Parked screens** that need data the app doesn't have: Team Planner and My
  Plans, Statistics, Collection, Welcome and the You page on phones. Their nav
  links stay hidden or disabled until they ship.
- Dark mode, Skeletons and the real logo are deliberately not scheduled.
