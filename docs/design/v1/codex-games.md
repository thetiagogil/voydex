# Codex Games V1 Functional Contract

This document records the accepted V1 direction for Games Browse, Game Detail,
Game Pokédex, and the Game-origin Mainline handoffs. It refines the implemented
Codex foundation without making the current composition a visual constraint.
Exact spacing, card styling, selector treatment, and responsive composition
remain part of the later coherent UI draft.

## Current Implementation Review

**Reviewed:** 2026-07-14  
**Outcome:** strong cover-led foundation; context, truthfulness, handoff, and
responsive refinement required

The current implementation already establishes useful patterns:

- public game browsing and stable Game Detail and Game Pokédex routes;
- distinctive cover art and clear generation grouping;
- working Search, Generation, Region, and Game Type filters;
- a strong Game Detail identity region with cover, name, release, region,
  generation, platform, and Pokédex links;
- a rich exact-game Pokédex table with local number, species, types, abilities,
  and game-correct base stats;
- working named-Pokédex switching where multiple seeded Pokédexes are loaded;
- exact-game Pokémon Detail destinations from Game Pokédex rows.

The review also found several V1 inconsistencies:

- Games Browse filter state is client-only, so refresh, sharing, and return do
  not preserve the selected catalogue.
- Four equally prominent filter fields and near-viewport-width mobile cards use
  too much space for a catalogue of thirty-eight games.
- Generation groups and card titles currently share the same heading level.
- Game Detail describes the generic game type rather than presenting a concise,
  trustworthy game reference summary.
- `Available Pokémon` currently reports the largest listed Pokédex size rather
  than the number of species available in the game.
- Game Detail loads only Pokédexes attached directly to the base version group,
  so seeded DLC Pokédexes such as Kitakami and Blueberry are omitted.
- Related games are inferred too broadly from generation or region, which can
  present a nearby title without explaining a meaningful relationship.
- Game Detail offers only Pokémon browsing and does not yet expose the accepted
  Start Play, Create Plan, or Add to Game List actions.
- Game Pokédex has no visible semantic page heading, and its named-Pokédex
  selector is visually secondary even though the selected Pokédex defines the
  complete result set.
- The current 1,040-pixel comparison table sits inside a 358-pixel mobile
  scroller, so a phone user cannot identify and compare a row without
  horizontal navigation.
- Game Pokédex search and Type state are client-only, and the page renders the
  complete selected Pokédex at once.

The missing DLC Pokédexes and false availability summary are application
read-model problems rather than missing reference schema. Existing content
scopes, Pokédex definitions, membership, and availability facts can support the
accepted correction. No new reference-schema gap is justified by this review.

## Shared Game Context

Every Game surface uses one exact game as the stable reference context. Its
canonical slug appears in the route and governs:

- cover, release, generation, region, platform, and game-type facts;
- base and optional-content scopes;
- named Pokédexes and their entries;
- resolved species availability;
- exact-game Pokémon Detail destinations;
- the game intent passed to Mainline.

Codex never silently substitutes a paired edition, remake, related game, or
newer generation to fill a missing fact. Missing optional information is
omitted or isolated honestly.

## C-03 — Games Browse

**Status:** V1 functional contract accepted; field-guide browse treatment selected

### Purpose

Provide a fast, public catalogue of the traditional mainline and Legends-style
games supported by Voydex. It helps a user recognize a release, open its
reference page, and understand the product's game coverage without turning the
catalogue into a historical timeline or a Mainline management surface.

### Route And Return Behavior

- Canonical route: `/codex/games`.
- Search and filters are URL-backed so refresh, share, back, and forward retain
  the selected catalogue.
- Opening a result uses `/codex/games/[gameSlug]`.
- Returning from Detail restores criteria, scroll, and useful result focus.
- The thirty-eight-game V1 catalogue does not need pagination or infinite
  loading. Reconsider only if supported game families expand materially.

### Catalogue Scope And Order

Include one result for every supported exact game release. Group results by
generation and keep a deterministic release-aware order inside each group.
V1 does not add a Sort control: the canonical game order is more useful than
several equivalent catalogue permutations.

### Controls

Keep these controls visible:

- Search.
- Generation.
- Game type, using clear user-facing labels for the existing game-type facts.

Place Region and Platform in `More filters`. Search matches game name and may
also match seeded region or platform terms. Active secondary filters remain
visible as removable criteria after their surface closes.

Games Browse contains no personal status, Plan, Play, or Game List filter in
V1. Those states belong to Mainline.

### Result Card

Use one equal cover-led card per exact game. It should preserve:

- cover art or a deliberate missing-cover fallback;
- exact game name;
- release year;
- region;
- one concise game-type label when it adds useful distinction.

The whole card opens Game Detail. Do not add inline Start Play, Create Plan,
Game List, or overflow actions to catalogue cards.

Use the same compact field-guide card rhythm as Pokémon Browse within the shared
journal page. Preserve the full cover image on a transparent `4:3` artwork stage
rather than cropping it beneath a dark poster overlay. Keep release year and
region above the exact serif game name, with a concise game-type marker aligned
beside that identity block. Game color is a restrained border and marker accent,
not the card background or the only source of meaning.

### Loading, Empty, Error, And Partial States

- Initial load uses the shared page-level Spinner, never Skeletons.
- A filtered empty state names the active criteria and offers one
  `Clear filters` action.
- A catalogue-level error preserves validated URL criteria and offers retry.
- Missing cover or optional metadata affects only that card.

### Responsive And Accessibility Behavior

- Use several cover-led columns on wide screens and target two useful columns
  on common phone widths. Fall back to one only when viewport or text scaling
  requires it.
- The filter composition must not force four full-width fields before the first
  result on a phone.
- Browse has one `h1`. Generation groups use `h2`, and card titles use the
  correct nested heading level.
- Every card has one clear link destination, visible keyboard focus, and an
  accessible name that does not depend on cover art.
- Generation, region, and game type remain understandable without color.

The selected responsive grid uses two cover-led cards at common phone widths,
three at medium widths, and four within the wide journal. Card proportions,
information placement, elevation, and interaction behavior mirror Pokémon
Browse while preserving each cover's full aspect ratio within the artwork stage.

## C-04 — Game Detail

**Status:** V1 functional contract accepted; current reference-led visual
checkpoint implemented

### Purpose

Explain one supported game, expose its base and optional reference content, and
provide the clearest Game-origin entrance into Mainline. Detail is public and
reference-led; Mainline owns every personal action.

### Production Visual Checkpoint

- Preserve the existing reading order and ownership: return navigation, exact
  game cover and identity, structured facts and reference action, named
  Pokédexes, then related releases.
- Use the same light journal-card grammar as Pokémon Detail: quiet paper
  surfaces, restrained rings, serif editorial headings, and forest-primary
  actions. Game color remains a supporting cover or interaction accent rather
  than the dominant surface color.
- Present Platforms, Available Pokémon, and Game type as compact labelled facts
  without icon tiles. Do not retain generic game-type prose as an editorial
  game synopsis.
- Keep named Pokédexes as flat divided destination rows in the document flow;
  do not nest each row in another Card or introduce a section-level vertical
  scroller.
- Show related releases as compact field-guide cards with complete uncropped
  cover art, a visible title, and an accessible whole-card destination.

### Route And Identity

- Canonical route: `/codex/games/[gameSlug]`.
- The page has an independent semantic `h1` for the exact game.
- Cover, release year, generation, region, platform, and game type remain
  compact identity facts.
- Do not use generic game-type prose as if it were a game-specific synopsis.
  V1 may remain structured and concise until trustworthy editorial summaries
  are deliberately authored.

### Action Hierarchy

Game Detail has one clear primary action:

- `Start a Play` is primary because an exact game is sufficient context for a
  concrete adventure.

Supporting Mainline actions are:

- `Create a Plan` for a reusable intended team;
- `Add to Game List` for lightweight Want to Play, Planned, Playing,
  Completed, or Skipped intent.

Reference navigation remains separate from this action cluster. `Browse
Pokémon` and each named Pokédex link open Codex reference surfaces rather than
competing as personal mutations.

### Information Hierarchy

Use this stable reading order while leaving exact composition for visual
validation:

1. Exact game identity, cover, structured facts, and Mainline actions.
2. Base game and optional-content scopes that explain what the reference data
   includes.
3. Named Pokédexes grouped under their owning base or optional-content scope.
4. Exact-game Pokémon browsing and a truthful availability summary when the
   source coverage supports one.
5. Trustworthy related releases.

A named Pokédex result shows its name, owning content scope when relevant,
entry count, and only a completion or browse role already supported by the
reference contract. It opens
`/codex/games/[gameSlug]/pokedexes/[pokedexSlug]`.

### Availability And Related Releases

`Available species` means distinct species supported by the resolved
game/content availability model. It must never mean the maximum size of one
listed Pokédex. If the availability projection is incomplete or cannot explain
its scope, omit the aggregate and retain the named Pokédex counts instead.

Related releases must have a trustworthy, explainable relationship. V1 may
derive a paired edition from the same version group and may show another
relationship only when current reference facts establish it reliably. Do not
fill the section with games that merely share a generation or region. Omit the
section when no reliable relationship exists.

### Loading, Empty, Error, And Partial States

- Initial load uses the shared page-level Spinner.
- An unsupported slug receives a clear not-found state without substituting a
  different game.
- A failed secondary section preserves game identity and valid actions and
  offers a local retry where useful.
- A game with no seeded optional content simply omits that group.
- A missing cover or optional fact uses a local fallback rather than blocking
  the page.
- No Skeletons appear in V1.

### Responsive And Accessibility Behavior

- Exact identity and the primary action remain understandable before the long
  content list on every viewport.
- Mobile may stack cover, identity, and actions, but it must expose the named
  Pokédex section without a near-empty hero consuming the initial experience.
- Use semantic section headings and links with relationship or content-scope
  context in their accessible names.
- Mainline actions remain distinct from reference links and communicate their
  signed-in requirement before navigation.

## C-05 — Game Pokédex

**Status:** V1 functional contract accepted; selector and responsive visual
validation pending

### Purpose

Browse one named Pokédex inside one exact game, compare useful game-correct
facts, and open the exact-game Pokémon Detail. The selected named Pokédex is
the page's primary scope, not a hidden secondary filter.

### Route And Context

- Canonical route:
  `/codex/games/[gameSlug]/pokedexes/[pokedexSlug]`.
- The page has one semantic `h1` for the named Pokédex and keeps the exact game
  visible beside or immediately above it.
- An explicit return opens the owning Game Detail.
- Invalid game/Pokédex combinations never fall back to an unrelated Pokédex.
- Search, Type, optional Sort, and loaded-result position are URL-backed.

### Named-Pokédex Selector

Make the named-Pokédex selector a prominent page-scope control. Group options
by Base game and each applicable optional-content scope so Paldea, Kitakami,
and Blueberry remain understandable as related but distinct datasets. A game
with only one applicable Pokédex still shows that name as stable page context;
it does not need an inactive dropdown.

The final visual may use a select, compact rail, or another responsive scope
pattern, but the control must:

- keep the active named Pokédex obvious without opening a menu;
- expose all applicable base and DLC Pokédexes;
- scale without competing with species results;
- support keyboard selection and clear current-value semantics;
- preserve valid Search, Type, and Sort state when switching scope, while
  resetting an invalid loaded position.

### Controls And Ordering

Keep Search and Type visible. Search matches species name, local Pokédex
number, National Pokédex number, and game-applicable ability name. Default
ordering follows local Pokédex number. Optional Sort may offer Name and
National number, but V1 does not require stat-column sorting or a dense advanced
filter system.

### Result Presentation

On wide screens, preserve a semantic comparison table with:

- local Pokédex number;
- sprite or missing-art fallback;
- species name and National number;
- exact-game types;
- exact-game abilities;
- exact-game base stats.

The species name is an explicit link to
`/codex/pokemon/[gameSlug]/[speciesSlug]`. Whole-row pointer affordance may
support convenience, but table semantics and keyboard behavior must not turn
every cell into an ambiguous link.

On narrow screens, use compact stacked species rows or cards instead of making
the wide comparison table the primary experience. Preserve local number,
sprite, species, National number, and type in the scan layer. Abilities and
stats may become labelled supporting facts or defer to Pokémon Detail; a user
must never need horizontal scrolling merely to identify or open a species.

### Loading, Empty, Error, And Partial States

- Initial load uses the shared page-level Spinner, never Skeletons.
- Use explicit `Load more` for large Pokédexes. Search and filters apply to the
  complete selected Pokédex rather than only the loaded segment.
- A filtered empty state names the selected Pokédex and offers
  `Clear filters`.
- Incremental failure keeps loaded rows visible and retries only the failed
  segment.
- Missing artwork, ability, or another optional fact affects only that row and
  never removes valid membership.
- A partially unavailable secondary column keeps the core species list useful.

### Responsive And Accessibility Behavior

- Use a real page `h1`, semantic section labels, and one caption or equivalent
  description for the desktop comparison table.
- Column headers retain their relationships to cells; stacked mobile rows use
  explicit labels for any supporting facts.
- Types and other states remain understandable without color alone.
- Search, Type, selector, rows, and Load more preserve visible focus and logical
  keyboard order.
- The document itself must not scroll horizontally at supported V1 widths.

## C-06 — Game-Origin Mainline Handoffs

**Status:** V1 functional contract accepted; visual validation pending

### Shared Authentication And Resumption

Game Detail remains public. Choosing a Mainline action while signed out opens
Login with the exact game, intended branch, originating Detail URL, and any
validated continuation data preserved. Successful authentication resumes the
chosen flow rather than opening a generic Dashboard. Cancellation, expired
intent, or validation failure returns safely to the same Game Detail.

All protected continuation data is validated server-side. An arbitrary return
URL or stale game identifier never becomes an open redirect or bypasses
Mainline ownership checks.

### Start A Play

- Continue to the concise Mainline Create Play flow with the exact game fixed
  as source context.
- Collect Play identity, lifecycle, and game-aware completion goal through the
  accepted Create Play contract.
- Do not create a Play merely by pressing the Codex button.
- Success opens the new Play Overview. Cancellation returns to the same Game
  Detail without a partial Play.

### Create A Plan

- Continue to the concise Mainline Create Plan flow with the exact game fixed
  as source context.
- Optional content remains editable only where applicable to that game.
- Success creates one Draft and opens Plan Detail.
- Duplicate submission, stale content scope, authentication loss, or a failed
  multi-table creation leaves no partial Plan or optional-content state.

### Add To Game List

- Use a focused confirmation surface with the exact game, one status, and an
  optional note.
- The default status is `Want to Play` unless a current intent already exists.
- If the game is already in Game List, show and edit that existing row rather
  than creating a duplicate or reporting a false error.
- Success may leave the user on Game Detail with a clear confirmation and one
  link to Game List. It does not create a Plan or Play and never infers status
  from those concrete records.

### Pending, Conflict, Success, And Focus

- Keep the originating game and selected action visible throughout the handoff.
- Disable only the submitted action while pending and prevent duplicate
  creation.
- Validation errors remain next to the relevant field and preserve entered
  values.
- A full-page error is reserved for loss of the source or authorization
  context; recoverable writes remain focused.
- On success, move focus to the confirmation or destination heading.
- Dialogs may become full-screen sheets on narrow viewports, but the interaction
  order and escape/cancel behavior remain equivalent.

## Data And Ownership Summary

- Static game, content-scope, Pokédex, entry, availability, species, type,
  ability, stat, relationship, and artwork facts remain owned by `reference`.
- Games Browse, Game Detail, and Game Pokédex are public read models.
- Catalogue and Game Pokédex URL state are application state, not user-owned
  database truth.
- Mainline owns authentication, Play creation, Plan creation, Game List writes,
  destination validation, and every personal mutation.
- Existing reference facts can support base and DLC Pokédex inclusion and a
  truthful availability summary; the current query must be corrected rather
  than the schema expanded.
- Contextual Draft Plan creation remains covered by the existing atomic
  creation gap. Game List is already supported by its owner-scoped model.

## Deferred Beyond V1

- Game-specific editorial synopses, feature histories, and long-form guides.
- Explicit typed relationships for remakes, sequels, enhanced editions, and
  other release lineages beyond relationships current data can prove.
- Personal Plan, Play, or Game List overlays on public catalogue cards.
- Stat-column sorting, configurable columns, and a user-selectable table/card
  mode for Game Pokédex.
- A dedicated Game Pokédex projection, virtualization, or cache unless
  profiling the accepted paginated read proves that it is needed.
- Cross-platform rerelease and service-era availability distinctions beyond the
  current canonical game/content model.

## Visual Validation Questions

The later coherent UI draft should validate only composition choices that this
contract intentionally leaves open:

- cover-card ratio and two-column phone density on Games Browse;
- the final visible-versus-secondary filter composition;
- the balance between Game Detail identity, Mainline actions, and reference
  content on desktop and mobile;
- the prominent named-Pokédex selector pattern across one, several, and DLC
  scopes;
- the mobile Game Pokédex row and which comparison facts remain in its scan
  layer;
- whether Game List confirmation is best presented as a dialog, sheet, or
  compact inline transition at each viewport.
