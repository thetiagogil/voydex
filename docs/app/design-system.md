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

| Group          | Tokens                                                                                                                                                              |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Ground and ink | `bg #F5F6F8`, `surface #FFFFFF`, `surface-2 #F2F5F9`, `hover`, `ink #26292F`, `ink-2 #4B5260`, `ink-3 #5B6270`, `on-ink`, `ink-tint` (secondary text on type tints) |
| Lines          | `line`, `lip`, `track`, `dash` (missing and open slots), `mute`, `scrim`                                                                                            |
| Action         | `action #CF342B` and `action-deep` (hover), `action-lip` (pressed), `action-soft`, `action-ink` (small eyebrows and marks), `link`, `focus`                         |
| Meaning        | `gold`, `gold-deep`, `gold-ring`; `ok`, `warn`, `danger` families (deep, soft, line); `calm` (ink, soft); `ball`                                                    |
| Meadow, band   | `sky`, `hill`, `hill-2`; `band` (the pale blue PageBand)                                                                                                            |
| Selection      | `select-soft`, `select-ink` (every picked row, chip and pill); `game`, `game-strong` (a game's own colour, only on marks that tell games apart)                     |
| Corners        | `rounded-xs 6`, `sm 12`, `md 16`, `lg 20` (buttons), `xl 26`, `2xl 32` (cards), `full`                                                                              |
| Shadows        | `shadow-card`, `shadow-soft`, `shadow-cover`, `shadow-float`, `shadow-overlay`, `shadow-button` and `shadow-button-pressed` (the sticker edge)                      |
| Type scale     | `text-12 13 14 15 16 17 20 24 28 32 36 44 48 52 60 64 112`; nothing under 12px; titles take a title step                                                            |
| Page frame     | `page-width 80rem`, `page-gutter` (16, 24, 32px), `bar-h` (60, 68px), `page-top`; the `page-column` and `page-band` utilities                                       |

Every page, the top bar, the footer and the docked Play bar line up in the
`page-column`. A page that opens on a band (the meadow on Mainline Home, the
site's Home and Start a Play) wears `page-band` on it, through `MeadowScene`
`form="band"`: the band runs the full width of the window and tucks under the
transparent bar, which sits on its colour, while its copy stays in the page
column. Home keeps the meadow; every other page opens on the lighter
`PageBand`, on the pale blue `band` (a Pokémon Center's windows), flat colour only. The band holds
what the page is and how you shape it; the plain ground below holds what it
shows (settled 2026-10-17):

- **Lists** (Plays, My Plans, Collection, the Codex's games and Pokémon, a
  game's Pokédex): the title, its one line, the main button, the toolbar and
  the type dots. The results line and the list sit below.
- **A subject** (a Play, a Plan in the Team Planner, Statistics, a Pokémon,
  a game): its hero: a Play's cover, name, facts and tabs (with the dotted
  texture only a Play wears); the Plan and its team; the trainer title and
  figures; the Pokémon's art and name.
- **You and Settings**: the title and your trainer card.

The band stays neutral so what each page shows (type-coloured stickers,
covers) brings the colour; a game shows through its covers. Nothing else
breaks out of the column: the docked Play bar spans the window with its
content in the column.

The action red holds 4.5:1 with white. Focus is always the deeper action red
outline, inside a Play too. Every text colour holds 4.5:1 on the ground it
sits on (the muted inks on the band and the hover fill included), and
the browser tests run axe's contrast rule on every page they visit.

Colour follows the 60-30-10 rule: about 60% calm neutral ground (`bg`,
`surface`, the white walls of a Pokémon Center and a Poké Mart), about 30%
supporting colour (`surface-2`, the pale blue band of a Center's windows, type
tints), and about 10% accent kept for what matters: the one main action in
the Center's roof red, the current pick, identity (your Pokémon, a game's
cover). The Poké Mart's blue roof is the third colour (`calm`), for progress
and calm meanings (settled 2026-10-19).

## Type

- **Fredoka (600)** is the app's voice: page, section, card, sheet and dialog
  titles at 20px and up, list group headings, the Play name, the trainer name,
  the names of Pokémon you own on stickers, and figures of 24px and up.
  `h1`–`h3` default to it; card and section titles use it through `SectionHead`.
- **Nunito (600–800)** is everything you operate (settled 2026-10-13 after a
  side-by-side with v3's Fredoka button): every button including the
  main one, tabs, pills, chips, labels, table headers and reference-card
  titles.
- Nothing under 16px is Fredoka.
- **Title steps (2026-10-19)**: every title of 20px and up takes one of the
  shared steps in `app-utilities.css`, never its own size, line height or
  tracking: `title-display` (a celebration or a front door: a trainer title,
  Welcome back, How Voydex works; 36, 52 from 640px, 64 from 1024px),
  `title-hero` (a subject's head: a Pokémon, a Play, a game, the next
  objective; 36, then 48), `title-page` (a page's head: the lists, a Plan, an
  error page, a sheet's subject; 28, then 36), `title-section` (a section, a
  wizard step, a form's head; 24, then 28), `title-card` (a card, a sheet or
  dialog title, a range heading; 20, then 24), `title-wordmark` (the front
  door's "Voydex") and `figure` (a big number on a tile). Prose takes
  `leading-relaxed`. `npm run design:check` fails on a hand-sized text,
  tracking or line height.

## Loudness Budget

| Level  | For                                                    | May use                                                                                                        |
| ------ | ------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------- |
| Loud   | Identity and reward: the Play, what you own and earned | Game fill, stickers, tilt (stamps only), gold, slap and pop, dotted texture (Play header only), the meadow     |
| Lively | Pokémon themselves                                     | Type colours, art on its type-tint circle, type dots and chips                                                 |
| Quiet  | Everything you operate and the chrome around content   | Warm white surfaces, soft shadows, ink, Nunito, the one action red, the soft selected tint, space between rows |

- One loud kind per section, plus the page's main button. Chrome is never the
  loud thing.
- Loud must be earned or be identity, never a control.

## Colour Rules

- **One palette for the whole app (2026-10-17).** Every page, a Play
  included, wears the same colours; a Play no longer takes its game's colour,
  and no band or meadow tints toward a game. The accent is `action`, with
  `action-ink` for small eyebrows and marks and `select-soft`/`select-ink`
  for picks. A game's own colour (`getGameColourStyle`, setting `--game` and
  `--game-strong`) is kept only for marks that tell games apart: the dots in
  version pickers, a cover's stand-in when there is no art, and Statistics'
  time chart.
- **Fill** in the accent only on the main button, the active Play tab, a
  mode switch or scope picker's pick and the start medallion. Never the
  background of a card, row, section or input, and never an outline round a
  row (an accent outline reads as an error). Progress (bars, rings, figures of how far you
  are) is the Poké Mart blue (`progress`), like the games' EXP bar; green
  stays for status.
- **One look per size of Pokémon (2026-10-17)**: a Pokémon at card size is
  the one `PokemonCard` family with three looks by meaning: a plain white
  card with a thin line for one you don't own (the Codex), the sticker with a white band for
  one you own (`PokemonSticker`, its art on the same circle), and the sticker
  with its band in its type's colour for one you picked. Anything smaller is
  the round portrait (`PokemonAvatar`), owned or planned alike. A moment's
  Pokémon is its `Medallion`, as every moment is.
- **Buttons are one family (2026-10-17)**: every size is the same pill, a link
  styled as a button gets the same 3px white band (`buttonVariants` merges
  its classes), close buttons in sheets and dialogs are `secondary` icon
  buttons, and an action with a menu of other ways joins it in a
  `ButtonGroup` (Random team, Record a milestone). `soft` is only a control
  inside a field.
- **Pickers are one family (2026-10-17)**: every select, dropdown menu,
  bar menu and searchable list opens the same white panel
  (`menuPanelClassName` in `ui/menu-surface.ts`, a hairline on the float
  shadow) with the same 48px option row (`menuOptionClassName`): an optional
  picture on a 36px tile, the title, a quieter line under it, the pick in
  the selected tint with a check (`MenuOptionContent`). `SelectControl`
  takes `icon` and `description` per option and opens with a search field
  for lists longer than ten (`searchable`); a list of games shows each
  game's cover (`GameOptionCover`), a generation its region. A toolbar's
  quiet select shows its words alone; a field shows the picture too. It
  takes the hover tint under the pointer, and given `resetValue` (what Reset
  puts back) it sits in the selected tint while it holds anything else, so
  a list shows which controls moved off its default.
- **Selected controls**: the one picked is a small sticker, its fill in a
  white band (`bubble`), and its weight never changes. Rows, chips and filter
  pills take `bg-select-soft text-select-ink` (the soft tint of the context
  colour with deep ink); menu and select rows take the tint with a check. A mode
  switch (`SegmentedControl` `segment`, v3's `.mode-seg`) takes `bg-action`
  with a white label. A scope picker (pills choosing which part you look at: a Pokédex, a
  Story journey, a collectible set, a game version; v3's `.pill.is-on`) takes
  `bg-action` too, with `selectedTone="strong"`; filters stay soft. The Log
  in / Sign up form switch keeps the soft tint. Where a control already sits
  on the soft tint (the game shelf's generation marks) the selection takes
  `bg-action` too.
- **The top bar** reads the `--bar-*` tokens and looks the same on every
  page. Its current mark swaps at once (no fade) and each link keeps its bold
  width, so changing section never flickers or nudges the other links. From 768px
  the whole bar is one pill at the top of the page (it scrolls away with it).
  At rest it is quiet (a lighter tint of the band with a hairline edge, no
  shadow) so it stands apart without pulling the eye; under the pointer or
  keyboard focus (`focus-visible`, so a clicked link doesn't keep it lit) it
  turns white on the card shadow. It looks the same on every page. Inside it the current section is a small sticker
  in the selected tint, the Codex sits with the other sections, and your
  initial sits on the soft red tint (as on your trainer card and the You tab) in a white band at the right; its menu holds only Settings and Log out, as far from the edge as the V on the left.
- **Pickers on phones**: below 768px every select, searchable select and
  dropdown menu opens as a sheet from the bottom over the scrim
  (`menuSheet*` in `menu-surface.ts`), full width with room for long lists.
- **Codex** has no game-colour surfaces; covers carry the game, framed in a
  fixed-height stage on `GameShelfCard`.
- **Type colours** keep the official hexes everywhere: chips, dots, tiles,
  medallions and stamps show the same colour, always with a white label and
  icon (the owner's call, 2026-10-17), the pale types included. The chip's
  label sits on a soft shadow to help it read; it is the one text below
  4.5:1 by choice, so the browser tests leave `[data-type-chip]` out of the
  accessibility check. Type icons draw in the current text colour.
- **Meaning colours** are small marks (`StatusBadge` tones `ok`, `warn`,
  `calm`, `danger`, `gold`, `neutral`), never filled banners. `calm` is the third
  colour, a Poké Mart blue (v3's `.pstate.info`) for a change that isn't a problem, such as an
  evolution or form.
- **Gold** is for what you earned: League stamps, milestones that aren't
  badges, collectibles found.

## Depth

Nothing has a hard bottom edge, and nothing moves down when pressed (settled
2026-10-17, replacing the raised "clicky" look). `npm run design:check` fails
on a hard lip, a press that moves, a gradient fill or glass.

- **Sticker edge (the one language)**: what you own and what you press share
  it. An owned Pokémon is a `sticker`: its type tint in a 4px white border on
  a soft shadow. A button that does something (`default`, `secondary`,
  `destructive`, `tint`) is a small sticker: its colour, a white band (the
  `--band` token, 3px, the same at every size), a near-white keyline so the band still shows on a
  white card (`--button-keyline`), and a soft shadow that shrinks when pressed
  (`shadow-button`, `shadow-button-pressed`), so it settles onto what it sits
  on. A pick (a segment, a Play tab, the top bar's current link, a chip) and
  a small corner mark take the same band (`bubble`, also `--band`), so every
  control's band is one width; `npm run design:check` fails on a band sized by
  hand in a control. A disabled red or wine button turns neutral grey.
- **Soft shadow (quiet material)**: a section card and the docked bars lift on a soft shadow (`shadow-card`, `shadow-float`), never a
  lip. A card goes flat inside another card, a sheet or a dialog (`Card`
  handles this); the Codex's reference cards (a Pokémon or a
  game you don't own) share one surface, `plain-card`: white with a thin
  `line` edge and no shadow, so they read on the page and inside a section
  card alike (2026-10-19). The white band is only for what is yours or picked. A Pokémon card shows one name (the nickname,
  or the species without one); its level is the white `Lv.` chip beside the
  type dots, and the line under the name carries other facts (a role, Plays).
- **Moments**: the medallions and the badge stamps wear a white band and a
  soft rim and lift on a soft drop (`--moment-drop`), like the stickers. No
  surface keeps a hard lip.
- **Flat**: `ghost` and `soft` buttons, links, dialogs, sheets and menus
  (overlay or float shadow only), unpicked pills and chips.

## Motion

Motion is a reward. Hover lifts and the Pokémon hop are fine on things you can
open. `animate-stamp-slap`, `animate-pop` and `animate-hop` play only at the moment something is
recorded or marked, never on load or redraw. The one exception is the
meadow's partners, which pop in (`animate-meadow-pop`) once per visit. Nothing loops and controls don't
bounce. `app-base.css` honours reduced motion.

Whatever lifts carries everything on it: a card's badges, its lock, its ⋯
menu and its corner bubbles sit inside the element that moves, never as an
absolute sibling over it. A clickable card with its own menu is a Card
`variant="interactive"` with a stretched `data-slot="card-open"` button and
the menu inside the card above it (the Library's rule cards); the card lifts
and takes the focus ring for that button.

One reward per moment, in one place, and it shows at once: Story's Record,
like a Pokédex or collectible mark, shows on the page straight away and saves
in the background. Stamps slap (`animate-stamp-slap`): a Story row's medallion
as it turns recorded, and Overview's next objective, which then hands over to
the next one (`animate-objective-out`, `animate-objective-in`). Story's stamp
card stays still, so a badge never animates twice. Small cards and tokens you
mark (Pokédex, Collectibles) pop; a partner you pick hops (`animate-hop`). A
wide row never moves: a Story row keeps still while its marker changes (a
number pops back with `animate-marker-in`). A card or token you unmark settles
softly (`animate-settle`). Things recorded together cascade in Story order:
each Story row waits as it was, then turns, one beat (`stampStepMs`, through
`createStampOrder`) after the one before.

## Components

Restyled primitives under `src/shared/components/ui` keep their names:
`Button` (actions are stickers: `default` is the page's main action in the
one red, `secondary` the quiet action, `destructive` a quiet action that
removes something, `tint` an action on a tinted band such as the Play header
or a sheet's head; `soft` is the flat close and minor action, `ghost` a flat
choice that shows `aria-pressed`. Sizes are one scale: `default` 48px, as tall
as a field, `sm` 36px inside cards and rows, `lg` 56px for a page's one call to
action; `icon`, `icon-sm`, `icon-xs` and `icon-lg` are round. Words that go
somewhere are a `TextLink`, never a button), `Card` (`default`, `inset`,
`interactive`), `Badge` (tones `neutral`, `outline`, `ok`, `warn`, `calm`,
`danger`, `gold`, `tint`, `select`, `paper`; sizes `xs`, `sm`, `md`), `Dialog`,
`Sheet`, `DropdownMenu`,
`Select`, `Tooltip` (ink), `Input`, `InputGroup` (the search field),
`ButtonGroup`, `Switch`, `Progress` (how far along, in the progress blue like an EXP bar, never the red accent),
`NavigationMenu`. Option sets use `SegmentedControl`, not a toggle group. Two are Soft Clay
additions:

- **`Meter`** (`ui/meter.tsx`): a measurement on a known scale (role `meter`),
  such as a base stat, drawn as v3's pressed-in track with a fill in the given
  colour (a type, for example). Use `Progress` for how far along something is.
- **`Toaster`** (`ui/sonner.tsx`): mounted once in the app shell. Toasts are
  v3's ink pill with the float shadow, bottom centre on phones and bottom
  right from 768px, with a status icon and
  an action in the one action red. They slide in quietly and never bounce.
  The shell sets `--toast-bottom` so toasts clear the phone bottom bar.

**Fields** share one look from `ui/field-surface.ts`
(`fieldSurfaceClassName`, `fieldFocusClassName`), used by `Input`,
`Textarea`, `InputGroup`, `Combobox` and the `Select` trigger. On the page ground a field
is white with a 1.5px line; inside a card, dialog, alert dialog, sheet or
popover it takes the inset fill (`surface-2`) without the line. An invalid
field takes the danger line; focus is the action-red outline. A single-line
field (input, search, select trigger) is a pill like the buttons beside it; a
text area takes a soft `rounded-2xl` corner. Every form
control is 48px tall (inputs, the search field, select triggers and the
`segment` track), so controls side by side line up. Don't style a field
locally; extend the shared surface. A selected option changes colour, never
weight, so picking one doesn't shift its row.

Voydex components:

| Component                                        | Where                                                                          | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------ | ------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| App bars                                         | `src/features/app-shell/components/navigation`                                 | v3's top bar, the phone and tablet bottom bar, the account and public menus (see [Navigation And Routes](../product/navigation-and-routes.md))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Play head and docked bar                         | `modules/mainline/.../hub/shell/top-section`, `mainline-play-docked-bar.tsx`   | On the band: cover, Fredoka name, facts, tabs, dotted texture; `form="card"` for the site's sample Play                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Play tabs                                        | `mainline-play-navigation.tsx`                                                 | `NavigationMenuControl*`: white tabs on the Play's band, the active one a small sticker in `bg-action`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `PokemonCard`                                    | `modules/reference/features/pokemon/components/pokemon-card.tsx`               | The one Pokémon card (its name wraps to two lines): `plain`, `caught` (with a Poké Ball), `seen` (with an eye), `missing`; sizes `md`, `sm`, `fluid`. The public pages draw it too, through `publicArt`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `PokemonTile`, `PokemonAvatar`                   | `.../pokemon/components/pokemon-tile.tsx`, `pokemon-avatar.tsx`                | The one small Pokémon: its art on a round pale tint of its type (`PokemonAvatar`), for a team at a glance (Plan strips, Play cards, a team snapshot, a battle report); `PokemonTile` is that portrait with its name under it, as a link (a game's exclusives and first partners)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `PokemonSticker`, `PokemonEmptySlot`             | `.../pokemon/components/pokemon-sticker.tsx`                                   | Owned Pokémon, drawn with the `sticker` utility (the Team Planner's team also uses it until the Pokémon pieces are rebuilt). `default` art hops on hover; `compact` fills roster grids with slot and shiny marks and can be a picked button (`selected` is only announced; the detail beside the grid shows which one). `PokemonEmptySlot` is the open slot, drawn with `empty-slot`                                                                                                                                                                                                                                                                                                                                                                                  |
| `PokemonTypeBadge`                               | `.../pokemon/components/pokemon-type-icon.tsx`                                 | TypeChip (`icon-label`, `label`) and TypeDot (`icon`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `PokemonTypeList`                                | `.../pokemon/components/pokemon-type-list.tsx`                                 | A Pokémon's types as chips or dots: `types` (slot order; empty renders nothing) or the `primaryType` and `secondaryType` pair; `badgeDisplay`, `badgeSize`. `PokemonCard` and `PokemonSticker` draw their dots with it; never map types to badges by hand                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PokemonPortrait`                                | `.../pokemon/components/pokemon-portrait.tsx`                                  | Art on its soft type-tint circle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `Medallion`                                      | `modules/mainline/features/plays/shared/components/medallion.tsx`              | One per moment: `badge` (type), `gold`, `pokemon`, `note`, `status`, `start` (game colour)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `RecordRow`                                      | `.../plays/shared/components/record-row.tsx`                                   | Medallion, kicker, line, optional body; `trailing` adds a third column, `wrap` shows text in full, `medallionFaded` for a Pokémon that left the team. Rows sit inside one card, separated by space; `variant="timeline"` puts the medallion on a `PlayTimeline` dashed line (`timeline-line`) (`.../hub/components/play-timeline.tsx`, History and Recent moments) with the words in a small plain card: the kind at its left and `when` at its right edge (12px, medium weight); `placement="grid"` puts a History moment in its month's grid from 1024px, its medallion inside the card                                                                                                                                                                             |
| `PlayMomentTime`                                 | `.../plays/shared/components/play-moment-time.tsx`                             | Any recorded instant, read in the viewer's time zone: `day` ("Today", "Aug 12") or `date` ("Aug 12, 2025"), its time on hover. `formatPlayDate` is for calendar days such as `started_on` only                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `BadgeStamp`                                     | `.../plays/shared/components/badge-stamp.tsx`                                  | The only thing that tilts at rest                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `StampGrid`, `PlayStamp`                         | `.../plays/shared/components/stamp-grid.tsx`, `.../shared/data/play-stamps.ts` | A Play's stamps on Story's stamp card, from one `PlayStamp` model (a gym badge in its type or a League milestone in gold; `earned`, `next`, `todo`). Each `BadgeStamp` tilts by its own angle over its label, and opens its milestone (`onStampSelect`), lifting under the pointer and popping when picked. It never moves on Record: the row in the list stamps instead, and Overview's next objective slaps its own `BadgeStamp`. Dates read in the viewer's time zone                                                                                                                                                                                                                                                                                              |
| `MilestoneMarker`                                | `.../plays/shared/components/milestone-marker.tsx`                             | Where a milestone stands, the same in Story and Overview: recorded wears its medallion (badge type, else gold), the next is a game-coloured ring around the objective flag, the rest show their number in a quiet ring; sizes `md`, `sm`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `ObjectiveCard`                                  | `.../plays/shared/components/objective-card.tsx`                               | v3 `.cont`, Overview's next objective and Story's selected milestone: a quiet card named by `titleId`, `ObjectiveEyebrow` (action-ink), the Fredoka title (`objectiveTitleClassNames` `lg` or `md`), `ObjectiveWhere`, `actions` (the page's main button), an optional `footer` under a rule, and `onClose` for a corner close button                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `PlayTeamParty`                                  | `.../plays/shared/components/play-team-party.tsx`                              | "Your team then" (v3 `.party`): the team saved with a milestone as small overlapping sprites; phones leave it out; `decorative` inside a control that already names the milestone; sizes `md`, `sm`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `useOptimisticMarks`                             | `.../plays/shared/client/use-optimistic-marks.ts`                              | The one optimistic marking flow (Pokédex, Collectibles): a mark shows at once while it saves, and a failed save puts the previous values back and says why. Returns `valueById`, `mark`, `isPending`, `pendingIds`; `mark` reads no render state, so a toast's Undo can call it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `CodexHead`                                      | `modules/codex/shared/components/codex-head.tsx`                               | The path at the top of a Codex page inside Pokémon or Games, back to its list (the lists open on their title; the bar's Codex menu moves between them); `trailEnd` for a last step that is a control, such as the Pokémon or game picker, whose trigger takes `codexHeadPickerTriggerClassName`                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `CodexGenerationPills`                           | `modules/codex/shared/components/codex-generation-pills.tsx`                   | v3 `.gens`, the labelled generation pills of a Pokémon's entry (links, every generation shown, disabled where it isn't; the Pokémon list filters by generation from a toolbar menu). On phones the row scrolls sideways edge to edge and keeps the current pill in view                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `CodexPokemonCardLink`, `CodexPokemonGrid`       | `modules/codex/shared/components/codex-pokemon-card-link.tsx`                  | A Pokémon in a Codex list (the Pokémon list, a game's Pokédex): the plain `PokemonCard` opening the entry, off-screen cards skip rendering. The grid is three across on phones, 128px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Codex list pieces                                | `modules/codex/shared/components`                                              | `CodexPendingValue`, the inline `PendingData` marker for one value the Codex doesn't have yet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `PokemonTypeFilter`                              | `modules/reference/features/pokemon/components/pokemon-type-filter.tsx`        | v3 `.typefilter`, one dot per type for every Pokémon list (the Codex's lists, Collection, the Team Planner's pool); picking one fades the others, picking it again clears it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `GameShelfCard`, `GameShelfGrid`                 | `modules/codex/features/games/shared/components/game-shelf-card.tsx`           | The one game card in the Codex (the Games list, Related games): the framed cover in a fixed-height stage (no fill), the short name, year and region; on `plain-card`, as a Codex Pokémon card; opens its version group's page with that game picked. The grid is two across on phones, 150px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `SegmentedControl`                               | `src/shared/components/segmented-control.tsx`                                  | Every segment switch and pill set: `pills` for filters, `segment` for modes; sizes `md` and `sm` (v3 `.gens`, 40px on phones); `fullWidth`; `selectedTone` `strong` (`bg-action`, white label: the default for `segment`; pass it for scope pickers and for pills on the soft tint) or `soft` (the default for `pills`). Options take `count`, `icon`, `dot` (a colour dot filled with `--game`: pass `getGameColourStyle(slug)`), `disabled` with an optional `disabledReason` (a tooltip that joins the accessible name; the option stays focusable with `aria-disabled`), and `href` (links: `aria-current="page"` for `value`, `aria-current="true"` for an option flagged `current`, the section you are in without being its exact page). `value` may be `null` |
| `IconTip`                                        | `src/shared/components/icon-tip.tsx`                                           | An icon-only action's hover and focus label (the trigger keeps its own `aria-label`): the Codex heads' Your Plays, Favourite and Shiny, a roster member's Edit and Open in Codex                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `Carousel`                                       | `src/shared/components/carousel.tsx`                                           | v3's sideways shelf for every row of covers (`GameShelfPicker`, Home's Plays): the scroller itself (a `div`, or a list through `render={<ul />}`, keeping the caller's role, ref and keys), no scrollbar, centred while it fits, room above for a picked cover to stand up; `density` `compact` (the picker) or `roomy` (Home), `fadeEdges`, `snap`. Earlier and Later page through it on wider screens: `initialEdges` sets them for the first paint from where it opens, then each shows while there is more that way (both go when it all fits) and hands focus to the end item before it goes. Phones swipe. Tab strips and pill rows don't use it                                                                                                                |
| `ProgressDonut`                                  | `src/shared/components/progress-donut.tsx`                                     | A ring in the context colour with the Fredoka percentage in its middle (`role="meter"`); Overview's Story, Pokédex and Collectibles tiles                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `ExplanatoryTip`                                 | `src/shared/components/explanatory-tip.tsx`                                    | The reason behind a figure: an "i" dot (`dot` inset, `raised` beside a control) or a custom trigger, opening an ink popover on hover, focus or press (pinned on press)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `StatusBadge`                                    | `src/shared/components/status-badge.tsx`                                       | A meaning on `Badge`: its tone and a dot in the meaning's own colour (`dot={false}` where an icon leads). A Play's status everywhere through `getPlayStatusTone`: playing calm (blue), paused warn (yellow), completed ok (green), abandoned danger (red)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `TextLink`                                       | `src/shared/components/text-link.tsx`                                          | The one text link: red and extrabold, underlined under the pointer; `quiet` (footer, breadcrumb) and `onInk` (inside an ink tip) tones; `arrow` `forward` makes it a link of its own (36px, as `SectionMoreLink`); without `href` it is a button that reads as a link, such as "See all"                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `ChoiceChip`                                     | `src/shared/components/choice-chip.tsx`                                        | One choice in a set you can pick several of (expansions, a Plan slot's role): a 40px pill, `lg` 48px beside fields; picked, the selected tint in a white band with a check; `add` is the dashed chip that adds another (the trigger of a rule or tag picker)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `RemovableChip`                                  | `src/shared/components/removable-chip.tsx`                                     | Something a record keeps, as a 40px label pill (a Play's or Plan's rule or tag) with the `CornerRemoveButton` that takes it off; not a toggle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `LibraryChoiceField`                             | `src/modules/mainline/shared/components/library-choice-field.tsx`              | The rules or tags a Play keeps as `RemovableChip`s, then an `add` `ChoiceChip` that opens a searchable picker of the rest of your Library, with Create for a new name and "Manage in Library" at its foot                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PickedMark`                                     | `src/shared/components/picked-mark.tsx`                                        | The check on the one picked picture (a game's cover, a Play on Home's shelf): a red disc in a white band in its top-right corner                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `CornerBubble`, `SlotMark`                       | `src/shared/components/corner-bubble.tsx`                                      | Where a card's small marks sit (an "i" tip, a slot number, the remove ×), drawn with the `bubble` utility: `top-right`, `top-left`, `inside-top-right` (where a list clips its edges), `bottom`. `CornerRemoveButton` is the remove × on it. `SlotMark` is a slot's number on a corner (the Team Planner's six)                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `IconDisc`, `iconDiscVariants`                   | `src/shared/components/icon-disc.tsx`                                          | The one round tile an icon or a letter sits on beside words (a section's icon, a row in You, a fact in Statistics, an empty sticker's add mark): `quiet` (inset grey) or `band` (white with the calm blue); sizes `xs`–`xl`. Never hand-roll a disc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `RecordMilestoneButton`                          | `.../plays/shared/components/record-milestone-button.tsx`                      | The one button that records a Story milestone (Overview's next objective, the partner hero, Story's panel): the main action led by a check, `lg` or `sm`, `href` for a choice that opens Story's form, `pending` with a spinner                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Type matchups                                    | `src/modules/mainline/shared/components`                                       | One set of matchup pieces for a Play's Team analysis and the Planner's Team check, from one row shape (`data/type-matchup-rows.ts`): `TypeMatchupCell`, `TypeMatchupLegend`, `TypeMatchupPressureTag`, `TypeName`, `MatchupMemberSprite`, `DefensiveMatchupsTable` (sortable from its headers when given `onSortChange`), `DefensiveMatchupsList` (phones) and `TypeCoverageChip`                                                                                                                                                                                                                                                                                                                                                                                     |
| `EmptyState`                                     | `src/shared/components/empty-state.tsx`                                        | `card` (default): one sentence, at most two actions, one Pokémon on grass when `art` (its name and URL) is given; `bare`: one quiet centred sentence with no card. `headingLevel="h2"` where it stands in for a page                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `SystemState`, `ErrorPage`                       | `src/features/system/components/system-state.tsx`, `error-page.tsx`            | Not-found and error pages: centred Fredoka title, one sentence, at most two actions, optional Pokémon on grass. `ErrorPage` is every `error.tsx` boundary's page (signed in, Codex, Log in, site): the error reference, Try again and Back home (`homeHref`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `PageHeader`                                     | `src/shared/components/page-header.tsx`                                        | Every page head: Fredoka title, one line, an optional action; a page a level down (My Plans, Archived Plans, Archived Plays) goes back with a secondary button named after where it goes and led by the back arrow, first in the action, never an eyebrow link; the Codex, nested several levels, keeps its breadcrumbs; `headingLevel` `h1` (default) or `h2` where the page already has its `h1`, such as a Play tab                                                                                                                                                                                                                                                                                                                                                |
| `SectionHead`, `SectionMoreLink`                 | `src/shared/components/section-head.tsx`                                       | v3 `.sec-head`: Fredoka 24 `title` (`headingLevel` 2 or 3, `titleId` for `aria-labelledby`), `aside` beside it (hidden under 560px), `description`, `icon`, and trailing `more` (`{ href, label }`, the link onward with an arrow) and `action`. Above a grid on the page ground, and inside `DetailSectionCard`                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `DetailSectionCard`                              | `src/shared/components/detail-section-card.tsx`                                | A content section as one quiet card with its `SectionHead` inside (same props plus `more`), including the Codex Pokémon entry's sections                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `RangeHeading`                                   | `src/shared/components/range-heading.tsx`                                      | v3 `.range`, the head of a range in a long list: Fredoka 20 `title`, `count` line, trailing `actions`; `headingLevel`, `titleId`, and `titleFocusable` so script can move focus to it (`tabIndex={-1}`, never in the tab order) after a jump or a bulk change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `Toolbar`, `ToolbarGroup`                        | `src/shared/components/toolbar.tsx`                                            | v3 `.toolbar`, the one toolbar card: the `search` slot is the only control that stretches (whole first row on phones); every other control keeps its own width. Each `trailing` item is one group (filters, a sort, a mode switch; wrap controls that belong together in a `ToolbarGroup`), with a hairline between groups that never starts a wrapped line and is dropped on phones. `children` are full-width rows below. It counts as a card, so fields inside take the inset fill. `render={<form />}` makes it the form                                                                                                                                                                                                                                          |
| `FilterToolbar`, `FilterSheetRow`                | `src/shared/components/filter-toolbar.tsx`                                     | The one list toolbar, always a single line: the search, the `filters`, then the `controls` (usually the order), a hairline between each control (controls wrapped in one element share a group); the type dots (`row`) are the only second row. On phones the line is the search and a Filters button that opens the filters, the row and the order in a bottom sheet (`FilterSheetRow` labels each). `controls`, `filters` and `row` render per placement, so ids stay unique                                                                                                                                                                                                                                                                                        |
| `useFold`, `FoldHead`, `FoldToggle`, `FoldPanel` | `src/shared/components/fold.tsx`                                               | How a list folds its search and filter bar: a round search button at the end of the page or section title row (`FoldHead` or the head's `action`) opens a `FoldPanel` under the title that grows and fades the bar in, with the "Showing N" line inside it. It starts open while a search or filter is on (a keyboard shortcut, Cmd/Ctrl+K, is planned). Every list with a bar uses it, on a band or on the plain page                                                                                                                                                                                                                                                                                                                                                |
| `FilterResultsLine`                              | `src/shared/components/filter-results-line.tsx`                                | The one line under every filterable list's toolbar (Codex lists, Plays, Collection, My Plans, Progress, History): always there, "Showing all N" or "Showing X of N" with Reset (`ResetListButton`) on its right while a filter leaves some or the order or grouping is not the default; Reset puts back the search, filters, order and grouping, so filtering never moves the list or widens the bar. An empty list carries its own Reset                                                                                                                                                                                                                                                                                                                             |
| `BottomSheet`                                    | `src/shared/components/bottom-sheet.tsx`                                       | v3's bottom sheet on the `Sheet` primitive, for details and filters on phones and tablets: grab handle, rounded top, 88% tall and 560px wide at most, scrolling body, `footer` pinned above the safe area (its children share the width). `title` (visible Fredoka 24) or `label` when the body has its own `SheetTitle`; `description` (`descriptionHidden`), `actions` beside the close button, `trigger`, `open`, `onOpenChange`, `onOpenChangeComplete` (after the open or close animation ends), `initialFocus`, `finalFocus`                                                                                                                                                                                                                                    |
| `ResponsiveDetailSheet`                          | `src/shared/components/responsive-detail-sheet.tsx`                            | v3's detail sheet: from the right edge over a scrim from tablets up, `BottomSheet` on phones; `head` renders the `SheetTitle`, `footer`, `size` `wide` for a table. the Team Planner's Team check and the shared species sheet (`TrainerSpeciesSheet`, opened in place from the Collection and Statistics)                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `FormOverlay`                                    | `src/modules/mainline/shared/components/form-overlay.tsx`                      | Mainline's form sheet: a side sheet or dialog wide, a bottom sheet on phones and tablets; with a `hero`, the Pokémon on its type's tint heads it. Adding and editing a Play's Pokémon, a note, and a Plan's slot share it, so they look and open alike. Story's milestone opens in its own `BottomSheet` on phones and tablets                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `TrainerPlayRow`                                 | `src/modules/mainline/shared/components/trainer-play-row.tsx`                  | One Play a Pokémon of yours is in: the Play's cover and name, a line on the Pokémon ("Arcanine · Lv. 59 · On the team"), its status badge, opening it on the Play. The species sheet's rows and the Codex entry's In your Plays                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `SettingsRow`                                    | `src/shared/components/settings-row.tsx`                                       | v3 `.trow`: a setting's name, an optional line on what it means, and its control at the end (under the words on phones); rows are separated by space. App Settings and Play settings                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `UnsavedChangesFooter`                           | `src/shared/components/unsaved-changes-footer.tsx`                             | v3 `.set-foot`: shown only while its card has unsaved changes, flush along the bottom of a `DetailSectionCard`, with Cancel and Save (submits the form unless `onSave` is given). Play settings and the profile                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `SearchSelect`                                   | `src/shared/components/search-select.tsx`                                      | A searchable pick from a long list on the shared `Combobox` (held items, moves), with an optional `detail` line; clearing leaves it empty. The roster editor and the Planner's slot sheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `PasswordInput`                                  | `src/shared/components/password-input.tsx`                                     | A password field with a Show and Hide toggle, on `InputGroup`. Log in, Sign up, New password and Change password                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `PendingData`                                    | `src/shared/components/pending-data.tsx`                                       | Where a v3 piece goes whose data Voydex doesn't have yet (see below): `block` for a section or card body (an optional quiet `children` preview and a `note`), `inline` for one value or control; drawn with `empty-slot`, labelled "Not in Voydex yet" by default                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `TrainerCard`                                    | `src/features/settings/components/trainer-card.tsx`                            | v3's trainer card, the one loud thing on You, Settings and Welcome: a sticker, its 4px white border on a soft shadow, tinted by your colour. On Settings it is the profile form                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `FallbackImage`                                  | `src/shared/components/fallback-image.tsx`                                     | Every Pokémon image: an `<img>` that, without an address or when it fails to load (even before hydration), shows what it pictures in the same box. `letter` (default) where the art sits in a container (an avatar, a card's art circle, a sticker, a portrait, a medallion, a tile); `badge` where it stands on its own (the meadow, the auth peek, an empty state's Pokémon, a profile's big art): a round `sticker` the art's size with the name inside, the letter alone under 56px                                                                                                                                                                                                                                                                               |
| `GameCover`                                      | `modules/reference/features/games/components/game-cover.tsx`                   | The one game cover: the box art, or the initials on the game colour when there is none or it fails; sizes `shelf` (the Codex card), `hero`, `header`, `dock`, `row` (a list of games: 40px tall, its true width, centred in a 48px slot so the names line up), `token`, and the carousel sizes `picker`, `pickerLarge` and `playShelf` (Home). In a carousel every cover stands the same height and takes its width from its box's shape, so the covers in one carousel never differ in height; with the game's `shape` (`square`, `landscape`, `portrait`, from its first platform) it holds that box on a quiet `surface-2` tint from the first paint and loads a copy sized for it through `next/image`; `eager` for covers in view when the shelf opens           |
| `GameShelfPicker`                                | `modules/reference/features/games/components/game-shelf-picker.tsx`            | v3's cover shelf, the cover picker for starting a Play (Start a Play, Home's first Play, New Play; the Team Planner picks its game from a menu): every game in release order on one sideways row with generation marks to jump by, `coverSize` `md` or `lg`. A horizontal listbox: one tab stop, arrows, Home and End move, Enter or Space picks; the picked cover stands up with a check. It owns no background. Its row is a `Carousel`                                                                                                                                                                                                                                                                                                                             |
| `MeadowScene`                                    | `src/shared/components/meadow-scene.tsx`                                       | v3's meadow: copy on the sky, two hills, a `cast` on them and a `ground` row for the main button; `form` `band` (opens the page, edge to edge under the bar through `page-band`: Mainline Home, the site's Home, Start a Play) or `card` (New Play, the Intro). A page's one loud thing; it owns no motion                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `PageBand`                                       | `src/shared/components/page-band.tsx`                                          | The band that opens every page but Home: the head and, on a list, its toolbar and type dots, or a subject's hero, on the pale blue band (`band`), edge to edge under the bar through `page-band`, a short rounded foot, content in the page column. A list's browser renders it, taking the page's head as `head`                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `SheetSection`                                   | `src/shared/components/sheet-section.tsx`                                      | One part of a sheet or panel: the Fredoka heading with an `aside` word or an `action`, then its content (the roster's editor, the Planner's slot sheet and Team check, a species sheet, a battle report)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `OfferCard`                                      | `src/shared/components/offer-card.tsx`                                         | Something offered once to take or put aside (the sign-up hand-off, an unsaved Plan): words, an optional picture, the quiet button then the main one                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `DockedBar`                                      | `src/shared/components/docked-bar.tsx`                                         | A page's band condensed: once the band scrolls away, a slim bar docks with a picture, the name and the page's own controls (a Play's tabs, a Pokémon entry's section index)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `EditedMark`                                     | `src/shared/components/edited-mark.tsx`                                        | The dot beside a changed field's label in a form that saves on demand; the footer lists the changes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `getBarLinkClassName`, `SteadyLabel`             | `src/shared/components/bar-link.tsx`                                           | One link in a bar of sections (the top bar, the Codex trigger, a docked index): quiet words, the current one a small sticker in the selected tint, never nudging its neighbours                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `MeadowCard`                                     | `src/features/site/components/meadow-card.tsx`                                 | The site's meadow on `MeadowScene`; its `cast` is usually `MeadowPartners` (one first partner per generation; `openStart` makes them open Start a Play at their generation, and on Start a Play they jump the shelf there)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `LogoMark`, `Logo`                               | `src/shared/components/brand/logo-mark.tsx`, `logo.tsx`                        | The "V" mark on a round red disc (round like the top bar and the avatar), a placeholder until the logo is designed. `Logo` adds the Fredoka "Voydex" word (`showText`, `markClassName`, `textClassName`); the top bar hides the word on narrow phones (`max-sm:hidden`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |

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
`--t`, a 4px white border on a soft shadow; override `--sticker-border` and
`--sticker-shadow`; `sticker-picked` rings a drop target in the Play's
colour), `bubble` (a small mark's white band and soft shadow: corner marks,
picked pills and tabs), `focus-ring` and `focus-ring-inset` (the one
keyboard ring, 3px of `focus`; inset for segments, joined buttons and an
index in a scrolling column), `moment-ring` and `moment-ring-small` (a
medallion's or badge stamp's white band, its ring in `--mr` and the soft
drop), `sticker-type-band` (a picked sticker's band in its type's colour),
`plain-card` (a reference card you don't own: white,
a thin `line` edge, no shadow) and `empty-slot` (the one open slot: 2.5px dashed
`dash`, no fill). Don't hand-roll any of them. `step-back` fades and greys
the art of what belongs to another game than the one picked (the other
version's exclusives, a game a Pokémon isn't in) while its words stay
readable; it comes back on hover or focus. A detail panel that
follows the scroll beside a longer list (Story's panel, the Story matchups
report, the roster panel) takes `sticky-panel` with `useStickyPanel`: it
sticks under the docked bar when it fits, and when it is taller than the
screen it scrolls with the page and sticks at its bottom, never scrolling on
its own. A navigation list that follows the scroll (Play settings' menu)
takes `sticky-column`: it stops at the screen's height,
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

- **One component per family, with variants.** Primitives in
  `src/shared/components/ui` are one per job, edited in place (looks,
  variants, sizes, slots), with no product logic and never a parallel
  `MyButton`. Product components (`src/shared/components` or a module's
  `components`) build on a primitive and add meaning. Screens use one of the
  two and never re-type a component's classes: if a screen needs more, the
  component gets the option. Inconsistency is a bug.
- Use the primitives in `src/shared/components/ui` for buttons, inputs,
  selects, sheets, dialogs, menus and tabs. Use Base UI `render` composition;
  do not use Radix `asChild` unless a primitive supports it.
- **48px rows**: anything in a toolbar or a form row is 48px (fields, select
  triggers, `Button` default, segment tracks, `ChoiceChip` `lg`), so controls
  side by side line up; 36-40px pills only where they stand alone. A set of
  filters inside a toolbar is a `segment` track with `selectedTone="soft"`.
  Two to four choices share a `segment` track (a light ink wash, so it shows
  on the ground, a band and a white card alike); long sets that wrap
  (generations, Pokédexes) stay loose `pills`.
- **Dialog or sheet**: a dialog is for something quick (a rule's details, a
  name, a confirm); a sheet is for more involved work that still doesn't
  need its own page (a Pokémon's build, a preset's board, a Plan's slot).
- **Sheets**: below 1024px every sheet opens from the bottom
  (`useBottomSheetLayout`, `BottomSheet`); from 1024px a detail opens beside
  its list or as a side sheet, its title pinned while the body scrolls. Every overlay closes from the same `soft`
  `icon-sm` button in its top-right corner (16px in), confirms included.
  Every overlay also closes on Escape or a tap outside; for a confirm
  (delete, remove, mark incomplete, `AlertDialog`) that means "no". A long
  one scrolls its body between the header and its pinned buttons.
- **Menus and selects** share one compact 44px row; the pick takes the
  selected tint and a check, and two-line rows are only for an option that
  needs its description.
- **Stickers only for what you own.** A planned Pokémon (a Plan's team) is
  the picked `PokemonCard` (its type's tint in a ring, its slot in the
  corner dot), the same in the Plan's team as in the pool, or sits on its
  type's tint (`PokemonSheetHead` `planned`). The picked Pokémon looks the same
  everywhere: its type's tint with a border in its type's colour
  (`pokemonCardPickedClassName` on a card, `selected` on a sticker), its slot
  number top right where it has one.
- **Every page opens on a band**: the meadow on Home and Start a Play, the
  pale blue `PageBand` everywhere else, a Play included. The top bar has no ground
  of its own: the V tile and the name, the sections as quiet words straight
  on the band (the current one a small sticker in the selected tint), and
  your utilities.
- Before adding or materially styling a recurring pattern, inventory the
  primitives and the components above and reuse the closest one. Add a variant
  only for a materially different contract.
- Fields take the shared field surface; selected options take `bg-select-soft
text-select-ink` (a mode switch or scope picker takes `bg-action`); tips that explain a figure use `ExplanatoryTip`; feedback
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
  `.../plays/shared/components/milestone-pick-row.ts`. There rows read
  like the Pokédex: a row still ahead is an `empty-slot`, a recorded one a
  white card, the next objective is outlined on its edge in a softened red,
  and the row you picked takes the selected tint.
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

- Buttons and links need visible labels or accessible names, and a name
  always starts with the words the control shows: add what it doesn't show
  after them in `sr-only` text (a sticker's `detail`, a card link's `detail`),
  never as an `aria-label` that reorders them. The browser tests run every
  axe rule, label-in-name and contrast included.
- Never rely on colour alone: stamps, medallions and Pokédex marks carry
  labels.
- Check phone layouts for overflow and overlapping controls; tap targets stay
  at least 36px.

## Migration Status

Every screen is on Soft Clay, merged into `main` on 2026-10-16 (#8) after
the owner's review, and every v3 screen is built: the app shell and
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

Phase 4 (2026-10-17) rebuilt every component family on shared pieces and
replaced the raised "clicky" look: actions and owned Pokémon share the
sticker edge, cards lift on soft shadows, picks are small stickers, sheets
open from the bottom below 1024px, toolbars and form rows line up at 48px,
every page opens on a band, and the browser tests run every axe rule.
`npm run design:check` also fails on the retired raised look.

Dark mode, Skeletons and the real logo are deliberately not scheduled.
