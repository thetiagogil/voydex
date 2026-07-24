# Codex Pokémon V1 Functional Contract

This document records the accepted V1 direction for Pokémon Browse and Pokémon
Detail. It refines the implemented Codex foundation without making every current
composition a visual constraint. The Browse field-guide treatment is selected;
Detail spacing, selector treatment, and responsive composition remain part of a
later bounded visual pass.

## Current Implementation Review

**Reviewed:** 2026-07-14  
**Outcome:** strong foundation; functional refinement required before visual
standardization

The current implementation already establishes useful patterns:

- public Pokémon browsing and stable game-scoped detail routes;
- a visually clear image-led catalogue on desktop;
- searchable species switching grouped by contextual Pokédex;
- game options grouped by generation;
- direct artwork and Shiny switching;
- game-aware types, stats, abilities, learnsets, availability, forms, and
  evolution information;
- working search, filters, result counts, filtered empty states, and detail
  menus.

The review also found several V1 inconsistencies:

- Browse selects the latest available Pokémon attributes while its result link
  can open the first game of the species' introductory generation. A Clefairy
  result can therefore show Fairy and open Pokémon Red, whose correct detail
  context shows Normal.
- Browse has no always-explicit exact game context even though type, valid form,
  availability, artwork, and detail destination can depend on it.
- Catalogue state is client-only, and automatic incremental preloading makes
  long-list position and return behavior less predictable.
- The mobile one-column square-card treatment uses too much vertical space for
  a catalogue of more than one thousand species.
- Detail lacks an independent semantic page heading; its species selector is
  currently carrying visual identity that should not replace the `h1`.
- Several detail section labels and learnset groups are not yet represented by
  the semantic heading or table structure their hierarchy implies.
- Optional unseeded facts can appear as `Unknown` even when omitting the field
  would be more useful.
- The reference experience has no V1 Mainline handoff yet.

These are application-query, interaction, and information-architecture issues.
The reviewed reference model already contains the game-aware facts needed for
the accepted V1 correction; no new database gap is justified by this review.

## Shared Exact-Game Context

Pokémon Browse and Detail use one explicit exact **Codex Game Context**. It is
the scope for every game-dependent fact, not a casual result filter.

Resolve that context in this order:

1. the exact game in the current route or validated browse URL state;
2. the last exact game selected during the current Codex browser session;
3. a deterministic latest supported seeded V1 Mainline game.

The selected game must always remain visible. V1 does not require an account
preference or database write for this choice. A later version may remember it
across sessions after real use shows that the convenience is valuable.

The active context governs:

- generation-era species attributes and type;
- persistent forms valid or meaningful in that game;
- the card's reference artwork;
- availability and content-method labels;
- Pokédex placement where applicable;
- the exact detail route;
- stats, abilities, evolution, matchups, and learnset mechanics on Detail;
- the game, species, form, and availability intent passed to Mainline.

Changing game or form must recompute every dependent fact together. The UI must
never combine latest-era card facts with an older game destination.

## C-01 — Pokémon Browse

**Status:** V1 functional contract accepted; field-guide browse treatment selected

### Purpose

Provide a fast, public, species-led reference catalogue that helps a user find
Pokémon in a known exact game context and open the corresponding detail. It is
not a personal Collection view and does not perform Mainline mutations.

### Route And Return Behavior

- Canonical route: `/codex/pokemon`.
- Search, game context, filters, sort, and loaded-result position are
  URL-backed so refresh, share, back, and forward preserve the view.
- Opening a result uses `/codex/pokemon/[gameSlug]/[speciesSlug]` with the
  exact active game.
- Returning from Detail restores Browse criteria, result position, and useful
  focus instead of restarting the catalogue.

### Result Scope

The base catalogue includes species introduced no later than the active game's
generation. Availability remains an explicit result fact and filter: a user
may still inspect an unavailable species in an older or otherwise constrained
game context without the interface pretending that it can be obtained there.

Each result represents one species. Search may also match applicable persistent
form names, but the browse grid does not duplicate one species into many cards.

### Controls

Keep these controls visible:

- Search.
- Exact Game context.
- Type.
- Sort.

Place these in `More filters`:

- Introduced generation.
- Category: ordinary, Legendary, Mythical, or Baby.
- Availability in the selected game.

Search matches species name, National Pokédex number, and persistent form names
applicable to the active context. Sort defaults to National Pokédex number and
may also offer Name and Introduced generation. A non-National sort may use a
flat result sequence instead of forcing generation headings that no longer
match the selected order.

Used, unused, planned, targeted, and never-used filters or overlays are outside
V1. They remain future personalization ideas; personal usage belongs primarily
to Collection.

### Result Card

Use one equal image-led card per species. It should preserve:

- game-context artwork or a deliberate missing-image fallback;
- National Pokédex number and species name;
- game-context type identity;
- one concise alternate-form or availability cue only when it helps explain
  the current scope.

The whole result opens Detail. Do not add inline Plan, Play, Collection, or
overflow actions to the card.

Use a quiet specimen-card composition within the shared journal page. Artwork
sits on a restrained neutral field with only a soft type-colored glow; do not
place species over realistic type environments or a dark poster gradient. Keep
artwork, number, name, and type markers on one continuous card surface without
a divider between portrait and identity. Place the neutral named type markers
beside the number-and-name block; their small colored icon keeps color as an
accent rather than the card's primary surface.

### Loading, Empty, Error, And Partial States

- Initial load uses the shared page-level Spinner, never Skeletons.
- Incremental loading continues automatically in small batches shortly before
  the user reaches the result boundary. Keep the current results visible while
  appending and provide a manual retry or compatibility fallback only when
  automatic observation is unavailable or incremental work fails.
- A filtered empty state names the active criteria in plain language and offers
  one `Clear filters` action.
- A catalogue-level error preserves valid URL criteria and offers retry.
- An incremental error keeps already loaded results visible and retries only
  the failed segment.
- Missing image or optional metadata affects only that result. Do not remove a
  valid species because one presentational fact is absent.

### Responsive And Accessibility Behavior

- Use several compact columns on desktop and target two useful columns on
  common phone widths. Fall back to one only when viewport or text scaling
  requires it.
- Filters collapse without hiding the exact active game.
- Browse has one `h1`. Generation groups use `h2`, and card titles use the
  correct nested heading level rather than becoming sibling `h2` elements.
- Every filter has a persistent accessible label and keyboard behavior.
- Result count changes should be announced after a committed filter/search
  update, not on every keystroke.
- Type and availability remain understandable without color alone.

The selected responsive grid uses two compact cards at common phone widths,
three at medium widths, and four within the wide journal. This visual direction
is implemented independently from the still-pending exact-game and URL-state
corrections described above.

## C-02 — Pokémon Detail

**Status:** V1 functional contract accepted; current visual organization selected

### Purpose

Explain one Pokémon accurately in one exact game, then offer one deliberate
entry into relevant Mainline workflows. Detail remains a public reference page
and never owns user gameplay data.

### Route And Identity

- Canonical route: `/codex/pokemon/[gameSlug]/[speciesSlug]`.
- A compatibility species-only route uses the same deterministic game-context
  resolver and redirects to the canonical route.
- The page has an independent semantic heading such as `#0001 Bulbasaur`.
  The searchable species switcher is a navigation control, not the page title.
- Exact game and current persistent form remain visible beside identity.
- Switching game or form updates the canonical URL and recomputes every
  scope-dependent section atomically.

### Context Selectors

Retain the current strong species-switcher idea: searchable, image-supported,
and grouped by a named Pokédex when available. The list may also include other
reference-supported species for the current game's generation. Switching
species retains the exact active game; it must not silently choose a different
game merely to make a result available.

The exact Game selector is a prominent scope control with options grouped by
generation. The current generation-oriented treatment is a useful reference,
but the final visual control must keep the exact game name obvious on desktop
and mobile rather than showing only a Roman numeral.

Show a form selector only when more than one persistent reference form is valid
or meaningful in the current context. Temporary battle states and cosmetic
variants do not overload this selector. Shiny remains a direct artwork toggle
because it changes presentation, not reference scope.

### Information Hierarchy

The selected visual implementation preserves the established composition:

1. Compact species selection and generation-grouped game choices remain in the
   top reference row.
2. Portrait, optional persistent Forms, and Evolution Line remain in the left
   stack.
3. Core Data, Battle Stats, Type Matchups, supported Abilities, Pokédex,
   Availability, and Learnsets remain in that order in the right stack.

Evolution transitions use a quiet connector line ending in an arrowhead, with
compact level or method conditions centered above the connector when present.

This placement is a constraint for visual restyling. Future functional-contract
work such as a semantic page heading or one Mainline entry must integrate
without casually moving the reference sections.

Optional facts with no trustworthy value are omitted instead of rendered as a
large `Unknown` field. V1 does not require height, weight, Pokédex prose, or an
expanded breeding/training encyclopedia merely to fill space.

Every game-scoped mechanic is governed by the shared exact-game capability
profile. A mechanic unsupported by the selected game, such as Abilities in
Generations I and II, is omitted from Detail and game Pokédex surfaces rather
than presented as missing Pokémon data. Unknown reference support remains
distinct from an unsupported mechanic.

A compact in-page section navigator may be used if realistic mobile and
desktop testing shows that the page is too long. Do not create stateful detail
sub-tabs that hide reference sections or complicate deep linking in V1.

### Learnsets

Learnsets retain game-correct move mechanics and support search plus method
filtering. Use a semantic table on wide screens and clearly labelled stacked
rows on narrow screens. Preserve method, level or acquisition context, type,
category, power, accuracy, and other mechanics only when the selected game
meaningfully supplies them.

### `Use In Mainline`

Expose one `Use in Mainline` entry rather than several competing header
buttons. Its branches are:

- `Add to Plan`: choose an eligible existing Plan or continue to Create Plan.
- `Add to Play`: choose an eligible Play and Active or Reserve destination.
- `Check in my Plays`: choose a Play and inspect availability without writing.
- `View my history`: open the species-level Collection Pokémon Detail.

`Create Plan` is a branch of `Add to Plan`; it is not a second top-level
`Start Plan with Pokémon` action. The handoff carries exact game, species,
selected form, availability/content context, and intended action. Mainline owns
authentication, destination eligibility, validation, warnings, and mutation.

For an anonymous user, the same entry explains that sign-in is required and
preserves the complete intent through authentication. Cancellation returns to
the same Detail context. Codex never changes a Plan or Team directly.

### Loading, Empty, Error, And Partial States

- Initial load uses the shared page-level Spinner, never Skeletons.
- A missing species or game resolves to a clear not-found state; an invalid
  combination never silently substitutes unrelated data.
- One failed secondary section keeps identity and unaffected sections visible
  and offers a local retry where useful.
- A missing optional fact is omitted. A materially expected but unavailable
  reference section is labelled `Not recorded for this game` only when that
  distinction helps the user.
- Mainline handoff failures preserve selected context and provide a safe retry
  or return to Detail without a partial user-data write.

### Responsive And Accessibility Behavior

- Identity, exact game, form, and primary Mainline entry remain understandable
  before long reference sections on every viewport.
- Use real `h1`, `h2`, and nested heading semantics independent of card styling.
- Species, game, and form selectors support keyboard search, selection, current
  value semantics, and visible focus.
- Shiny has a persistent accessible label.
- Type matchup multipliers and state are readable without color alone.
- Learnset headers and cells preserve their relationships on desktop and
  labelled-row equivalents on mobile.

## Data And Ownership Summary

- Static game, species, form, type, stats, abilities, evolution, availability,
  Pokédex, and learnset facts remain owned by the `reference` schema.
- The `reference` module also owns the exact-game mechanic capability profile
  consumed by Codex and Mainline.
- Browse and Detail are public read models over that reference truth.
- Browse URL state and current-session game context are application state, not
  new user-owned database records.
- Codex passes exact context and intent to Mainline but owns no Plan, Play,
  Team, or Collection mutation.
- Existing Mainline handoff gaps remain tracked by their owning requirements;
  this review creates no new reference-schema gap.

## Deferred Beyond V1

- User-specific used, planned, targeted, and never-used browse overlays.
- Cross-session or cross-device persistence of the last Codex game.
- Compare with Plan, mark as target, and automated team-fit recommendations.
- Pokédex entry prose and richer breeding/training facts.
- Structured encounter-location detail beyond the current trustworthy
  availability model.
- A dedicated server-side browse projection or cache unless profiling shows
  that URL-backed filtered pagination over existing reference facts is too
  expensive.

## Visual Validation Questions

The later coherent UI draft should validate only composition choices that this
contract intentionally leaves open:

- the exact desktop and mobile Game selector treatment;
- card aspect ratio, density, and two-column phone behavior;
- whether generation grouping still helps under each sort;
- the final Detail column order at different widths;
- whether a compact in-page section navigator is necessary;
- the presentation of the single `Use in Mainline` entry and destination
  selection flow.
