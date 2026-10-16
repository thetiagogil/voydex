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
| Meaning        | `gold`, `gold-deep`, `gold-ring`; `ok`, `warn`, `danger` families (deep, soft, line); `calm` (ink, soft); `ball`                                    |
| Meadow         | `sky`, `hill`, `hill-2`                                                                                                                             |
| Context        | `game`, `game-strong`, `game-soft`, `game-wash`, `game-lip`, `game-deep`, `select-soft`, `select-ink`                                               |
| Corners        | `rounded-xs 6`, `sm 12`, `md 16`, `lg 20` (buttons), `xl 26`, `2xl 32` (cards), `full`                                                              |
| Shadows        | `shadow-card` (clay edge), `shadow-soft`, `shadow-cover`, `shadow-float`, `shadow-overlay`, `shadow-action`, `shadow-game`                          |
| Type scale     | `text-12 13 14 15 16 17 20 24 28 32 44 60`; nothing under 12px                                                                                      |
| Page frame     | `page-width 80rem`, `page-gutter` (16, 24, 32px), `bar-h` (60, 68px), `page-top`; the `page-column` and `page-band` utilities                       |

Every page, the top bar, the footer and the docked Play bar line up in the
`page-column`. A page that opens on a band (the meadow on Mainline Home, the
site's Home and Start a Play) wears `page-band` on it, through `MeadowScene`
`form="band"`: the band runs the full width of the window and tucks under the
transparent bar, which sits on its colour, while its copy stays in the page
column. Home keeps the meadow; Plays, the Team Planner, Statistics, Collection
and the Codex's game and Pokémon pages open on the lighter `PageBand` (on
trial): their head section on warm sand
(`band-sand`), flat colour only. The sand stays neutral so what each page shows
(type-coloured stickers, covers) brings the colour. Game colour belongs inside
a Play, so the Planner never takes the Plan's game; the game shows through its
covers.
Nothing else breaks out of the column: the Play header is a card in
it, and the docked Play bar spans the window with its content in the column.

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
| Quiet  | Everything you operate and the chrome around content   | Cream surfaces, the 3px clay edge, ink, Nunito, the one action green, the soft selected tint, space between rows          |

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
- **Selected controls**: rows, chips and filter pills take `bg-select-soft
text-select-ink` (the soft tint of the context colour with deep ink). A mode
  switch (`SegmentedControl` `segment`, v3's `.mode-seg`) takes `game-strong`
  with a white label: the game colour inside a Play, the action green outside
  one. A scope picker (pills choosing which part you look at: a Pokédex, a
  Story journey, a collectible set, a game version; v3's `.pill.is-on`) takes
  `game-strong` too, with `selectedTone="strong"`; filters stay soft. The Log
  in / Sign up form switch keeps the soft tint. Where a control
  already sits on the soft tint (the game shelf's generation marks and Start a
  Play's picked partner on a tinted meadow, the top bar on a tinted band) the
  selection takes `game-strong` too. Otherwise solid game colour is kept for
  the active tab only.
- **The top bar follows a tinted band.** A band that opens the page in a
  game's colour (Mainline Home, Start a Play with a game picked) copies that
  colour to the document root through `BandTintRoot` (inside `MeadowScene`),
  which marks it `data-band-tint`. The bar reads the `--bar-*` tokens: its
  quiet controls sit on soft white over the tint, its current link and the V
  tile take `game-strong`, its secondary words deepen to `ink-tint`. The
  neutral sand `PageBand` leaves the bar neutral. The bar's current mark
  swaps at once (no fade) and each link keeps its bold width, so changing
  section never flickers or nudges the other links.
- **Codex** has no game-colour surfaces; covers carry the game, on a soft
  stage in their game's colour on `GameShelfCard`.
- **Type colours** keep the official hexes. A labelled chip (`type-chip`)
  deepens only the four palest types so its white label reads; dots keep the
  official colour.
- **Meaning colours** are small marks (`StatusBadge` tones `ok`, `warn`,
  `calm`, `danger`, `gold`, `neutral`), never filled banners. `calm` is v3's
  quiet blue (`.pstate.info`) for a change that isn't a problem, such as an
  evolution or form.
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
- **Quiet lip**: secondary buttons are v3's `.btn-2` (settled 2026-10-13):
  no line, a 3px neutral lip (`shadow-quiet`) that presses away, cream on the
  page and the inset fill inside a card or dialog.
- **Flat**: ghost, link and danger buttons, dialogs, sheets and menus (overlay
  or float shadow only), pills, chips and pickers.

## Motion

Motion is a reward. Hover lifts and the Pokémon hop are fine on things you can
open. `animate-slap` and `animate-pop` play only at the moment something is
recorded or marked, never on load or redraw. The one exception is the
meadow's partners, which pop in (`animate-meadow-pop`) once per visit. Nothing loops and controls don't
bounce. `app-base.css` honours reduced motion.

## Components

Restyled primitives under `src/shared/components/ui` keep their names and APIs:
`Button` (default is the main button; `outline` and `secondary` are the
quiet buttons with their 3px neutral lip; `ghost` and `link` are flat;
`destructive` is the danger outline; the default size is v3's `.btn.sm`,
44px with 14.5px text, also for the main button under a meadow and in
dialogs), `Card` (`default` clay edge,
`inset`, `interactive`, `bare`), `Badge`, `Dialog`, `Sheet`, `DropdownMenu`,
`Select`, `Tooltip` (ink), `Input`, `InputGroup` (the search field),
`Switch`, `Progress` (how far along, in the context colour),
`NavigationMenu`. Option sets use `SegmentedControl`, not a toggle group. Two are Soft Clay
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
field takes the danger line; focus is the action-green outline. Every form
control is 48px tall (inputs, the search field, select triggers and the
`segment` track), so controls side by side line up. Don't style a field
locally; extend the shared surface. A selected option changes colour, never
weight, so picking one doesn't shift its row.

Voydex components:

| Component                                  | Where                                                                          | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------ | ------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| App bars                                   | `src/features/app-shell/components/navigation`                                 | v3's top bar, the phone and tablet bottom bar, the account and public menus (see [Navigation And Routes](../product/navigation-and-routes.md))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Play header and docked bar                 | `modules/mainline/.../hub/shell/top-section`, `mainline-play-docked-bar.tsx`   | Game fill, dotted texture, Fredoka name, cover, game lip                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Play tabs                                  | `mainline-play-navigation.tsx`                                                 | `NavigationMenuControl*` with `variant="tab"`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `PokemonCard`                              | `modules/reference/features/pokemon/components/pokemon-card.tsx`               | The one Pokémon card (its name wraps to two lines): `plain`, `caught` (with a Poké Ball), `seen` (with an eye), `missing`; sizes `md`, `sm`, `fluid`. The public pages draw it too, through `publicArt`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `PokemonTile`                              | `.../pokemon/components/pokemon-tile.tsx`                                      | A Pokémon shown for who it is, as a link: art and name, no number or type dots. `quiet` (v3's exclusives tile: white circle on sand) and `type` (v3's starter tile on its type's tint). Use it where the card's details would be noise                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `PokemonSticker`, `PokemonEmptySlot`       | `.../pokemon/components/pokemon-sticker.tsx`                                   | Owned Pokémon only, drawn with the `sticker` utility. `default` art hops on hover; `compact` fills roster grids with slot and shiny marks and can be a picked button (`selected` takes the Play's colour). `PokemonEmptySlot` is the open slot, drawn with `empty-slot`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `PokemonTypeBadge`                         | `.../pokemon/components/pokemon-type-icon.tsx`                                 | TypeChip (`icon-label`, `label`) and TypeDot (`icon`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `PokemonTypeList`                          | `.../pokemon/components/pokemon-type-list.tsx`                                 | A Pokémon's types as chips or dots: `types` (slot order; empty renders nothing) or the `primaryType` and `secondaryType` pair; `badgeDisplay`, `badgeSize`. `PokemonCard` and `PokemonSticker` draw their dots with it; never map types to badges by hand                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PokemonPortrait`                          | `.../pokemon/components/pokemon-portrait.tsx`                                  | Art on its soft type-tint circle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `Medallion`                                | `modules/mainline/features/plays/shared/components/medallion.tsx`              | One per moment: `badge` (type), `gold`, `pokemon`, `note`, `status`, `start` (game colour)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `RecordRow`                                | `.../plays/shared/components/record-row.tsx`                                   | Medallion, kicker, line, optional body; `trailing` adds a third column, `wrap` shows text in full, `medallionFaded` for a Pokémon that left the team. Rows sit inside one card, separated by space                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `PlayMomentTime`                           | `.../plays/shared/components/play-moment-time.tsx`                             | Any recorded instant, read in the viewer's time zone: `day` ("Today", "Aug 12") or `date` ("Aug 12, 2025"), its time on hover. `formatPlayDate` is for calendar days such as `started_on` only                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `BadgeStamp`                               | `.../plays/shared/components/badge-stamp.tsx`                                  | The only thing that tilts at rest                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `StampGrid`, `PlayStamp`                   | `.../plays/shared/components/stamp-grid.tsx`, `.../shared/data/play-stamps.ts` | A Play's stamps, Overview's badge case and Story's stamp card, from one `PlayStamp` model (a gym badge in its type or a League milestone in gold; `earned`, `next`, `todo`). Each `BadgeStamp` tilts by its own angle; `captions` prints labels; `slappingMilestoneId` slaps the one just recorded once. Dates read in the viewer's time zone                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `MilestoneMarker`                          | `.../plays/shared/components/milestone-marker.tsx`                             | Where a milestone stands, the same in Story and Overview: recorded wears its medallion (badge type, else gold), the next is a game-coloured ring around the objective flag, the rest show their number in a quiet ring; sizes `md`, `sm`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `ObjectiveCard`                            | `.../plays/shared/components/objective-card.tsx`                               | v3 `.cont`, Overview's next objective and Story's selected milestone: a quiet card named by `titleId`, `ObjectiveEyebrow` (game-deep), the Fredoka title (`objectiveTitleClassNames` `lg` or `md`), `ObjectiveWhere`, `actions` (the page's main button), an optional `footer` under a rule, and `onClose` for a corner close button                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `PlayTeamParty`                            | `.../plays/shared/components/play-team-party.tsx`                              | "Your team then" (v3 `.party`): the team saved with a milestone as small overlapping sprites; phones leave it out; `decorative` inside a control that already names the milestone; sizes `md`, `sm`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `useOptimisticMarks`                       | `.../plays/shared/client/use-optimistic-marks.ts`                              | The one optimistic marking flow (Pokédex, Collectibles): a mark shows at once while it saves, and a failed save puts the previous values back and says why. Returns `valueById`, `mark`, `isPending`, `pendingIds`; `mark` reads no render state, so a toast's Undo can call it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `CodexHead`                                | `modules/codex/shared/components/codex-head.tsx`                               | The path at the top of a Codex page inside Pokémon or Games, back to its list (the lists open on their title; the bar's Codex menu moves between them); `trailEnd` for a last step that is a control                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `CodexGenerationPills`                     | `modules/codex/shared/components/codex-generation-pills.tsx`                   | v3 `.gens`, the labelled generation pills of a Pokémon's entry (links, every generation shown, disabled where it isn't; the Pokémon list filters by generation from a toolbar menu). On phones the row scrolls sideways edge to edge and keeps the current pill in view                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `CodexPokemonCardLink`, `CodexPokemonGrid` | `modules/codex/shared/components/codex-pokemon-card-link.tsx`                  | A Pokémon in a Codex list (the Pokémon list, a game's Pokédex): the plain `PokemonCard` opening the entry, off-screen cards skip rendering. The grid is three across on phones, 128px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Codex list pieces                          | `modules/codex/shared/components`                                              | `CodexPendingValue`, the inline `PendingData` marker for one value the Codex doesn't have yet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `PokemonTypeFilter`                        | `modules/reference/features/pokemon/components/pokemon-type-filter.tsx`        | v3 `.typefilter`, one dot per type for every Pokémon list (the Codex's lists, Collection, the Team Planner's pool); picking one fades the others, picking it again clears it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `GameShelfCard`, `GameShelfGrid`           | `modules/codex/features/games/shared/components/game-shelf-card.tsx`           | The one game card in the Codex (the Games list, Related games): the cover on a soft stage in the game's colour, the short name, year and region; flat with a 1px line; opens its version group's page with that game picked. The grid is two across on phones, 150px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `SegmentedControl`                         | `src/shared/components/segmented-control.tsx`                                  | Every segment switch and pill set: `pills` for filters, `segment` for modes; sizes `md` and `sm` (v3 `.gens`, 40px on phones); `fullWidth`; `selectedTone` `strong` (game-strong, white label: the default for `segment`; pass it for scope pickers and for pills on the soft tint) or `soft` (the default for `pills`). Options take `count`, `icon`, `dot` (a colour dot filled with `--game`: pass `getGameColourStyle(slug)`), `disabled` with an optional `disabledReason` (a tooltip that joins the accessible name; the option stays focusable with `aria-disabled`), and `href` (links: `aria-current="page"` for `value`, `aria-current="true"` for an option flagged `current`, the section you are in without being its exact page). `value` may be `null` |
| `IconTip`                                  | `src/shared/components/icon-tip.tsx`                                           | An icon-only action's hover and focus label (the trigger keeps its own `aria-label`): the Codex heads' Your Plays, Favourite and Shiny, a roster member's Edit and Open in Codex                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `Carousel`                                 | `src/shared/components/carousel.tsx`                                           | v3's sideways shelf for every row of covers (`GameShelfPicker`, Home's Plays): the scroller itself (a `div`, or a list through `render={<ul />}`, keeping the caller's role, ref and keys), no scrollbar, centred while it fits, room above for a picked cover to stand up; `density` `compact` (the picker) or `roomy` (Home), `fadeEdges`, `snap`. Earlier and Later page through it on wider screens: `initialEdges` sets them for the first paint from where it opens, then each shows while there is more that way (both go when it all fits) and hands focus to the end item before it goes. Phones swipe. Tab strips and pill rows don't use it                                                                                                                |
| `ProgressDonut`                            | `src/shared/components/progress-donut.tsx`                                     | A ring in the context colour with the Fredoka percentage in its middle (`role="meter"`); Overview's Story, Pokédex and Collectibles tiles                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `ExplanatoryTip`                           | `src/shared/components/explanatory-tip.tsx`                                    | The reason behind a figure: an "i" dot (`dot` inset, `raised` beside a control) or a custom trigger, opening an ink popover on hover, focus or press (pinned on press)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `StatusBadge`                              | `src/shared/components/status-badge.tsx`                                       | Small meaning marks                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `EmptyState`                               | `src/shared/components/empty-state.tsx`                                        | `card` (default): one sentence, at most two actions, one Pokémon on grass when `artUrl` is given; `bare`: one quiet centred sentence with no card. `headingLevel="h2"` where it stands in for a page                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `SystemState`, `ErrorPage`                 | `src/features/system/components/system-state.tsx`, `error-page.tsx`            | Not-found and error pages: centred Fredoka title, one sentence, at most two actions, optional Pokémon on grass. `ErrorPage` is every `error.tsx` boundary's page (signed in, Codex, Log in, site): the error reference, Try again and Back home (`homeHref`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `PageHeader`                               | `src/shared/components/page-header.tsx`                                        | Every page head: Fredoka title, one line, an optional action; `headingLevel` `h1` (default) or `h2` where the page already has its `h1`, such as a Play tab                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `SectionHead`, `SectionMoreLink`           | `src/shared/components/section-head.tsx`                                       | v3 `.sec-head`: Fredoka 24 `title` (`headingLevel` 2 or 3, `titleId` for `aria-labelledby`), `aside` beside it (hidden under 560px), `description`, `icon`, and trailing `more` (`{ href, label }`, the link onward with an arrow) and `action`. Above a grid on the page ground, and inside `DetailSectionCard`                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `DetailSectionCard`                        | `src/shared/components/detail-section-card.tsx`                                | A content section as one quiet card with its `SectionHead` inside (same props plus `more`), including the Codex Pokémon entry's sections                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `RangeHeading`                             | `src/shared/components/range-heading.tsx`                                      | v3 `.range`, the head of a range in a long list: Fredoka 20 `title`, `count` line, trailing `actions`; `headingLevel`, `titleId`, and `titleFocusable` so script can move focus to it (`tabIndex={-1}`, never in the tab order) after a jump or a bulk change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `Toolbar`, `ToolbarGroup`                  | `src/shared/components/toolbar.tsx`                                            | v3 `.toolbar`, the one toolbar card: the `search` slot is the only control that stretches (whole first row on phones); every other control keeps its own width. Each `trailing` item is one group (filters, a sort, a mode switch; wrap controls that belong together in a `ToolbarGroup`), with a hairline between groups that never starts a wrapped line and is dropped on phones. `children` are full-width rows below. It counts as a card, so fields inside take the inset fill. `render={<form />}` makes it the form                                                                                                                                                                                                                                          |
| `FilterResultsLine`                        | `src/shared/components/filter-results-line.tsx`                                | The one line under every filterable list's toolbar (Codex lists, Plays, Collection, My Plans, Progress, History): always there, "Showing all N" or "Showing X of N" with Clear filters on its right while a filter leaves some, so filtering never moves the list or widens the bar. An empty list carries its own Clear                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `BrowseFilterPanel`                        | `src/shared/components/browse-filter-panel.tsx`                                | The filter form: `bare` inside a `Toolbar`; `default` is a stacked filter card                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `BottomSheet`                              | `src/shared/components/bottom-sheet.tsx`                                       | v3's bottom sheet on the `Sheet` primitive, for details and filters on phones and tablets: grab handle, rounded top, 88% tall and 560px wide at most, scrolling body, `footer` pinned above the safe area (its children share the width). `title` (visible Fredoka 24) or `label` when the body has its own `SheetTitle`; `description` (`descriptionHidden`), `actions` beside the close button, `trigger`, `open`, `onOpenChange`, `onOpenChangeComplete` (after the open or close animation ends), `initialFocus`, `finalFocus`                                                                                                                                                                                                                                    |
| `ResponsiveDetailSheet`                    | `src/shared/components/responsive-detail-sheet.tsx`                            | v3's detail sheet: from the right edge over a scrim from tablets up, `BottomSheet` on phones; `head` renders the `SheetTitle`, `footer`, `size` `wide` for a table. the Team Planner's Team check and the shared species sheet (`TrainerSpeciesSheet`, opened in place from the Collection and Statistics)                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `FormOverlay`                              | `src/modules/mainline/shared/components/form-overlay.tsx`                      | Mainline's form sheet: a side sheet or dialog wide, a bottom sheet on phones and tablets; with a `hero`, the Pokémon on its type's tint heads it. Adding and editing a Play's Pokémon, a note, a milestone, and a Plan's slot share it, so they look and open alike                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `TrainerPlayRow`                           | `src/modules/mainline/shared/components/trainer-play-row.tsx`                  | One Play a Pokémon of yours is in: the Play's cover and name, a line on the Pokémon ("Arcanine · Lv. 59 · On the team"), its status badge, opening it on the Play. The species sheet's rows and the Codex entry's In your Plays                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `SettingsRow`                              | `src/shared/components/settings-row.tsx`                                       | v3 `.trow`: a setting's name, an optional line on what it means, and its control at the end (under the words on phones); rows are separated by space. App Settings and Play settings                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `UnsavedChangesFooter`                     | `src/shared/components/unsaved-changes-footer.tsx`                             | v3 `.set-foot`: shown only while its card has unsaved changes, flush along the bottom of a `DetailSectionCard`, with Cancel and Save (submits the form unless `onSave` is given). Play settings and the profile                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `SearchSelect`                             | `src/shared/components/search-select.tsx`                                      | A searchable pick from a long list on the shared `Combobox` (held items, moves), with an optional `detail` line; clearing leaves it empty. The roster editor and the Planner's slot sheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PasswordInput`                            | `src/shared/components/password-input.tsx`                                     | A password field with a Show and Hide toggle, on `InputGroup`. Log in, Sign up, New password and Change password                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `PendingData`                              | `src/shared/components/pending-data.tsx`                                       | Where a v3 piece goes whose data Voydex doesn't have yet (see below): `block` for a section or card body (an optional quiet `children` preview and a `note`), `inline` for one value or control; drawn with `empty-slot`, labelled "Not in Voydex yet" by default                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `TrainerCard`                              | `src/features/settings/components/trainer-card.tsx`                            | v3's trainer card, the one loud thing on You, Settings and Welcome: a 4px white border and a lip in your colour. On Settings it is the profile form                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `GameCover`                                | `modules/reference/features/games/components/game-cover.tsx`                   | The one game cover: the box art, or the initials on the game colour when there is none or it fails; sizes `shelf` (the Codex card), `hero`, `header`, `dock`, `token`, and the carousel sizes `picker`, `pickerLarge` and `playShelf` (Home). In a carousel every cover stands the same height and takes its width from its box's shape, so the covers in one carousel never differ in height; with the game's `shape` (`square`, `landscape`, `portrait`, from its first platform) it holds that box on a quiet `surface-2` tint from the first paint and loads a copy sized for it through `next/image`; `eager` for covers in view when the shelf opens                                                                                                            |
| `GameShelfPicker`                          | `modules/reference/features/games/components/game-shelf-picker.tsx`            | v3's cover shelf, the one game picker (Start a Play, Home's first Play, New Play, the Team Planner): every game in release order on one sideways row with generation marks to jump by, `coverSize` `md` or `lg`. A horizontal listbox: one tab stop, arrows, Home and End move, Enter or Space picks; the picked cover stands up with a check. It owns no background. Its row is a `Carousel`                                                                                                                                                                                                                                                                                                                                                                         |
| `MeadowScene`                              | `src/shared/components/meadow-scene.tsx`                                       | v3's meadow: copy on the sky, two hills, a `cast` on them and a `ground` row for the main button; `form` `band` (opens the page, edge to edge under the bar through `page-band`: Mainline Home, the site's Home, Start a Play) or `card` (New Play, the Intro); `tinted` leans it toward the game colour. A page's one loud thing; it owns no motion                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `PageBand`                                 | `src/shared/components/page-band.tsx`                                          | The band that opens Plays, the Team Planner, Statistics, Collection and the Codex's game and Pokémon pages: their head section on warm sand (`band-sand`), edge to edge under the bar through `page-band`, a short rounded foot, content in the page column                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `MeadowCard`                               | `src/features/site/components/meadow-card.tsx`                                 | The site's meadow on `MeadowScene`; its `cast` is usually `MeadowPartners` (one first partner per generation; `openStart` makes them open Start a Play at their generation, and on Start a Play they jump the shelf there)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `LogoMark`, `Logo`                         | `src/shared/components/brand/logo-mark.tsx`, `logo.tsx`                        | The "V" tile, a placeholder until the logo is designed. `Logo` adds the Fredoka "Voydex" word (`showText`, `markClassName`, `textClassName`); the top bar hides the word on narrow phones (`max-sm:hidden`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |

**Pending data.** v3 draws some things Voydex has no data or backend for yet.
Every such piece is built and shows `PendingData` (or `CodexPendingValue`) in
its place, never an invented value, and carries a `TODO(v3-data)` comment
naming what it waits on. When that data lands, the marker and its comment go.
`grep -rn "TODO(v3-data)" src` lists them all; the open list, with the schema
each waits on, is under Known Gaps in [Project Status](../project-status.md).

Section grammar: a section that is a grid of cards keeps its heading on the
page (`SectionHead`); a section of content (text, rows, stamps) is one card
with the heading inside (`DetailSectionCard`).

The utilities in `app-utilities.css` carry the recipes features may need
without the component: `sticker` (an owned thing's surface: type tint from
`--t`, 4px white border, 5px tinted lip; override `--sticker-border`,
`--sticker-lip`, `--sticker-shadow`) and `empty-slot` (the one open slot:
2.5px dashed `dash`, no fill). Don't hand-roll either. `step-back` fades
what belongs to another game than the one picked (the other version's
exclusives, a game a Pokémon isn't in) and greys its art; it comes back on
hover or focus. A detail panel that
follows the scroll beside a longer list (Story's panel, the Story matchups
report, the roster panel) takes `sticky-panel` with `useStickyPanel`: it
sticks under the docked bar when it fits, and when it is taller than the
screen it scrolls with the page and sticks at its bottom, never scrolling on
its own. A navigation list that follows the scroll (Play settings' menu, the
Collectibles areas) takes `sticky-column`: it stops at the screen's height,
scrolls on its own, and fades at the bottom while there is more.

**Public art.** The public pages (Home, Intro, Start a Play, Log in and the
other auth pages, not found) are global features and can't import a module,
so their routes inject the art (Start a Play's route also injects the
reference module's `StartGameShelf`). One
contract, `src/config/public-art.ts`, types it; `publicArt` from
`@/modules/reference/public-art` fills `PublicArt` (Pokémon renders,
`GameCover`, a game's colour, `PokemonCard`). Home and Intro also take
`publicPlayArt` from `@/modules/mainline/public-play-art`, which fills
`PublicPlayArt` with the real Mainline pieces (the Play header, `Medallion`,
`RecordRow`, `BadgeStamp`) for the example Play.
There are no site-only stills: a public picture uses the app's own component.

## Component Rules

- Use the primitives in `src/shared/components/ui` for buttons, inputs,
  selects, sheets, dialogs, menus and tabs. Use Base UI `render` composition;
  do not use Radix `asChild` unless a primitive supports it.
- Before adding or materially styling a recurring pattern, inventory the
  primitives and the components above and reuse the closest one. Add a variant
  only for a materially different contract.
- Fields take the shared field surface; selected options take `bg-select-soft
text-select-ink` (a mode switch or scope picker takes `game-strong`); tips that explain a figure use `ExplanatoryTip`; feedback
  after an action is a toast, not an inline banner.
- Use the shared row-interaction variants for repeated data rows. Static
  timelines and prose lists don't get hover styling.
- No hairlines between rows or sections inside content: space separates
  them, and where a group needs to stand apart it takes a soft background
  (`bg-surface-2`) instead of a rule. Lines stay only where they do a job:
  table rows, a sheet's or dialog's fixed header and footer, the app bars,
  menu separators and the hairlines between a toolbar's groups.
- A list you read (History, Recent moments) is one card with rows inside. A
  list you pick from, where the pick opens beside it or in a sheet (Progress
  Story, Story matchups), gives each row its own card through
  `getMilestonePickRowClassName` in
  `.../plays/shared/components/milestone-pick-row.ts`.
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
`appIcons.actions.close` closes a menu or panel; `actions.clear` empties a
field or filter. Milestone medallion icons live under `appIcons.milestones`. Type icons are
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

Every screen is on Soft Clay on the `claude/soft-clay-redesign` branch,
pending the owner's review, and every v3 screen is built: the app shell and
bars, Mainline Home, Plays, New Play, the Play header and tabs (Overview with
its partner and first steps, Team: Roster with Add and Edit Pokémon, Plan,
Analysis with Story matchups; Story, Pokédex, Collectibles, History and
Settings), the Team Planner and My Plans, Statistics, Collection, You,
Welcome, Account settings, the Codex (Pokémon list and entry, Games, game
pages and Pokédexes), Home, Intro, Start a Play, Log in, Forgot password, New
password, Check your email, Privacy and Terms, and the not-found and error
pages. Old parts were deleted as each screen moved over (Team History became
History's Team filter); `npm run design:check` fails on any reference to the
retired journal design. Where v3 needs data Voydex doesn't have, the screen
shows `PendingData` (see above).

Dark mode, Skeletons and the real logo are deliberately not scheduled.
