# Backlog

These features are accepted product directions but are not immediate implementation targets.

## Recording Contract

Nothing leaves V1 by disappearing from the documentation. Every deferred
product, design, application, reference-data, or database improvement must be
preserved here before it is removed from current scope.

Each entry records:

- the capability or outcome being preserved;
- why it is not required for V1;
- the future product, administration, scale, or evidence trigger that should
  cause it to be reconsidered;
- any accepted V1 boundary that the later work must not accidentally change.

Closely related improvements may share one entry, but every distinct preserved
capability must still be named explicitly. Deferral changes priority, not the
decision that the improvement is valuable.

## Next Session Bookmark

A later version may explore a lightweight temporary reminder about where the
player stopped or what they intend to do next, such as `Train the team, then
challenge the Gym`.

This is not part of V1 Play Settings. It should return only after Overview or
Journey Status proves a frequent read/write use that does not duplicate Story
objectives, History memories, Play-wide next actions, or durable Play notes. It
must not affect completion or automatically create History.

## Reusable Rule And Tag Administration

A later version may add global management for reusable custom Rules and Tags,
including:

- shared Rule rename and delete;
- shared Tag rename and delete;
- cross-Play, Plan, and Play-Pokémon usage summaries;
- consequence previews before a shared change;
- richer predefined-rule catalogue administration;
- database-backed checkable-versus-recorded-only capability metadata;
- generalized per-rule configuration schemas and database validation;
- database-backed presentation ordering when application ordering no longer
  scales;
- convenience read projections for Rules, Tags, and their usage;
- dedicated shared-definition mutation commands with stale-write protection.

V1 keeps the existing reusable definitions and typed links. Play Settings may
create, attach, configure, and detach local uses, while the shipped application
catalogue identifies checkable predefined rules and treats custom rules as
recorded only. Do not add generalized schema or convenience projections until
shared administration or extensibility becomes a proven product need.

Reconsider this group when users need to manage the same custom definitions
across several Plays or Plans, when the predefined catalogue must be edited
outside a normal deployment, or when application-owned capability and
configuration contracts become difficult to maintain safely.

## Browse And Dashboard Read Optimization

A later database pass may add a dedicated convenience projection, materialized
summary, or cache for repeated Plays Browse and Dashboard reads. It could
precompose Journey position, six-slot Active-Team previews, trustworthy
completion state, Tags, Rules, and last meaningful activity when measuring the
same facts from their owning tables becomes too expensive at realistic scale.

This is not required merely because the current `mainline_play_summary` view is
smaller than the accepted screen contract. V1 should first compose the facts
from existing owner-scoped sources and profile realistic libraries. Reconsider
the optimization only when query evidence shows unacceptable latency or load.
Any later cache must remain derived, preserve RLS/ownership, and never replace
Play, Team, Progress, History, Tag, or Rule sources of truth.

## Favorite Dashboard Play

A later version may let the user choose one non-archived Play as their favorite
or pinned Dashboard focus, overriding automatic latest-activity selection until
they clear it, archive it, or lose access to it. The UI should make automatic
versus user-selected focus understandable and provide a quick route back to
automatic recency.

V1 uses the most recently updated non-archived Play and does not add last-viewed
or favorite persistence. Reconsider the override only when users commonly keep
several concurrent Plays and automatic recency repeatedly selects the wrong
adventure. Any later preference must remain owner-scoped, validate that the Play
is accessible and non-archived, and fall back safely when it becomes invalid.

## Skeleton Loading States

A later version may add layout-preserving Skeleton loading patterns for stable,
data-dense surfaces such as Play Browse rows, Dashboard summaries, Team lists,
or Codex result grids when measured perceived performance justifies the added
design and maintenance cost.

V1 deliberately uses the shared accessible page-level Spinner for initial page
reads and localized pending Spinners when existing content remains visible. Do
not introduce one-off Skeletons before the final component geometry is stable.
Any later Skeleton system should be shared, responsive, theme-aware, respectful
of reduced-motion preferences, and visually faithful to the content it
previews. It must never conceal an empty, partial, unavailable, or error state.

## Team Score

Explore a playful Team Score after the V1 Quick Team Analysis and full Team
Analysis experience are implemented and validated. A later design may summarize
defensive response and recorded move coverage, but V1 should first establish
trustworthy inputs, partial-data behavior, and understandable analysis results.

Do not freeze a formula or add score-specific persistence during the V1
database pass. Any later score should remain explainable, distinguish data
confidence from Team quality, and never affect Play completion, Collection, or
progression.

## Per-Edit History Recording

A later version may add an optional `Record this change in History` control to
eligible Pokémon edit flows. This would let the user preserve a personally
meaningful update without turning every level, move, item, nickname, form, or
roster edit into timeline noise.

This later control would apply to otherwise routine edits and optional roster
moments. It does not replace V1's named lifecycle actions: an actual evolution,
persistent form change, replacement, retirement, or return already records its
own coherent event, while correction remains event-free.

Keep the control off by default and unavailable for correction-only edits. If
enabled, it may collect an effective date and short note, preserve the relevant
before-and-after identity, and save the update and event as one coherent result.
The exact checkbox, switch, or confirmation treatment should be designed with
the later edit form.

V1 keeps routine Pokémon edits quiet and uses dedicated recorded lifecycle,
Team-moment, and History flows instead.

## Shareable Recap

Generate a shareable play recap from:

- Play metadata.
- Timeline.
- Final team/Hall of Fame snapshot.
- Completion stats.
- Favorite or MVP Pokémon.

The current schema should make this possible through play events and snapshots, but no public sharing surface is required yet.

## HOME / Living Dex

Add a `home` module for Pokémon HOME-style living-dex support inside Voydex.

Initial direction:

- No direct Pokémon HOME account connection.
- Help users plan and track living-dex completion.
- Support species/form targets where useful.
- Connect to user history when helpful, but do not force HOME tracking into mainline playthrough tables.

This should likely be a V2 module after the mainline playthrough companion is usable.

## Other App Modules

Future modules:

- `dungeon`
- `pokopia`
- `go`
- `ranger`
- `sleep`

Each module needs its own product design before schema work. Do not force these games into the `mainline` play/team/story model if their mechanics differ.

## Progression-Aware Planning

Support planning by story point, location, or progression gate.

Example questions:

- Which Pokémon are available before the third badge?
- Which planned team members can I catch before the Elite Four?
- Which moves/items are available before a given story milestone?

This requires future reference data such as:

- Locations.
- Encounters.
- Encounter methods.
- Story gates.
- Game-specific availability windows.

The database should not block this future direction, but the initial clean schema does not need full encounter/location seed coverage.

## Plan Duplication, Templates, Variants, And Idea Boards

A later planning version may support:

- duplicating a Plan as an independent starting point;
- reusable Plan templates across compatible games or version groups;
- named lineup variants beyond the V1 Primary and Alternate groups;
- an unlimited Pokémon idea board before targets are promoted into one of the
  twelve intentional Plan positions;
- explicit comparison between two standalone Plans.

V1 keeps one reusable game-scoped Plan with six Primary targets and six
Alternates. One Play still has only one focused linked Plan, and editing an
actual Team never rewrites that Plan. Reconsider duplication and templates when
users repeatedly rebuild similar lineups; reconsider variants or an idea board
when the twelve-position contract proves too restrictive for genuine planning
rather than ordinary collection or browsing.

Any later copy operation must create independent ownership, preserve exact
game/form/content compatibility, disclose which Rules and Tags are copied, and
never create or duplicate a Play relationship implicitly.

## Plans Read Optimization

A later database pass may add a dedicated Plan-library projection, materialized
summary, or cache that precomposes six Primary target previews, Alternate
counts, optional-content labels, Rules, Tags, linked-Play usage, and derived
meaningful update time, plus optional Game List Plan/Play navigation counts.

V1 should first compose those facts from the existing owner-scoped Plan summary
and detail sources and measure realistic libraries. The absence of one
convenience row is not a correctness gap. Reconsider this only when query plans
or production evidence show unacceptable latency or load. Any later projection
must remain derived, preserve RLS and Archive behavior, and never become the
source of Plan targets, organization, lifecycle, or Play links.

## Advanced Collection Personalization And Comparison

A later Collection version may add explicitly user-authored personal signals
and richer comparison tools, including:

- favorite species or favorite individual companions;
- personal species-level notes that are separate from one Play biography;
- direct comparison between species, forms, generations, or games;
- richer evolution-family summaries and cross-Play Team-composition patterns;
- saved Collection filters or custom personal groupings.

V1 derives an explainable personal history and must not convert a usage ranking
into `Favorite`. Companion notes and MVP remain owned by the relevant Play, and
Collection remains read-only. Reconsider explicit favorites or Collection notes
only after the species-led browse and companion-level detail prove that users
need a cross-Play opinion layer. Any later persistence must be owner-scoped and
must not alter Team, History, Plan, Pokédex, or usage evidence.

## Advanced Stats And Historical Trends

A later Stats version may add:

- trustworthy time trends and date-range comparison after historical date
  precision has sufficient coverage;
- deeper Team-composition, type, Rule, and progress comparisons;
- side-by-side game, generation, or period comparison;
- optional streaks, percentiles, or community comparisons with clear consent,
  denominators, and privacy boundaries.

V1 excludes precise date ranges, opaque correlations, inferred favorites,
Team scores, Rule success rates, and competitive rankings. These are not safe
to derive from missing dates, repeated evidence rows, warning-only Rule checks,
or partial Team setup. Reconsider them only when the owning source records and
explanations can support the claim. Any future visualization must retain a
textual reading order and direct routes to supporting records.

## Collection And Stats Read Optimization

A later database pass may add dedicated Collection browse/detail projections,
precomputed analytical summaries, materialized views, or caches after the V1
evidence contract is correct and realistic libraries are profiled.

The current Collection read semantics do require a V1 correctness fix because
they conflate evidence rows with usage and substitute creation time for unknown
history. That correction is distinct from convenience optimization. Stats can
first compose its accepted sections from owner-scoped Plays, corrected
Collection evidence, initialized Progress, and Rules. Reconsider additional
storage only when query plans or production evidence show unacceptable latency
or load. Any later cache must remain derived, owner-scoped, invalidatable from
its source changes, and never become the source of Team, History, Progress,
Rule, or Collection truth.

## Optional Pokedex Expansion

Regional Pokedexes are the baseline. National and special Pokedexes are supported optional scopes when seeded.

Future work:

- Expand optional Pokedex seed coverage where games support meaningful National or special post-game Pokedexes.
- Decide UI treatment for multiple Pokedexes in one play.
- Decide how optional Pokedex scopes affect dashboard and stats summaries.

## Codex Browse Performance And Context Persistence

V1 should first implement exact-game, URL-backed filters and explicit
pagination by composing existing reference facts. Do not add a server-side
projection, materialized catalogue, cache, or account preference merely because
the current client loads the full Pokémon catalogue.

Profile realistic public traffic and catalogue interactions after the accepted
query shape exists. Reconsider a dedicated read optimization only if evidence
shows unacceptable latency, transfer, or server load; any cache must remain
derived from `reference` truth and preserve deterministic game-scoped results.

V1 remembers the last exact Codex game only during the current browser session.
Reconsider cross-session or cross-device persistence when users repeatedly lose
an intentional game context. A future preference must validate supported games
and fall back safely without overriding an explicit route or shared URL.

## Codex Pokemon Detail Follow-Ups

The Pokemon detail page has its V1 section foundation in place. Keep these
items out of the immediate path unless they become necessary for the next
workflow.

Future work:

- Add Pokedex entry text once the database has game/version scoped entry data.
- Add a richer breeding/training section once the database has more than egg
  groups, such as gender ratio, hatch cycles, catch rate, growth rate, base
  friendship, and base EXP.
- Improve evolution requirement presentation after item/method images are
  available. The current hover label is acceptable for now.
- Use form rules and item requirements for team-building behavior, not as a
  primary Pokemon detail section for now.
- Keep species flags and color primarily as browse/filter metadata unless a
  detail-page use case becomes clear.
- Improve Availability after structured encounter/location/source data exists.

## Codex Action Follow-Ups

The V1 Codex-to-Mainline actions are defined in the
[Feature Contract](./feature-contract.md). Later discovery and recommendation
concepts include:

- Compare with a planned team.
- Mark as target.
- Find where this Pokemon fits.

The `Mark as target` flow is useful when a user wants to remember a Pokemon for
a future run without committing to a concrete team plan yet.

Future Pokemon browse overlays:

- Already used.
- Used as this form.
- Planned.
- Targeted.
- Never used.

These follow-ups should continue to pass selected context to module-owned
workflows rather than making Codex the owner of user mutations.

## Platform-Specific Rerelease Differences

Reference availability currently models original historical game behavior.

If rereleases, enhanced platforms, or online-service changes alter availability, model that explicitly through platform/content-scope data instead of mutating canonical original-game rows.

## Achievements

Derived user achievements may be added later.

Examples:

- First completed play.
- Completed every game in a generation.
- Completed a monotype run.
- Used every starter.
- Completed a regional Pokedex.

Achievements should be derived from real user data when possible, not manually maintained.
