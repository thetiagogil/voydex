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

| Concern                  | Source                                                                    |
| ------------------------ | ------------------------------------------------------------------------- |
| Tokens, Tailwind theme   | `src/shared/styles/app-tokens.css`                                        |
| Base type, focus, motion | `src/shared/styles/app-base.css`                                          |
| Utilities                | `src/shared/styles/app-utilities.css`                                     |
| Fonts                    | `src/app/fonts.ts` (Nunito through `next/font`; Baloo 2 in `globals.css`) |
| Game colour table        | `src/modules/reference/features/games/utils/game-color-styles.ts`         |
| Type colours             | `src/modules/reference/features/pokemon/styles/pokemon-type-tokens.css`   |
| Primitives               | `src/shared/components/ui` (shadcn-style, Base UI), restyled in place     |
| Retired-design guard     | `scripts/design/check-design-leftovers.mjs` (`npm run design:check`)      |
| Component gallery        | `/gallery` while developing (`src/features/system/components/gallery`)    |

The component gallery shows every shared component as it is, family by
family (colours, type, buttons, switches, chips, labels, cards, fields,
toolbars, overlays), each on the ground it meets. A change to a shared
component is reviewed there before it reaches a screen, and a new shared
component or variant gets its specimen in the same change. It exists only
while developing: the published app answers `/gallery` with Not found and
never loads its code. Product pieces (a Pokémon's card, a Play's card, the
bars) stay on their own pages.

Light mode only for now. Tokens are named by role so dark mode can later be a
second set of values for the same names (`.dark`), without renaming anything.
The `dark:` variant is wired to a `.dark` class that nothing sets yet.

## Tokens

Use the role tokens as Tailwind colours (`bg-surface`, `text-ink-2`,
`border-line`). The shadcn names (`bg-card`, `text-muted-foreground`,
`bg-primary`) are aliases of the same values so the primitives keep working;
new code prefers the role names.

| Group          | Tokens                                                                                                                                                                                                                                                                                                                                                               |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Ground and ink | `bg #EEF3FB`, `surface #FFFFFF`, `surface-2 #EDF2FA`, `hover`, `ink #1F2C49`, `ink-2 #45536E`, `ink-3 #566481`, `on-ink`, `ink-tint` (secondary text on type tints)                                                                                                                                                                                                  |
| Lines          | `line`, `lip`, `track`, `dash` (missing and open slots), `mute`, `scrim`                                                                                                                                                                                                                                                                                             |
| Action         | `action #CF342B` and `action-deep` (hover), `action-lip` (pressed), `action-soft`, `action-ink` (small eyebrows and marks), `link`, `focus`                                                                                                                                                                                                                          |
| Meaning        | `gold`, `gold-deep`, `gold-ring`; `ok`, `warn`, `danger` families (deep, soft, line); `calm` (ink, soft); `ball`; `female` (the female symbol; male wears `calm-ink`)                                                                                                                                                                                                |
| Band, mound    | `band` (the pale blue PageBand); `hill`, `hill-2` (the small mound under a Pokémon in an empty state and on the 404 page; the meadow itself is gone since 2026-11-19)                                                                                                                                                                                                |
| Selection      | `select-soft`, `select-ink` (every picked row, chip and pill); `game`, `game-strong` (a game's own colour, only on marks that tell games apart)                                                                                                                                                                                                                      |
| Corners        | Four sizes and the pill: `rounded-xs 6` (small marks), `sm 14` (inset tiles, rows), `lg 24` (stickers, tiles, cards inside a page card), `2xl 32` (page cards, sheets), `full` (every control and label). `design:check` fails on the two retired steps between them                                                                                                 |
| Shadows        | `shadow-card` (a section's thin line) and `shadow-open` (the line and the small edge of a card you can open), both worn through `Card` alone: `design:check` fails on either typed by hand, `shadow-button` and `shadow-button-pressed` (the main button's lift), `shadow-cover`, `shadow-soft`, and `shadow-float`, `shadow-menu`, `shadow-overlay` for what floats |
| Type scale     | Reading sizes `text-12 13 15 17` (12 marks, 13 small text, 15 what you read and press, 17 a lead line); title steps `text-20 24 28 32 36 44 48 52 64`; fields alone take `text-16` on phones, so iOS does not zoom; nothing under 12px. `design:check` fails on the retired 14 and 16                                                                                |
| Spacing        | Gaps inside a component take one of eight steps: `gap-0.5 1 1.5 2 3 4 6 8` (2, 4, 6, 8, 12, 16, 24, 32px); page layout may also take `gap-10` and up. `design:check` fails on the steps between them                                                                                                                                                                 |
| Card padding   | Set by `Card` alone: a section card 20px on phones and 24px from 640px, a card in a list or grid of many `size="sm"` 16px with the smaller corner. A screen only removes it (`p-0`, `px-0`) when its content pads itself. Inset blocks: `tile` 12/16px, `tile-link` 10/12px. `design:check` fails on padding set on a `Card` by hand                                 |
| Icon sizes     | `AppIcon` `sm 14`, `md 16`, `lg 20`, `xl 24`, matched to the text beside them (13, 15, alone in a control or card, a figure); primitives size their icons with the same four. Emblems above 24 are their own component. `design:check` fails on 12, 18 and 22px icons and on a numeric `AppIcon` size                                                                |
| Label heights  | Three: 24px for a mark in a row or on a card (`Badge`/`StatusBadge` `sm`, levels, versions, type badges `sm`, matchup legend), 28px for a status that stands alone (`md`, matchup cells), 36px for a type chip beside controls (type badges `lg` and `xl`). `design:check` fails on a rounded label between them                                                     |
| Page frame     | `page-width 80rem`, `page-gutter` (16, 24, 32px), `bar-h` (60, 68px), `page-top`; the `page-column` and `page-band` utilities                                                                                                                                                                                                                                        |

Every page, the top bar, the footer and the docked Play bar line up in the
`page-column`. A page's band wears `page-band`: the band runs the full width of the window and tucks under the
transparent bar, which sits on its colour, while its copy stays in the page
column. Every page opens on the
`PageBand`, on the pale blue `band` (a Pokémon Center's windows), flat colour only. The band holds
what the page is and how you shape it; the wall below (the ground with a
quiet grain of dots, so a white section never sits on plain white) holds
what it shows (settled 2026-10-17, the wall 2026-11-20):

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

The action red holds 4.5:1 with white. Focus is always the focus-blue
outline (white on the red bar), inside a Play too. Every text colour holds 4.5:1 on the ground it
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

- **Baloo 2 (700 and 800)** is the app's voice (2026-11-20, replacing
  Fredoka): page, section, card, sheet and dialog titles at 20px and up,
  list group headings, the Play name, the trainer name, the names of
  Pokémon you own, and figures of 24px and up. `h1`–`h3` default to it;
  card and section titles use it through `SectionHead`. A section title is
  plain letters on the wall over its card: never a filled pill, never a
  mark before it, never inside the card.
- **Nunito (600–800)** is everything you operate (settled 2026-10-13):
  every button including the
  main one, tabs, pills, chips, labels, table headers and reference-card
  titles.
- Nothing under 16px is Baloo 2.
- **Title steps (2026-10-19)**: every title of 20px and up takes one of the
  shared steps in `app-utilities.css`, never its own size, line height or
  tracking: `title-display` (a celebration or a front door: a trainer
  title, Welcome back, the front page's title; 36, 52 from 640px, 64 from
  1024px),
  `title-hero` (a subject's head: a Pokémon, a Play, a game, the next
  objective; 36, then 48), `title-page` (a page's head: the lists, a Plan, an
  error page, a sheet's subject; 28, then 36), `title-section` (a section, a
  wizard step, a form's head; 20, then 22), `title-card` (a card, a sheet or
  dialog title, a range heading; 20) and `figure` (a big number on
  a tile). Prose takes
  `leading-relaxed`. `npm run design:check` fails on a hand-sized text,
  tracking or line height.

## Loudness Budget

| Level  | For                                                    | May use                                                                                                           |
| ------ | ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| Loud   | Identity and reward: the Play, what you own and earned | Game fill, stickers, tilt (stamps only), gold, slap and pop, dotted texture (Play header only), the meadow        |
| Lively | Pokémon themselves                                     | Type colours, art on its type-tint circle, type dots and chips                                                    |
| Quiet  | Everything you operate and the chrome around content   | White surfaces with a thin line, navy ink, Nunito, the one action red, the soft selected tint, space between rows |

- One loud kind per section, plus the page's main button. Chrome is never the
  loud thing.
- Loud must be earned or be identity, never a control.

## Colour Rules

- **One palette for the whole app (2026-10-17).** Every page, a Play
  included, wears the same colours; a Play no longer takes its game's colour,
  and no band or meadow tints toward a game. Each colour has its jobs
  (2026-11-20): the red (`action`) is the top bar (the Center's roof) and
  actions, nothing else; the blue (`calm`)
  says where you are and what is on (`select-soft`/`select-ink` for picks,
  the solid blue for a strong pick, a tick, a radio, a switch) as well as
  progress and counts; a slot's number is ink. A game's own colour (`getGameColourStyle`, setting `--game` and
  `--game-strong`) is kept only for marks that tell games apart: the dots in
  version pickers, a cover's stand-in when there is no art, and Statistics'
  time chart.
- **Fill** in the red only on the top bar's strip, the main button and the
  start medallion; in the blue on the active Play tab and a mode switch or
  scope picker's pick. Never the
  background of a card, row, section or input, and never an outline round a
  row (an accent outline reads as an error). Progress (bars, rings, figures of how far you
  are) is the Poké Mart blue (`progress`), like the games' EXP bar; green
  stays for status.
- **One look per size of Pokémon (2026-10-17)**: a Pokémon at card size is
  one of two cards by meaning (2026-11-24): a plain white card with a thin
  line for one you look up (`PokemonCard`: the Codex, the Planner's list, a
  Play's Pokédex, its band in its type's colour once picked), and the
  collector card, all in its type's colour, for one that is yours
  (`PokemonCollectorCard`: the Collection, a team, a Plan's team). Anything smaller is
  the round portrait (`PokemonAvatar`), owned or planned alike. A moment's
  Pokémon is its `Medallion`, as every moment is.
- **Buttons are one family (2026-10-17)**: every size is the same pill, a link
  styled as a button gets the same look (`buttonVariants` merges
  its classes), close buttons in sheets and dialogs are `secondary` icon
  buttons, and an action with a menu of other ways joins it in a
  `ButtonGroup` (Random team, Record a milestone). `soft` is only a control
  inside a field. A sheet's Save button says just "Save", with no icon and
  never a name typed in the form (2026-10-22); a spinner takes the icon's
  place while it saves.
- **Pickers are one family (2026-10-17)**: every select, dropdown menu,
  bar menu and searchable list opens the same white panel
  (`menuPanelClassName` in `ui/menu-surface.ts`, a hairline on the float
  shadow) with the same 48px option row (`menuOptionClassName`): an optional
  picture on a 36px tile, the title, a quieter line under it, the pick in
  the selected tint (`MenuOptionContent`); a select's pick is its tint alone,
  with no check (2026-10-22), and a menu's current item keeps its check.
  `SelectControl`
  takes `icon`, `description`, `trailing` (a short mark at the row's end
  and beside the picked value, such as a nature's stats) and `info` (what
  the option is, behind a faint small "i" at the row's end, `ExplanatoryTip`
  `subtle`; the field shows the picked one's on hover and reads it with the
  field, as an ability's or a move's effect) per option and
  opens with a search field for lists longer than ten (`searchable`); a
  searchable list groups its options under headings by `group` (natures by
  the stat they raise, held items by category), and its search also matches
  the group's name; a list of games shows each
  game's cover (`GameOptionCover`), a generation its region. A toolbar's
  quiet select shows its words alone; a field shows the picture too. It
  takes the hover tint under the pointer, and given `resetValue` (what Reset
  puts back) it sits in the selected tint while it holds anything else, so
  a list shows which controls moved off its default.
- **Selected controls**: the one picked is filled, with no band
  (2026-11-20), and its weight never changes. Rows, chips and filter
  pills take `bg-select-soft text-select-ink` (the soft tint of the context
  colour with deep ink); menu rows take the tint with a check, select rows the tint alone. A mode
  switch (`SegmentedControl` `segment`, v3's `.mode-seg`) takes the solid
  blue (`bg-calm`) with a white label. A scope picker (pills choosing which part you look at: a Pokédex, a
  Story journey, a collectible set, a game version; v3's `.pill.is-on`) takes
  the solid blue too, with `selectedTone="strong"`; filters stay soft. The Log
  in / Sign up form switch keeps the soft tint. Where a control already sits
  on the soft tint (the game shelf's generation marks) the selection takes
  the solid blue too.
- **The top bar** reads the `--bar-*` tokens and looks the same on every
  page. Its current mark swaps at once (no fade) and each link keeps its bold
  width, so changing section never flickers or nudges the other links. The
  bar sits on the red strip (2026-11-20, `page-band-strip` in `band-deep`,
  the Center's roof, on the site as in the app), which covers
  the top of the Poké Ball mark and steps down only round the logo, like a
  tab. The band leaves room under the strip before its title and ends on a
  straight edge. Its words are white, the V tile is white with a red V, the
  current section is a white tab with red words, the Codex sits with the
  other sections, and your
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

Three levels, each with one meaning (settled 2026-11-20 with the Center
design), and nothing moves down when pressed. `npm run design:check` fails
on an edge or a band drawn by hand, a press that moves, a gradient fill or
glass.

- **Flat (a section)**: a section card is white on the dotted wall with a
  thin line (`shadow-card`). It has no blur and no edge, and never reacts
  to the pointer.
- **The small edge ("you can open this")**: a card you press has a small
  solid edge under it and rises a little under the pointer: a Play row and
  a Home moment and a My Plans card (`Card` `interactive`), a Pokémon card
  (`plain-card`, `sticker` for a caught or picked one, `card-frame` when it
  is yours) and a played game's card (`card-frame`). A card of yours is all in its type's or its game's
  colour; one you only look up is white with a thin line.
- **The lift (the main action)**: the page's main button (`default`, and
  `inverse` on the red) is solid red on a soft shadow that shrinks when
  pressed (`shadow-button`, `shadow-button-pressed`); it is the one thing
  on a page that lifts. Blur is otherwise only for what floats over the
  page: menus, sheets, dialogs, toasts and the docked bars.
- **Controls wear no band.** Every other control you press is white with a
  1.5px outline (`lip`), the same on the wall, on a band and inside a card;
  a pick is filled. The white band (`bubble`, the `--band` token) is only
  for a small mark on a card and your initial. A disabled red or wine
  button turns neutral grey.
- **Card corners (one rule)**: every Pokémon card (a card of yours, a pool
  tile, a Pokédex card) carries its marks in the same corners,
  drawn by the shared marks in `corner-bubble.tsx` and placed by
  `CornerBubble`: the slot number (`SlotMark`) top-right, a warning
  (`WarningMark`, or the raised `ExplanatoryTip` where the mark opens a tip)
  top-left, where the Pokédex number (plain text) would be, and the shiny mark
  (`ShinyMark`) right below the slot number, or alone top-right without one, (chosen 2026-10-21). A collector card carries its warning and its shiny mark in the corners of its window, says its count in words ("4 Plays"), not in a mark, and shows no slot number: only a pool tile says which slot it took. A Pokédex card has no slot, so its Play state mark (a
  Poké Ball or an eye) takes the top-right, sized to its card. Every mark is a
  disc in the one `bubble` white band (24px; the Pokédex number is plain
  text), inside the card (`inside-top-*`, 12px in from the card's outer edge whatever its border, set with `CornerBubble`'s `border`; on a collector card 12px in from its window's edge, and a mark that opens a tip, placed beside the card, 12px in from the card's) so a list
  that clips its edges never cuts it and the card lifts with it. Never place
  a mark by hand: `npm run design:check` fails a Pokémon card file that does.
- **Focus rings are never cut off**: the one `focus-ring` lifts the focused
  element to `z-index: 20`, so a neighbour can't cover its ring (the bars sit
  at 30 and 40, sheets and dialogs at 50, corner marks at 20 and later in the
  card so they stay above their card). A ring reaches 5px out, so a parent
  that clips (`overflow`) needs 5px of room, or the control sits in a wider
  scroller. `e2e/app/focus-rings.spec.ts` focuses every control on the main
  pages, desktop and phone, and fails on a ring or a corner mark a parent
  cuts off.
- **Cards inside cards**: a card loses its line inside another card, a
  sheet or a dialog (`Card` handles this); the Codex's reference cards (a
  Pokémon or a game you don't own) share one surface, `plain-card`: white
  with a thin `line` and the small edge, so they read on the wall and inside
  a section alike. The white band is only for what is yours or picked. A Pokémon card shows one name (the nickname,
  or the species without one); its level is the white `Lv.` chip beside the
  type dots, and the line under the name carries other facts (a role, Plays).
- **Moments**: the medallions and the badge stamps wear a white band and a
  soft rim and lift on a soft drop (`--moment-drop`).
- **Flat**: `ghost` and `soft` buttons, links, dialogs, sheets and menus
  (overlay or float shadow only), unpicked pills and chips.

## Motion

Motion is a reward. Hover lifts and the Pokémon hop are fine on things you can
open. `animate-stamp-slap`, `animate-pop` and `animate-hop` play only at the moment something is
recorded or marked, never on load or redraw. The exceptions are the
once-per-visit reveals: the meadow's partners pop in (`animate-meadow-pop`) and
Statistics' title rises in, once per browser tab. A reveal takes its name from
`useFirstVisit` as `data-first-visit`, and `FirstVisitGuard` in the root
layout keeps one the tab has seen still from first paint, so a reload never
starts it. Nothing loops and controls don't bounce. `app-base.css` honours
reduced motion. Settings' Motion is Full or None: None sets
`data-motion="none"` on the root element and stills every animation and
transition; Full leaves it off and still keeps still for a device that asks
for reduced motion. Scripted scrolls ask `isMotionReduced` /
`getScrollBehavior` (`src/shared/utils/motion.ts`). Tailwind's `motion-reduce:`
and `motion-safe:` classes follow the device alone until the redesign pass, so
None does not reach them yet.

Whatever lifts carries everything on it: a card's badges, its lock, its ⋯
menu and its corner bubbles sit inside the element that moves, never as an
absolute sibling over it. A clickable card with its own menu is a Card
`variant="interactive"` with a stretched `data-slot="card-open"` button and
the menu inside the card above it (the Library's rule cards); the card lifts
and takes the focus ring for that button.

One reward per moment, in one place, and it shows at once: Story's Record,
like a Pokédex or collectible mark, shows on the page straight away and saves
in the background. Stamps slap (`animate-stamp-slap`): a Story row's medallion
as it turns recorded, and on Overview the recorded objective's stamp in the
journey card's stamp card, before its words hand over to the next one
(`animate-objective-out`, `animate-objective-in`). Story's stamp card stays
still, so a badge never animates twice on a page. Small cards and tokens you
mark (Pokédex, Collectibles) pop; a partner you pick hops (`animate-hop`). A
wide row never moves: a Story row keeps still while its marker changes (a
number pops back with `animate-marker-in`). A card or token you unmark settles
softly (`animate-settle`). Things recorded together cascade in Story order:
each Story row waits as it was, then turns, one beat (`stampStepMs`, through
`createStampOrder`) after the one before.

## Component Language

Bars are flat (2026-11-19): no pressed-in track and no darker base on the
fill.

**One place for each style (2026-11-19).** A restyle only reaches what draws
through the shared pieces, so screens never type a style by hand. Text takes
one of six text styles (`copy-strong` 15/800 a name or value that matters,
`copy-body` 15/600 running text, `copy-note` 13/600 the line under a title,
`copy-label` 13/700 a label or small heading, `copy-meta` 13/600 small facts,
`copy-mark` 12/800 the words on a mark), with its colour as a role token
beside it. A block inside a card is a `tile`, a row inside a card that opens
something is a `tile-link`. `design:check` fails when a screen sets a text
size and a weight together or draws an inset tile by hand.

Ten rules keep the look clean (2026-11-19): four corner sizes, four reading
sizes (12, 13, 15, 17), eight gap steps, two card paddings, four icon sizes,
two control heights (48 and 36px, the same on phones), three label heights
(24, 28, 36px), three surfaces (the ground, a white
card on it, a pale inset tile inside a card), one colour per job (red acts,
blue says where you are and how far), and one look per meaning (a status is
the same white pill everywhere). A control sets its own size in its shared
component (bar links, menus and selects 15; pills, chips and switch options
13), never on the screen that uses it.

One shape language (2026-11-20): everything is round and soft. Controls are
pills, labels are pills, and cards have generous round corners (14, 24 and
32px).
A few pieces carry more character, and only on things you own or remember,
so they never fight the chrome:

- **Two Pokémon cards, by whose it is** (2026-11-24). One you look up is a
  `PokemonCard`: the number, the art on a round patch of the type's tint,
  the name, the types, white with a thin line (the Codex, the Team
  Planner's list, a Play's Pokédex, where a caught one takes its type's
  tint). The Codex and the Planner's list must always draw the same card.
  One that is yours is a `PokemonCollectorCard`, the same in the
  Collection, on a Play's team and in a Plan's team: a real card, all in
  its type's colour, with the number and a count on top, the picture in a
  light window, the name (and the level on a team), then the types.
- **Games you played are collector cards too.** In the Collection a game
  (`GameShelfCard` with `count`) wears its own colour the same way: frame,
  paler face, the cover in the light window, the count in words.
- **A tag** (`TagLabel`, `RemovableChip`) is something a Play carries: its
  tags and challenge rules. It is a label like a status, a white pill with a
  thin line (the paper tags were retired 2026-11-20). Never a control:
  anything you operate in a toolbar is a `ChoiceChip` or a
  `SegmentedControl`.
- **Bars are thick where a row lists several** (`Progress` `showValue`):
  the figure is written inside the fill, so no column of numbers runs
  beside them; "Off" sits in an empty bar.

Tried and taken out the same day, because they brought a second, angular
shape language next to the round one: pointed type ribbons, square status
slips, and index tabs on section cards. A type's name stays a pill, a
status stays a pill with its dot, a section's title stays inside its card.

## Components

Restyled primitives under `src/shared/components/ui` keep their names:
`Button` (two looks: `default` is the page's main action, solid in the
one red on a soft shadow; every other button is white with a thin outline: `secondary` the quiet action, `destructive` a quiet action that
removes something, `inverse` an action on the red top bar (Log in: white, with the action's ink), `tint` an action on a tinted band such as the Play header
or a sheet's head; `soft` is the flat close and minor action, `ghost` a flat
choice that shows `aria-pressed`. Two heights only: `default` 48px, as tall
as a field, and `sm` 36px inside cards and rows; tabs, pills and chips are
36px too on every screen (a segment switch is 48px with its track, or 36px
as `sm`), so everything in a row is level; `icon`,
`icon-sm` and `icon-xs` are round. A quiet button and a field share one surface: white with a thin outline,
the same on the wall and inside a card. Words that go
somewhere are a `TextLink`, never a button), `Card` (`default`, `inset`,
`interactive`), `Badge` (tones `neutral`, `outline`, `ok`, `warn`, `calm`,
`danger`, `gold`, `tint`, `select`, `paper`; sizes `sm` 24px and `md` 28px),
`Alert` (a quiet note in a page, form or sheet, never a filled banner:
`default` the inset fill, `warning` the soft amber for something that blocks
nothing, such as a Play's rule broken, `success` the soft green for good
news, such as a Strong Story matchup, `destructive` the soft danger tint for
an error or a Challenging Story matchup; a note that only informs takes `role="status"`), `Dialog`,
`Sheet`, `DropdownMenu`,
`Select`, `Tooltip` (ink; every hover label, after a brief shared delay, `tooltipDelay`; never the browser's `title` attribute), `Input`, `InputGroup` (the search field),
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
`Textarea`, `InputGroup`, `Combobox` and the `Select` trigger. A field is white with a 1.5px outline (`lip`), the same on the wall and
inside a card, dialog, alert dialog, sheet or popover. An invalid
field takes the danger line; focus is the focus-blue outline. A single-line
field (input, search, select trigger) is a pill like the buttons beside it; a
text area takes a soft `rounded-2xl` corner. Every form
control is 48px tall (inputs, the search field, select triggers and the
`segment` track), so controls side by side line up. Don't style a field
locally; extend the shared surface. A selected option changes colour, never
weight, so picking one doesn't shift its row.

Voydex components:

| Component                                                                    | Where                                                                          | Notes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| App bars                                                                     | `src/features/app-shell/components/navigation`                                 | v3's top bar, the phone and tablet bottom bar, the account and public menus (see [Navigation And Routes](../product/navigation-and-routes.md))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Play head and docked bar                                                     | `modules/mainline/.../hub/shell/top-section`, `mainline-play-docked-bar.tsx`   | On the band: cover, Baloo 2 name, facts, tabs, dotted texture; `form="card"` for the site's sample Play                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Play tabs                                                                    | `mainline-play-navigation.tsx`                                                 | `NavigationMenuControl*`: white tabs on the Play's band, the active one a small sticker in `bg-action`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `PokemonCard`                                                                | `modules/reference/features/pokemon/components/pokemon-card.tsx`               | The one Pokémon card (its name wraps to two lines): `plain`, `caught` (with a Poké Ball), `seen` (with an eye), `missing`; sizes `md`, `sm`, `fluid`; `marks` puts small marks at the end of the number line, level with it, without changing the card's height (an opponent's Tera jewel and held item sprite in a Story battle report). The public pages draw it too, through `publicArt`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `PokemonTile`, `PokemonAvatar`                                               | `.../pokemon/components/pokemon-tile.tsx`, `pokemon-avatar.tsx`                | The one small Pokémon: its art on a round pale tint of its type (`PokemonAvatar`), for a team at a glance (Plan strips, Play cards, a team snapshot, a battle report); `PokemonTile` is that portrait with its name under it, as a link (a game's exclusives and first partners)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `OpponentAvatar`                                                             | `modules/reference/features/trainers/components/opponent-avatar.tsx`           | Who you battle: the trainer's portrait (`PokemonAvatar` with `art="portrait"`, from `getTrainerPortraitUrl`) with their ace as a small `bubble` sticker on its corner; their initials take the disc where Voydex has no portrait, and a Pokémon met alone (a legendary, a titan) fills it with its own art (the Codex game page's leaders, a Story milestone's battles)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `PokemonEmptySlot`                                                           | `.../pokemon/components/pokemon-empty-slot.tsx`                                | The open slot where one of your Pokémon would stand (a team slot, a Plan's slot), drawn with `empty-slot`. It carries the unseen parts of a `PokemonCollectorCard`, so a row stands as tall empty as full (`size` `lg` beside team cards, `sm` beside small ones). `target` rings it under a drag (`dropTargetRingClassName` in `drop-target-ring.ts`, the same ring on a card)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `PokemonCollectorCard`                                                       | `.../pokemon/components/pokemon-collector-card.tsx`                            | The card of a Pokémon that is yours, wherever it is one: the Collection, a Play's team (Roster, Overview, your partner), a Plan's team, Old friends. All in its type's colour: a frame (`card-frame`, the full colour once picked) round a paler face (`card-face`), a top line with its Pokédex number and one count in words ("4 Plays"), the art in a light window (`card-window`) with a warning top-left and the shiny mark top-right, the name with its level beside it on a team, then the types on one line. No slot number. `size`: `md` in the Collection, `lg` on a team (the big picture), `sm` for a few in passing. `md` and `lg` step down to `sm` where the card is narrow (under 9.5rem inside its frame): the name turns from Baloo 2 at 17 to Nunito at 15 and the types from words into marks. The sizes are `collectorCardSizeClassNames`, shared with the open slot. `owned={false}` is the same card in plain white (a favourite not on a team). A glint crosses it under the pointer                                  |
| `PokemonTypeBadge`                                                           | `.../pokemon/components/pokemon-type-icon.tsx`                                 | TypeChip (`icon-label`, `label`) and TypeDot (`icon`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `PokemonTypeList`                                                            | `.../pokemon/components/pokemon-type-list.tsx`                                 | A Pokémon's types as chips or dots: `types` (slot order; empty renders nothing) or the `primaryType` and `secondaryType` pair; `badgeDisplay`, `badgeSize`. `PokemonCard` and `PokemonCollectorCard` draw theirs with it; never map types to badges by hand                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `PokemonPortrait`                                                            | `.../pokemon/components/pokemon-portrait.tsx`                                  | Art on its soft type-tint circle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `Medallion`                                                                  | `modules/mainline/features/plays/shared/components/medallion.tsx`              | One per moment: `badge` (the badge's picture on its type's wash, or the type icon on the full type colour; `BadgeArt`), `gold`, `pokemon`, `note`, `status`, `start` (game colour)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `RecordRow`                                                                  | `.../plays/shared/components/record-row.tsx`                                   | The moment card, the one way a moment is drawn (History, a Play's Overview, a Pokémon's own moments, Home): its picture (a medallion, or on Home the Play's cover through `picture`), the kind and `when` on the top line, what happened in bold, an optional line that explains it; `wrap` shows text in full, `medallionFaded` for a Pokémon that left the team, `opens` for a card that is a link (the edge and the lift). `variant="card"` keeps the picture inside the card; `variant="timeline"` is the same card on a `PlayTimeline` dashed line (`.../hub/components/play-timeline.tsx`): below 1024px its medallion sits on the line, from 1024px inside the card; `row` sits between rules with no card of its own (the front page's example). On the wall the card is white, inside another card it takes the inset fill.                                                                                                                                                                                                          |
| `PlayMomentTime`                                                             | `.../plays/shared/components/play-moment-time.tsx`                             | Any recorded instant, read in the viewer's time zone: `day` ("Today", "Aug 12") or `date` ("Aug 12, 2025"), its time on hover. `formatPlayDate` is for calendar days such as `started_on` only                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `BadgeStamp`                                                                 | `.../plays/shared/components/badge-stamp.tsx`                                  | The only thing that tilts at rest; an earned badge holds the same `BadgeArt` as its `Medallion`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `StampGrid`, `PlayStamp`                                                     | `.../plays/shared/components/stamp-grid.tsx`, `.../shared/data/play-stamps.ts` | A Play's stamps on Story's stamp card, from one `PlayStamp` model (a gym badge or an Alola trial in its type, a Grand Trial in its type with a gold ring, or a League milestone in gold; `earned`, `next`, `todo`). Each `BadgeStamp` tilts by its own angle over its label, and opens its milestone (`onStampSelect`), lifting under the pointer and popping when picked. It never moves on Record: the row in the list stamps instead, and Overview's next objective slaps its own `BadgeStamp`. Dates read in the viewer's time zone                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `MilestoneMarker`                                                            | `.../plays/shared/components/milestone-marker.tsx`                             | Where a milestone stands, the same in Story and Overview: recorded wears its medallion (the badge's picture or type, else gold), the next is a game-coloured ring around the objective flag, the rest show their number in a quiet ring; sizes `lg` (Story's route), `md`, `sm`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `ObjectiveCard`                                                              | `.../plays/shared/components/objective-card.tsx`                               | v3 `.cont`, Overview's next objective: a quiet card named by `titleId`, `ObjectiveEyebrow` (action-ink), the Baloo 2 title (`objectiveTitleClassNames` `lg` or `md`), `ObjectiveWhere`, `actions` (the page's main button), an optional `footer` under a rule, and `onClose` for a corner close button                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `useOptimisticMarks`                                                         | `.../plays/shared/client/use-optimistic-marks.ts`                              | The one optimistic marking flow (Pokédex, Collectibles): a mark shows at once while it saves, and a failed save puts the previous values back and says why. Returns `valueById`, `mark`, `isPending`, `pendingIds`; `mark` reads no render state, so a toast's Undo can call it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `CodexHead`                                                                  | `modules/codex/shared/components/codex-head.tsx`                               | The path at the top of a Codex page inside Pokémon or Games, back to its list (the lists open on their title; the bar's Codex menu moves between them); `trailEnd` for a last step that is a control, such as the Pokémon or game picker, whose trigger takes `codexHeadPickerTriggerClassName`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `CodexGenerationPills`                                                       | `modules/codex/shared/components/codex-generation-pills.tsx`                   | v3 `.gens`, the labelled generation pills of a Pokémon's entry (links, every generation shown, disabled where it isn't; the Pokémon list filters by generation from a toolbar menu). On phones the row scrolls sideways edge to edge and keeps the current pill in view                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| `PokemonCardLink`, `PokemonCardGrid`                                         | `modules/reference/features/pokemon/components/pokemon-card-link.tsx`          | A Pokémon you don't own in a list (the Codex's Pokémon list, a game's Pokédex, Collection's favourites not on a team yet): the plain `PokemonCard` opening the entry, off-screen cards skip rendering. The grid is three across on phones, 128px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Codex list pieces                                                            | `modules/codex/shared/components`                                              | `CodexPendingValue`, the inline `PendingData` marker for one value the Codex doesn't have yet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `PokemonTypeFilter`                                                          | `modules/reference/features/pokemon/components/pokemon-type-filter.tsx`        | v3 `.typefilter`, one dot per type for every Pokémon list (the Codex's lists, Collection, the Team Planner's pool); picking one fades the others, picking it again clears it                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `GameShelfCard`, `GameShelfGrid`                                             | `modules/reference/features/games/components/game-shelf-card.tsx`              | The one game card (the Codex's Games list and Related games, Collection's Games): the framed cover in a fixed-height stage (no fill), the short name, year and region at the `href` given; in the Codex on `plain-card`, as a Codex Pokémon card, never marking your Plays. With `count` ("2 Plays") it is a played game in the Collection: a collector card framed in the game's own colour, its name and count in words, the cover in a window, as the Collection's Pokémon; with `onClick` instead of `href` it is a button (a played game opens its sheet in place). The grid is two across on phones, 150px columns wider                                                                                                                                                                                                                                                                                                                                                                                                                |
| `SegmentedControl`                                                           | `src/shared/components/segmented-control.tsx`                                  | Every segment switch and pill set: `pills` for filters, `segment` for modes; sizes `md` and `sm` (36px pills; a `segment` track is 48px, or 36px as `sm`); `fullWidth`; `iconOnly` (icons only, each label in a tooltip and for screen readers: a switch that has to fit a full toolbar line, such as the Plays List / Grid switch); `selectedTone` `strong` (`bg-action`, white label: the default for `segment`; pass it for scope pickers and for pills on the soft tint) or `soft` (the default for `pills`). Options take `count`, `icon`, `dot` (a colour dot filled with `--game`: pass `getGameColourStyle(slug)`), `disabled` with an optional `disabledReason` (a tooltip that joins the accessible name; the option stays focusable with `aria-disabled`), and `href` (links: `aria-current="page"` for `value`, `aria-current="true"` for an option flagged `current`, the section you are in without being its exact page). `value` may be `null`                                                                                |
| `IconTip`                                                                    | `src/shared/components/icon-tip.tsx`                                           | Every hover and focus label that is not an `ExplanatoryTip`: an icon-only action's name, or a picture, mark or chip saying more (the trigger keeps its own `aria-label` or hidden text; no label means no tip). Never the browser's `title` attribute: `npm run design:check` fails on one; a disabled control gets its tip on a wrapper                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `Carousel`                                                                   | `src/shared/components/carousel.tsx`                                           | v3's sideways shelf for every row of covers (`GameShelfPicker`, Home's Plays): the scroller itself (a `div`, or a list through `render={<ul />}`, keeping the caller's role, ref and keys), no scrollbar, centred while it fits, room above for a picked cover to stand up; `density` `compact` (the picker) or `roomy` (Home), `fadeEdges`, `snap`. Earlier and Later page through it on wider screens: `initialEdges` sets them for the first paint from where it opens, then each shows while there is more that way (both go when it all fits) and hands focus to the end item before it goes. Phones swipe. Tab strips and pill rows don't use it                                                                                                                                                                                                                                                                                                                                                                                        |
| `ProgressDonut`                                                              | `src/shared/components/progress-donut.tsx`                                     | A ring in the context colour with the Baloo 2 percentage in its middle (`role="meter"`); Overview's Story, Pokédex and Collectibles tiles                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `ExplanatoryTip`                                                             | `src/shared/components/explanatory-tip.tsx`                                    | The reason behind a figure: an "i" dot (`dot` inset, `raised` beside a control) or a custom trigger, opening an ink popover on hover, focus or press (pinned on press)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `TipStack`, `TipHead`, `TipRows`, `TipRow`, `TipText`, `TipNote`, `TipNamed` | `src/shared/components/tip-parts.tsx`                                          | What goes inside an ink tip (`Tooltip` or `ExplanatoryTip`) longer than a sentence: a head on a tone dot (`danger`, `warn`, `ok`), rows with an optional picture, a quieter detail line and a chip for the figure (solid tone), a muted note for the why. `TipNamed` is a name over what it does (a move, an ability, a rule). A tip never runs on as a wall of text: lists for several things, the verdict first and the reading quieter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `StatusBadge`                                                                | `src/shared/components/status-badge.tsx`                                       | A meaning on `Badge`: a white pill with a hairline, a dot in the meaning's colour and its words in the meaning's ink. One look, on a card and on a band (`ground` is kept for callers but changes nothing). `dot={false}` where an icon already leads. A Play's status everywhere through `getPlayStatusTone`: playing calm (blue), paused warn (yellow), completed ok (green), abandoned danger (red)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| `TextLink`                                                                   | `src/shared/components/text-link.tsx`                                          | The one text link: red and extrabold, underlined under the pointer; `quiet` (footer, breadcrumb) and `onInk` (inside an ink tip) tones; `arrow` `forward` makes it a link of its own (36px, as `SectionMoreLink`); without `href` it is a button that reads as a link, such as "See all".                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `ChoiceChip`                                                                 | `src/shared/components/choice-chip.tsx`                                        | One choice in a set you can pick several of (expansions, a Plan slot's role): a 36px pill, `lg` 48px beside fields; picked, the selected tint in a white band with a check; `add` is the dashed chip that adds another (the trigger of a rule or tag picker)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `RemovableChip`                                                              | `src/shared/components/removable-chip.tsx`                                     | Something a record keeps, as a 40px label pill (a Play's or Plan's rule or tag) with the `CornerRemoveButton` that takes it off; not a toggle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `LibraryChoiceField`                                                         | `src/modules/mainline/shared/components/library-choice-field.tsx`              | The rules or tags a Play keeps as `RemovableChip`s, then an `add` `ChoiceChip` that opens a searchable picker of the rest of your Library, with Create for a new name and "Manage in Library" at its foot                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `PickedMark`                                                                 | `src/shared/components/picked-mark.tsx`                                        | The check on the one picked picture (a game's cover, a Play on Home's shelf): a red disc in a white band in its top-right corner                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `CornerBubble`, `SlotMark`, `WarningMark`, `ShinyMark`                       | `src/shared/components/corner-bubble.tsx`                                      | Where a Pokémon card's small marks sit and what they look like (see Card corners): `CornerBubble` places them (`inside-top-left`, `inside-top-right`; `top-right`, `top-left` and `bottom` for non-card marks), each mark a 24px disc in the `bubble` band. `SlotMark` is a slot's number, `WarningMark` a rule it breaks, `ShinyMark` the shiny sparkle. `CornerRemoveButton` is the remove ×                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `IconDisc`, `iconDiscVariants`                                               | `src/shared/components/icon-disc.tsx`                                          | The one round tile an icon or a letter sits on beside words (a section's icon, a row in You, a fact in Statistics, an open slot's add mark): `quiet` (inset grey) or `band` (white with the calm blue); sizes `xs`–`xl`. Never hand-roll a disc                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `RecordMilestoneButton`                                                      | `.../plays/shared/components/record-milestone-button.tsx`                      | The one button that records a Story milestone (Overview's next objective, the partner hero, Story's panel): the main action led by a check, `lg` or `sm`, `href` for a choice that opens Story's form, `pending` with a spinner                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Type matchups                                                                | `src/modules/mainline/shared/components`                                       | One set of matchup pieces for a Play's Team analysis and the Planner's Team check, from one row shape (`data/type-matchup-rows.ts`): `TypeMatchupCell`, `TypeMatchupLegend`, `TypeMatchupPressureTag`, `TypeName`, `MatchupMemberSprite`, `DefensiveMatchupsTable` (sortable from its headers when given `onSortChange`; hovering picks out a row and a Pokémon's column), `DefensiveMatchupsList` (phones), `TypeTallyStrip` (the phone rows' small chart of the folded matrix: one bar per Pokémon, up in wine where it's weak, down in green where it resists, taller for 4×, ¼ and immune) and `TypeCoverageChip`                                                                                                                                                                                                                                                                                                                                                                                                                         |
| `EmptyState`                                                                 | `src/shared/components/empty-state.tsx`                                        | `card` (default, built on `Card`, so it is only its words inside another card): one sentence, at most two actions, one Pokémon on grass when `art` (its name and URL) is given; `bare`: one quiet centred sentence with no card. `headingLevel="h2"` where it stands in for a page                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `SystemState`, `ErrorPage`                                                   | `src/features/system/components/system-state.tsx`, `error-page.tsx`            | Not-found and error pages: centred Baloo 2 title, one sentence, at most two actions, optional Pokémon on grass. `ErrorPage` is every `error.tsx` boundary's page (signed in, Codex, Log in, site): the error reference, Try again and Back home (`homeHref`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `PageHeader`                                                                 | `src/shared/components/page-header.tsx`                                        | Every page head: Baloo 2 title, one line, an optional `note` line under it (the Collectibles reward), an optional action; a page a level down (My Plans, Archived Plans, Archived Plays) goes back with a secondary button named after where it goes and led by the back arrow, first in the action, never an eyebrow link; the Codex, nested several levels, keeps its breadcrumbs; `headingLevel` `h1` (default) or `h2` where the page already has its `h1`, such as a Play tab                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `SectionHead`, `SectionMoreLink`                                             | `src/shared/components/section-head.tsx`                                       | v3 `.sec-head`: Baloo 2 24 `title` (`headingLevel` 2 or 3, `titleId` for `aria-labelledby`), `aside` beside it (hidden under 560px), `description`, `icon`, and trailing `more` (`{ href, label }`, the link onward with an arrow) and `action`. Above a grid on the page ground, and inside `DetailSectionCard`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `DetailSectionCard`                                                          | `src/shared/components/detail-section-card.tsx`                                | A content section: its `SectionHead` on the wall and one quiet card under it (same props plus `more`); the title is never inside the card. `className` places the section, `contentClassName` lays out the card. Every Codex, Settings, Statistics and Play settings section                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `RangeHeading`                                                               | `src/shared/components/range-heading.tsx`                                      | v3 `.range`, the head of a range in a long list: Baloo 2 20 `title`, `count` line, trailing `actions`; `headingLevel`, `titleId`, and `titleFocusable` so script can move focus to it (`tabIndex={-1}`, never in the tab order) after a jump or a bulk change                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `Toolbar`, `ToolbarGroup`                                                    | `src/shared/components/toolbar.tsx`                                            | v3 `.toolbar`, the one toolbar card: the `search` slot is the only control that stretches (whole first row on phones); every other control keeps its own width. Each `trailing` item is one group (filters, a sort, a mode switch; wrap controls that belong together in a `ToolbarGroup`), with a hairline between groups that never starts a wrapped line and is dropped on phones. `children` are full-width rows below. It counts as a card, so fields inside take the inset fill. `render={<form />}` makes it the form                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `FilterToolbar`, `FilterSheetRow`                                            | `src/shared/components/filter-toolbar.tsx`                                     | The one list toolbar, always a single line: the search, the `filters`, then the `controls` (usually the order), a hairline between each control (controls wrapped in one element share a group); the type dots (`row`) are the only second row. Below 1280px (phones and tablets) the line is the search and a Filters button that opens the filters, the row and the order in a bottom sheet (`FilterSheetRow` labels each); from 1280px it never wraps: the search shrinks to 176px, then each field gives way, cutting a long value short (the list shows it whole). A control wrapped in a `ToolbarGroup` keeps its own classes, such as `shrink-0` for a switch. `controls`, `filters` and `row` render per placement, so ids stay unique                                                                                                                                                                                                                                                                                                |
| `useFold`, `FoldHead`, `FoldToggle`, `FoldPanel`                             | `src/shared/components/fold.tsx`                                               | How a list folds its search and filter bar: a round search button at the end of the page or section title row (`FoldHead` or the head's `action`) opens a `FoldPanel` under the title that grows and fades the bar in, with the "Showing N" line inside it. It starts open while a search or filter is on, or on every list when Settings' Search and filters is Always open (`FoldsOpenProvider`, set by the app shell; a keyboard shortcut, Cmd/Ctrl+K, is planned). Every list with a bar uses it, on a band or on the plain page                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `FilterResultsLine`                                                          | `src/shared/components/filter-results-line.tsx`                                | The one line under every filterable list's toolbar (Codex lists, Plays, Collection, My Plans, Progress, History): always there, "Showing all N" or "Showing X of N" with Reset (`ResetListButton`) on its right while a filter leaves some or the order or grouping is not the default; Reset puts back the search, filters, order and grouping, so filtering never moves the list or widens the bar. An empty list carries its own Reset                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `OverlaySheet`                                                               | `src/shared/components/overlay-sheet.tsx`                                      | The one sheet, for more involved work that still doesn't need its own page: a side sheet from 1024px (`size` `sm` 480, `md` 560, `lg` 640, `xl` 860px for a table), a bottom sheet below (grab handle, rounded top, 88% tall, always the full width). The title (`title-card`, with `description`, a `meta` line and the corner close) stays pinned while the body scrolls, with a hairline under it once it does; a `toolbar` (a search) pins under the title; the `footer` is pinned (right-aligned, except on a phone's bottom sheet, where its buttons share the width). `head` places the title block (a marker, a Pokémon's art on its tint through `pokemonSheetHead`, `headBleed` for edge to edge; on a bottom sheet it scrolls as a card), `titleHidden` when the body draws its own heading, `form` wraps header, body and footer in one form, `trigger`, `open`, `onOpenChange`, `onOpenChangeComplete`, `initialFocus` (the title by default), `finalFocus`. A body that scrolls and holds nothing to focus becomes one tab stop |
| `OverlayDialog`                                                              | `src/shared/components/overlay-dialog.tsx`                                     | The one dialog, for something quick (a name, a rule's details, a short form), centred at every width with the sheet's header, corner close, scrolling body and footer. `size` `sm` 384, `md` 448, `lg` 512, `xl` 720, `2xl` 880px; the same `title`, `description`, `head`, `footer`, `form` and focus props as the sheet; `fullScreenOnPhone` for a wide table or a wizard; `bare` (with `label`) for a dialog that draws its whole surface, such as New Play. A confirm that only asks yes or no stays an `AlertDialog`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| `DatePicker`                                                                 | `src/shared/components/date-picker.tsx`                                        | The one date field, for a calendar day ("YYYY-MM-DD") that may be empty: a select-look trigger (`label` names it, "Not set" while empty) that opens the `Calendar` in a popover from 1024px and in an `OverlaySheet` below, with Clear (`clearable`) and Today beside it. Picking a day closes it. `min`, `max`. Started on in Play settings is the only date field today; a new one uses this, never `type="date"` (the browser draws its own picker). Days go through `src/shared/utils/calendar-day.ts`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `PlayRow`                                                                    | `src/modules/mainline/shared/components/play-row.tsx`                          | One Play as a row inside a card or a sheet, the small form of the Plays list's card: the game's cover, the Play's name, a line that starts with its status and says what the row is about ("Arcanine · Lv. 59 · On the team", the game, the hours it took), and the arrow. Every list of Plays outside the Plays list: the species sheet, a Codex entry's In your Plays, a game's Your Plays, the Collection's sheets and Statistics' time                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `SettingsRow`                                                                | `src/shared/components/settings-row.tsx`                                       | v3 `.trow`: a setting's name, an optional line on what it means, and its control at the end (under the words on phones); rows are separated by space. App Settings and Play settings                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| `SettingsSwitchRow`                                                          | `src/shared/components/settings-switch-row.tsx`                                | A `SettingsRow` whose control is an on/off `Switch` named by the row's own words (Story and Collectibles tracking in Settings, New Play and Play settings)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `SettingsChoiceSection`                                                      | `src/shared/components/settings-choice-section.tsx`                            | A Settings card of one or more choices: the field that picks them, and `UnsavedChangesFooter` with Save and Cancel once they change; saves through one action and refreshes (Play settings' rules, tags, expansions and tracking; Settings' Look and feel and New Play defaults)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `UnsavedChangesFooter`                                                       | `src/shared/components/unsaved-changes-footer.tsx`                             | v3 `.set-foot`: shown only while its card has unsaved changes, flush along the bottom of a `DetailSectionCard`, with Cancel and Save (submits the form unless `onSave` is given). Play settings and the profile                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `NatureEffect`                                                               | `.../pokemon/components/nature-effect.tsx`                                     | What a nature does, in one line: the raised stat with a red up arrow and the lowered one with a blue down arrow, as short forms (ATK, DEF, SPA, SPD, SPE), or "Neutral" for Hardy, Docile, Serious, Bashful and Quirky. The `trailing` mark of every nature option (the roster editor and the Planner's slot sheet); `getNatureEffect` is its model                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `ItemIcon`                                                                   | `src/shared/components/item-icon.tsx`                                          | An item's picture: its sprite (`src`, from `getItemImageUrl`) or, when it has none or the sprite fails, a stand-in by `kind` (a Poké Ball, a box for a held item). The roster editor's Poké Ball select and held item field                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `MoveCategoryIcon`                                                           | `src/modules/reference/features/moves/components/move-category-icon.tsx`       | A move's category (Physical, Special, Status) as its HOME icon, named for screen readers and on hover; the word when the icon can't load. Every move row: the move picker and its field, the team panel and Codex's learnset                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| `SlotPicker`                                                                 | `src/shared/components/slot-picker.tsx`                                        | A team's slots as small squares, six to a row, each with its sprite and number; the picked one takes the selected tint and border, a previewed move marks the place it leaves in blue (`tone: "from"`), a slot that can't be picked is disabled with its reason. `groups` (a `label` such as "Team" or "Reserve" above each row set). The roster editor's Slot (twelve squares; a pick previews the move, which Save applies) and the Planner's slot sheet                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `PasswordInput`                                                              | `src/shared/components/password-input.tsx`                                     | A password field with a Show and Hide toggle, on `InputGroup`. Log in, Sign up, New password and Change password                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `PendingData`                                                                | `src/shared/components/pending-data.tsx`                                       | Where a v3 piece goes whose data Voydex doesn't have yet (see below): `block` for a section or card body (an optional quiet `children` preview and a `note`), `inline` for one value or control; drawn with `empty-slot`, labelled "Not in Voydex yet" by default                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| `StatTile`                                                                   | `src/shared/components/stat-tile.tsx`                                          | One figure, the same everywhere: the number in Baloo 2 24 and the blue of every count, its plain label under it and an optional line on what it means, on the inset fill (Home's trainer card, the Planner's Team check, a first Play's Statistics). `ground="band"` is white for a page's band and `size="lg"` with an `icon` is a page's headline figures (Statistics)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `TrainerCard`                                                                | `src/features/settings/components/trainer-card.tsx`                            | The trainer card (Home, You, Settings): a section `Card`, white and flat like every other, its colour in your disc alone, with your Pokémon icon on the disc (your initial until you pick one). On Settings it is the profile form                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `ProfileIconPicker`                                                          | `src/features/settings/components/profile-icon-picker.tsx`                     | The starters you can pick as your icon, as round discs: the picked one takes the selected tint and its border (as a team slot does) and tapping it again keeps it, since every trainer has an icon. Settings' trainer card and the trainer step. `AccountAvatar` draws the pick on the bars                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `FallbackImage`                                                              | `src/shared/components/fallback-image.tsx`                                     | Every Pokémon image: an `<img>` that, without an address or when it fails to load (even before hydration), shows what it pictures in the same box. `letter` (default) where the art sits in a container (an avatar, a card's art circle, a sticker, a portrait, a medallion, a tile); `badge` where it stands on its own (the meadow, an empty state's Pokémon, a profile's big art): a round `sticker` the art's size with the name inside, the letter alone under 56px; `standIn` replaces the letter (a badge's type icon)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `GameCover`                                                                  | `modules/reference/features/games/components/game-cover.tsx`                   | The one game cover: the box art, or the initials on the game colour when there is none or it fails; sizes `shelf` (the Codex card), `hero`, `header`, `dock`, `row` (a list of games: 40px tall, its true width, centred in a 48px slot so the names line up), `token`, and the carousel sizes `picker` and `pickerLarge`. In a carousel every cover stands the same height and takes its width from its box's shape, so the covers in one carousel never differ in height; with the game's `shape` (`square`, `landscape`, `portrait`, from its first platform) it holds that box on a quiet `surface-2` tint from the first paint and loads a copy sized for it through `next/image`; `eager` for covers in view when the shelf opens                                                                                                                                                                                                                                                                                                       |
| `GameShelfPicker`                                                            | `modules/reference/features/games/components/game-shelf-picker.tsx`            | v3's cover shelf, the cover picker for starting a Play (New Play; the Team Planner picks its game from a menu): every game in release order on one sideways row with generation marks to jump by, `coverSize` `md` or `lg`. A horizontal listbox: one tab stop, arrows, Home and End move, Enter or Space picks; the picked cover stands up with a check. It owns no background. Its row is a `Carousel`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `PageBand`                                                                   | `src/shared/components/page-band.tsx`                                          | The band that opens every page but Home: the head and, on a list, its toolbar and type dots, or a subject's hero, on the pale blue band (`band`), edge to edge under the bar through `page-band`, a short rounded foot, content in the page column. A list's browser renders it, taking the page's head as `head`. Outside the app the same band is the action red with white words (`tone="action"`): the front page's opening and the log-in pages' titles sit on it, under the bar, which there is part of the red (`AppNavbar` `onAction`: no pill, white words, a white V tile) on the band's darker stepped top (`action-deep`, as thin as the bar). The door is red, the app is quiet; the structure is the same                                                                                                                                                                                                                                                                                                                       |
| `SheetSection`                                                               | `src/shared/components/sheet-section.tsx`                                      | One part of a sheet or panel: the Baloo 2 heading with an `aside` word or an `action`, then its content (the roster's editor, the Planner's slot sheet and Team check, a species sheet, a battle report)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `OfferCard`                                                                  | `src/shared/components/offer-card.tsx`                                         | Something offered once to take or put aside (an unsaved Plan): words, an optional picture, the quiet button then the main one                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| `DockedBar`                                                                  | `src/shared/components/docked-bar.tsx`                                         | A page's band condensed: once the band scrolls away, a slim bar docks with a picture, the name and the page's own controls (a Play's tabs, a Pokémon entry's section index, the Team Planner's six slots and Save)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| `EditedMark`                                                                 | `src/shared/components/edited-mark.tsx`                                        | The dot beside a changed field's label in a form that saves on demand; the footer lists the changes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| `getBarLinkClassName`                                                        | `src/shared/components/bar-link.tsx`                                           | One link in a bar of sections (the top bar, the Codex trigger, a docked index): quiet words with a `gap-2` between them, the current one a plain white pill in the selected ink, the same size and weight as a hovered link                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `LogoMark`, `Logo`                                                           | `src/shared/components/brand/logo-mark.tsx`, `logo.tsx`                        | The "V" mark on a round red disc (round like the top bar and the avatar), a placeholder until the logo is designed. `Logo` adds the Baloo 2 "Voydex" word (`showText`, `markClassName`, `textClassName`); the top bar hides the word on narrow phones (`max-sm:hidden`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

**Pending data.** v3 draws some things Voydex has no data or backend for yet.
Every such piece is built and shows `PendingData` (or `CodexPendingValue`) in
its place, never an invented value, and carries a `TODO(v3-data)` comment
naming what it waits on. When that data lands, the marker and its comment go.
`grep -rn "TODO(v3-data)" src` lists them all; the open list, with the schema
each waits on, is under Known Gaps in [Project Status](../project-status.md).

Section grammar: a section's title is always on the wall, never inside the
card. A grid of cards has its `SectionHead` over the grid; a section of
content (text, rows, stamps) is `DetailSectionCard`, the head and one card
under it. What a card may hold is a name (a Play's, a Pokémon's, a rule's)
or a small label over one of its parts, never a section title.

The utilities in `app-utilities.css` carry the recipes features may need
without the component: `sticker` (a caught or picked tile's surface: its type's colour from
`--t`, a 3px white band and the small edge; override `--sticker-border` and
`--sticker-shadow`; `sticker-picked` rings a drop target in the blue.
Cards and open slots take the ring through their `target` option, and
`useSlotDrag` is the one drag and drop between slots), `card-frame`,
`card-face` and `card-window` (a collector card's frame, paler face and
light window, all from `--t`), `bubble` (a small mark's white band and soft shadow: corner marks and
your initial), `focus-ring` and `focus-ring-inset` (the one
keyboard ring, 3px of `focus`, lifting the focused element above its
siblings; inset for segments, joined buttons and an index in a scrolling
column), `moment-ring` and `moment-ring-small` (a
medallion's or badge stamp's white band, its ring in `--mr` and the soft
drop), `sticker-type-band` (a picked sticker's band in its type's colour),
`plain-card` (a reference card you don't own: white,
a thin `line` and the small edge) and `empty-slot` (the one open slot: 2.5px dashed
`dash`, no fill). Don't hand-roll any of them. `step-back` fades and greys
the art of what belongs to another game than the one picked (the other
version's exclusives, a game a Pokémon isn't in) while its words stay
readable; it comes back on hover or focus. A detail panel that
follows the scroll beside a longer list (the roster panel) takes
`sticky-panel` with `useStickyPanel`: it
sticks under the docked bar when it fits, and when it is taller than the
screen it scrolls with the page and sticks at its bottom, never scrolling on
its own. A navigation list that follows the scroll (Play settings' menu)
takes `sticky-column`: it stops at the screen's height,
scrolls on its own, and fades at the bottom while there is more.

**Public art.** The public pages (the front page, Log in and the
other auth pages, not found) are global features and can't import a module,
so their routes inject the art. One
contract, `src/config/public-art.ts`, types it; `publicArt` from
`@/modules/reference/public-art` fills `PublicArt` (Pokémon renders,
`GameCover`, a game's colour, `PokemonCard`). The front page also takes
`publicPlayArt` from `@/modules/mainline/public-play-art`, which fills
`PublicPlayArt` with the real Mainline pieces (`RecordRow`, `BadgeStamp`)
for the example Play, a Pokémon Red run.
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
  Every sheet is an `OverlaySheet` and every dialog an `OverlayDialog`; only
  a yes-or-no confirm is an `AlertDialog`. `npm run design:check` fails on a
  sheet or dialog built on the primitive's content by hand.
- **Sheets**: below 1024px every sheet opens from the bottom
  (`useBottomSheetLayout`); from 1024px it opens as a side sheet. A dialog
  stays centred at every width. Every overlay has the same header (the
  title, a description, no eyebrow line above it), pinned while the body
  scrolls, and closes from the same `soft` `icon-sm` button in its top-right
  corner (16px in), confirms included. Every overlay also closes on Escape
  or a tap outside; for a confirm (delete, remove, mark incomplete,
  `AlertDialog`) that means "no". Tab stays inside an open overlay, wrapping
  from its last control to its first in the key event itself
  (`useFocusWrap`), so even held-down keys never reach the page behind. A
  long one scrolls its body between the header and its pinned buttons.
- **Menus and selects** share one compact 44px row; the pick takes the
  selected tint and a check, and two-line rows are only for an option that
  needs its description.
- **The collector card only for what is yours.** A Plan's team is yours, so
  its six are collector cards, as a Play's team. In the pool under it a
  planned Pokémon is the picked `PokemonCard` (its type's tint in a ring,
  its slot in the corner dot), or sits on its type's tint
  (`pokemonSheetHead` `planned`). The picked one looks the same everywhere:
  its type's colour round it (`picked` on a `PokemonCard`, `selected` on a
  collector card).
- **Every page opens on a band**: the pale blue `PageBand`, in the app
  (Home included: its band holds your trainer card, and a Play too) and on
  the site (the front page, Log in), with round bottom corners (2026-11-20),
  under the red top bar: the V tile and
  the name, the sections as white words (the current one a white pill, the
  same size and weight as a hovered link), and your utilities. The app's
  one loading screen (`LoadingSteps`) stands alone on the wall: the V, a
  title, a progress bar with one part per step (filled as each ends, the
  current one filling or pulsing), "Step n of N: what it does" under it and
  a line for its detail that is always there, so nothing moves.
- Before adding or materially styling a recurring pattern, inventory the
  primitives and the components above and reuse the closest one. Add a variant
  only for a materially different contract.
- Fields take the shared field surface; selected options take `bg-select-soft
text-select-ink` (a mode switch or scope picker takes `bg-calm`); tips that explain a figure use `ExplanatoryTip`, built from the tip parts; feedback
  after an action is a toast, not an inline banner.
- Use the shared row-interaction variants for repeated data rows. Static
  timelines and prose lists don't get hover styling.
- Tables and charts share one hover focus (`useHoverFocus` with
  `getHoverFocusClassName` from `src/shared/utils/hover-focus.ts`): hovering a
  part, or reaching it by keyboard, keeps it as it is and fades the rest to
  40%; a tap on touch never fades anything. A chart part and its card pick
  each other out (`isOutsideKeyFocus`, Statistics' "Where your time went",
  Move coverage); a matrix keeps the hovered cell's whole row and column
  (`isOutsideGridFocus`, Defensive matchups). No table keeps highlight
  classes of its own.
- No hairlines between rows or sections inside content: space separates
  them, and where a group needs to stand apart it takes a soft background
  (`bg-surface-2`) instead of a rule. Lines stay only where they do a job:
  table rows, a sheet's or dialog's fixed header and footer, the app bars,
  menu separators and the hairlines between a toolbar's groups.
- A moment is always the moment card (`RecordRow`), under a heading on the wall: History, a Play's Latest moments and Home's draw the same card.
  Story is a roadmap (`StoryRoadmap` in
  `.../progress-story/sections/route/`): each chapter its own card
  (`StoryChapterCard`) with its milestones as stops down one vertical line
  (solid in the progress tint behind you, dashed ahead, dotted to an
  optional stop) and the places on the way between them as small quiet
  dots. Every chapter folds from its head (Expand / Collapse); only the one
  you're in starts open, wearing a ring, and a folded one shows its
  milestones as a strip of small medallions. A stop is its `MilestoneMarker`
  (`lg`) with its name and one quiet line beside it (its place, then where
  it stands); a recorded one is a sticker in its badge's type with what you
  got there on its right (the Pokémon you chose, the team then); only the
  stickers lift on hover; stops still ahead sink back (a grey
  ring on `bg-surface-2`, a quieter name that keeps 4.5:1), and the one open
  wears a `ring-select-ink` ring. From 1024px the open stop or place shows
  in a sticky panel beside the route (`useStickyPanel`, as Team's roster)
  and a battle opens in a sheet over it; below, everything opens in an
  `OverlaySheet`.
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
  after them in `sr-only` text (a collector card's `detail`, a card link's `detail`),
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
Analysis; Story as one route with its battles in each milestone's detail,
Pokédex, Collectibles, History and
Settings), the Team Planner and My Plans, Statistics, Collection, You,
Account settings, the Codex (Pokémon list and entry, Games, game
pages and Pokédexes), the front page, Log in, Forgot password, New
password, Privacy and Terms, and the not-found and error
pages. Old parts were deleted as each screen moved over (Team History became
History's Team filter); `npm run design:check` fails on any reference to the
retired journal design. Where v3 needs data Voydex doesn't have, the screen
shows `PendingData` (see above).

Phase 4 (2026-10-17) rebuilt every component family on shared pieces;
the Center design (2026-11-20, chosen in the Design Lab on copies of the
real pages) set today's look: a red bar, a dotted wall, flat sections, a
small edge on what you can open, one outlined look for controls and
Pokémon cards in their type's colour. Sheets
open from the bottom below 1024px, toolbars and form rows line up at 48px,
every page opens on a band, and the browser tests run every axe rule.
`npm run design:check` also fails on an edge or a band drawn by hand, a
card's line typed by hand (`shadow-card`, `shadow-open`) included.

Dark mode, Skeletons and the real logo are deliberately not scheduled.
