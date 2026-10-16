# Project Status

This document is the only canonical source for Voydex's current implementation
checkpoint. Product contracts describe accepted behavior; code and tests remain
the evidence for exact implementation details.

## Current Foundation

- The architecture refactor is complete. Routes are thin, product code is owned
  by modules or global features, Supabase adapters live under `src/platform`,
  and `src/lib` is retired.
- The Voydex database source is authoritative in this repository under
  `database`, with deterministic generated local load artifacts and generated
  TypeScript types.
- Local resets now seed a login-capable development account plus 44 gameplay
  scenarios: one comprehensive and one blank play for each of 22 supported base
  version groups. The 22 populated plays cover staged completion, game-valid
  teams, every roster and lifecycle state, plans, snapshots, history, rules,
  tags, optional content, collectibles, Pokedex progress, and Game List states.
  The dedicated linked development account was refreshed from this same source
  on July 20, 2026.
- The internal `reference` module owns reusable Pokémon and game contracts,
  exact-game mechanic capabilities, domain rules, catalogue components, and
  presentation helpers. Codex and Mainline consume one shared profile for
  Ability, Breeding, Nature, Held Item, and Pokémon Gender support; the Let's
  Go and both Legends version groups have no abilities, held items or
  breeding.
- Application and database boundaries are enforced by automated checks.

## Implemented Product Surfaces

### Mainline

- Mainline Home (`/mainline`), New Play (a dialog over any Mainline
  page; links from outside open it with `/mainline?new=`, plus `&partner=`
  from Start a Play), the Team
  Planner (`/mainline/plans/new`, `/mainline/plans/[planId]`), My Plans
  (`/mainline/plans`), Statistics (`/mainline/stats`) and Collection
  (`/mainline/collection`) are built on real data; see the
  [Feature Contract](./product/feature-contract.md) for what each does.
- In a Play: a brand-new Play's partner choice and first steps, Record in
  place with Undo (Overview, Story), Add a note, Add and Edit Pokémon (Evolve,
  Change form, Replace, Retire, Delete record), Story matchups
  (`/team/analysis?reading=story`), the Plan empty state with Follow a Plan,
  the History tab (`/history`) and the Settings tab (`/settings`). Team
  History is retired; its events are History's Team filter.
- `/mainline/plays` is an authenticated, real-data Play browse with URL-backed
  Search, Game, Generation, and Sort controls, grouped by status, plus compact
  enriched summary cards.
- `/mainline/plays/[playId]` mounts a route-backed Play shell. The shared Play
  header and navigation persist while nested pages replace only the workspace
  content.
- Play Overview loads real play, team, progress, and recent-history data.
- Team now has a read-only list-detail implementation over the real Active,
  Reserve, Retired, and Replaced roster data plus the linked Team Plan's
  automatic comparison workspace. Team Roster lives at `/team`; the linked
  comparison is directly addressable at `/team/plan`. Their source ownership is
  represented by the `team/team-roster` and `team/team-plan` view family, and
  each route now loads a dedicated read model. Team Analysis is mounted at
  `/team/analysis` with an Active-only, exact-generation read model for
  defensive matchups, recorded damaging-move coverage, evidence completeness,
  and responsive type-grouped mobile details. The Play shell uses the
  shared Navigation Menu pattern and shows
  the complete Overview, Team, Progress, History, and Settings hierarchy.
  Progress Story is mounted at `/progress/story`, and `/progress` redirects to
  it. Its read workspace joins each selected content scope into one searchable,
  sectioned milestone list; only separately authored DLC receives a scope
  selector. Explicit `required` and `story-unlock` relations drive visible
  availability and are enforced by the completion function, while suggested
  previous steps remain non-blocking. The seed audit validates prerequisite
  references and cycles across every authored game graph. Decisions, snapshots,
  completion state, and notes remain in the responsive list-detail workspace.
  Progress Pokédex is mounted at `/progress/pokedex` as a named-scope tracker
  with shared species state, exact-generation identity data, a purpose-built
  scope overview band with a content-sized shared Navigation Menu for
  independently completion-relevant Pokédexes. Its choices expose the Pokédex
  name, entry count, and kind without requiring search, while browse-only local
  Pokédexes are entry filters rather than misleading peer destinations. The
  filter preserves the aggregate route and completion summary and carries an
  explanatory completion notice. A game with one independent scope shows
  static identity without a redundant menu or kind. The band keeps one wrapping
  orientation-and-progress row, and one full-width progress rail
  plus responsive dense Grid/List browsing and a shared Seen/Caught Card-action
  mode. Completion-relevant scopes label their included-entry percentage
  `Completed`; local browse filters never recalculate or claim separate Play
  completion. Wide Play
  layouts show six species cards per row, tablet layouts show four, and phones
  default to a flat divided data list without page-level overflow. Grid Cards
  reuse the image-led Codex hierarchy at a denser scale and finish with one
  bottom-aligned footer: identity at the left and the separate Codex action at
  the right, while the Eye or Poké Ball state icon stays at the top-right.
  List rows instead expose
  number, framed portrait, name, exact-generation named types, explicit
  Seen/Caught status, and a trailing Codex action in
  one full-bleed divided list without a nested Card. Their desktop columns
  distribute across the available width, and Seen/Caught rows reuse the matching
  translucent state backgrounds without state-colored borders. Both
  presentations use the shared actionable-row hover surface. Both layouts are
  divided into stable 60-number ranges with filtered-safe `Mark all` and
  `Unmark all` actions. The first range renders immediately and subsequent
  ranges progressively reveal through the same intersection-observer behavior
  used by Codex Pokémon, with a manual fallback when automatic loading is not
  supported.
  Toggling off an active mode returns that species directly to Missing;
  otherwise the selected Seen or Caught mark mode overrides the Card's current
  state. Missing is filterable but remains a neutral Card state rather than an
  update action.
  Progress Collectibles is mounted at `/progress/collectibles` for Plays whose
  game and enabled content expose exact-entry collectible groups. It uses a
  compact route-preserved group selector, one native collected/remaining/total
  summary, and a full-width location-sectioned list with shared Search,
  progress, location, and sort controls. Rows update sparse collectible state
  directly with optimistic feedback. Each visible location section also offers
  filtered-safe `Mark all` and `Unmark all` shortcuts; hidden entries never
  change. The workspace remains responsive without introducing a second
  inspector. Count-only imports, reconciliation, and reviewed cross-location
  batch updates remain later contract gaps.

### Codex

- Pokémon browse and version-group-scoped Pokémon detail
  (`/codex/pokemon/[versionGroupSlug]/[speciesSlug]`) are implemented with
  seeded reference data.
- Games browse, the version group page (`/codex/games/[versionGroupSlug]`,
  `?version=` picks the game) and its Pokédex routes are implemented; an
  expansion's Pokédexes appear under the base group.
- Game slugs and expansion child-group slugs redirect (308) to the base group,
  unknown slugs are a 404, and species-only Pokémon routes open the group the
  species was introduced in.
- v3 additions: the game page's region with its first partners and its
  version exclusives, the entry's Training and breeding card, and the
  signed-in pieces Mainline fills through `codex-slots.ts` (Your Plays and In
  your Plays on an entry, the Your Plays section on a game).
  The lists never mark what you've played or used: the Codex is reference.

### Global Features

- Authentication, proxy session refresh, app shell and its v3 bars,
  settings, site pages, and health surfaces have explicit owners.
- Start a Play (`/start`), Forgot password, New password and Check your email
  (`/forgot-password`, `/reset-password`, `/check-email`), Welcome
  (`/welcome`), You (`/you`), Privacy and Terms, and Settings with profile,
  Change email, Change password and Download your data (`/settings/export`)
  are built.

## Current Product And Design Checkpoint

The Soft Clay redesign is in progress on the `claude/soft-clay-redesign`
branch. [ADR 0004](./decisions/0004-soft-clay-design-system.md) records the
decision, the [Soft Clay Brief](./design/soft-clay-brief.md) is the agreed
direction, and the [Design System](./app/design-system.md) describes what is
built. The journal design (the centered journal column, valley background,
paper texture, DM-era fonts and V1 styling docs) has been removed in place;
`npm run design:check` fails if any of it is referenced again.

Every v3 screen is now built on Soft Clay on the branch, uncommitted at this
checkpoint and pending the owner's review (the owner reviews all views at the
end rather than per slice). The [Design System](./app/design-system.md)'s
Migration Status lists them. Where v3 needs data Voydex doesn't have, the
screen shows `PendingData` and a `TODO(v3-data)` comment; Known Gaps below
lists each with the schema it waits on. The first slice's two open calls are
settled (owner, 2026-10-13): section cards keep the 3px clay edge, and the
main button stays in Nunito.

Earlier on the branch, a behaviour and reuse pass against v3 made Codex routes
version-group scoped, gave stamps, objectives, moments and team slots one
owner, and gave every route group an error page. Signed-in screens still need
a desktop and phone browser check. The checkpoints below describe behaviour
and layout, which the redesign keeps; their visual wording predates Soft Clay,
and the [Design System](./app/design-system.md) wins where they disagree.

The current production baseline is Plays Browse:

- URL-backed Search, Game, Generation, and Sort controls are implemented,
  including debounced updates, result counts, filtered-empty recovery, filter
  reset, and accessible in-control names. Plays are grouped by status.
- Each Play row now composes game cover, Play and game identity, update date,
  six Active-Team slots, honest overall completion, and one open cue from
  owner-scoped summary, reference-game, Overview, and Team reads.
- Missing progress remains distinct from unavailable enrichment; unavailable
  Team data retains six explicit positions instead of silently disappearing.
- Phone and tablet use stacked rows, while compact and wide desktop
  restore the horizontal comparison layout so identity and Team remain dominant.
  The selected composition and its realistic occupied/partial fixture states
  have been browser-checked at representative phone, tablet, and desktop widths.

Play Hub Overview (Soft Clay):

- Overview reads the Play overview, the active team preview, the last and next
  milestones, the timeline preview and the badge case (the Play's gym
  milestones and its Champion milestone with their badge types).
- The next objective and progress sit side by side on desktop and stack on
  phones. The team follows as six stickers with dashed open slots, then the
  badge case beside recent moments. A game without gyms shows recent moments
  alone.
- Recent moments list up to three records; while there are fewer, the Play's
  start closes the list. Gym milestones wear their badge's medallion.

Play Hub Team and its linked Plan comparison have a production implementation
checkpoint:

- The Team route keeps the existing Play header and shares the same persistent
  workspace shell as Overview. Team reads the
  Play-owned Active and Reserve roster while keeping
  Overview limited to a dedicated Active preview read that hydrates only the
  identity, portrait, level, slot, and exact-generation types its six summary
  positions render.
- Team (Soft Clay) opens on a page head (`PageHeader`, level 2) with the
  Active and Reserve counts and Add Pokémon, then the
  roster as compact `PokemonSticker` tiles: all six Active and six Reserve
  positions stay visible, and a picked sticker wears the Play's colour. On
  wide screens the selected Pokémon sits beside the roster in a plain quiet
  `Card`; the first recorded member opens by default. Its identity, caught
  information (Ball, met location, met level), Moves, Ability and Nature keep
  the earlier content contract: mechanic-dependent facts are resolved from the
  Play's exact game profile, and unsupported Ability, Nature, Held Item or
  Gender rows are omitted instead of presented as unrecorded. Edit Pokémon
  belongs to the selected panel or sheet header.
- Missing Active and Reserve positions are dashed `PokemonEmptySlot` tiles
  labelled `Empty slot`. A completely blank Play keeps all six
  Reserve positions visible without inventing a member selection.
- Tablet and phone keep the roster primary and open occupied members in a
  focused detail sheet. Populated and blank fixtures were browser-checked at
  desktop, tablet, and phone widths without horizontal overflow or console
  errors.
- The Roster holds only the head, the stickers and the selected Pokémon;
  `?pokemon=[playPokemonId]` opens it on one member (an Overview sticker links
  there). The linked Plan's full-width `/team/plan` comparison is reached from
  the Team menu while keeping Team active and preserving the Play shell. That
  workspace exposes three
  explanatory-tip summary metrics and compact rows aligned to one shared slot,
  identity, status, Tracked identity, and action grid. Metrics and build/move
  status icons share one fast-hover, focus, and pinnable click/touch behavior.
  It has no duplicate Open action; the Plan title remains plain text until
  standalone Plan Detail exists and can own that link. Roles and repeated row
  types are intentionally absent;
  tracked species lead, with nickname in parentheses and roster placement
  beneath. Desktop keeps the selected comparison beside the list with the match
  explanation before centered flat build and move grids. Planned notes sit
  directly below the list, and the shorter desktop column stretches to match
  the taller comparison workspace. Tablet keeps the comparison header and rows
  inline while opening focused detail in a bottom sheet; phone rows stack the
  planned identity, status, and Tracked identity. Both narrow layouts use the
  sheet capped at 82dvh with the compared identities first. Build grids contain
  only exact-game-supported mechanics; unsupported mechanics cannot affect
  automatic comparison status, and the Build section is absent when none apply.
  Past Members has no roster link until its focused destination is
  implemented; selected detail remains the first right-side section.
- Decorative section-title icons and the permanent empty Plan card were
  removed. A linked Plan now exposes one to six ordered targets and is compared
  at read time with existing Play Pokémon. Matching is deterministic and
  one-to-one: exact identity, alternate form, directed earlier/later evolution,
  then another branch in the same family; Active and Reserve receive optional
  build comparison, while Retired and Replaced provide identity-only evidence.
  Planned moves remain in Plan order, connect to the same recorded move
  regardless of slot, pair remaining differences in recorded order, and append
  additional recorded moves as neutral evidence.
  No inferred member link or comparison status is persisted. Roster movement
  between slots, Past Members, and Plan editing from inside a Play remain
  outside this slice.

Codex (Soft Clay, version-group scoped):

- Every page opens on `CodexHead`. Version-group segments resolve through one
  rule (`resolveVersionGroupRoute`); route layouts settle the 404 or 308
  before the loading state streams. Routes are in
  [Navigation And Routes](./product/navigation-and-routes.md).
- Pokémon Browse: one toolbar row (Search, Generation menu, Group by
  generation or type, Sort), the type dots and the results line under it,
  over `CodexPokemonCardLink` cards, grouped by introduced generation under
  its region or by primary type, and appended as you scroll with a manual
  fallback. Each
  card opens the first base group of its introduced generation. Filters are
  client state; a query on `/codex/pokemon` redirects to the bare path.
- Pokémon entry: see [Codex Pokémon Detail](./design/codex-pokemon-detail.md).
- Games Browse: Search and the kind of game in the URL (`q`, `kind`), newest
  or oldest order, grouping by generation or region, and `GameShelfCard`
  covers on a game-coloured stage.
- The version group page: the cover with a version switch, facts, the group's
  Pokédexes (its own, then its expansions', National last) and related games.
- Game Pokédex: the named Pokédex as page scope with its switcher, Search,
  Type, Sort (Regional number, National number, Name) and a Cards or Table
  view; filter state is client-only.

## Next Chat Handoff

Every v3 screen is built on `claude/soft-clay-redesign` but not yet committed
(see the checkpoint above); the owner reviews all views at the end. Next:
commit the build in cohesive slices, run `npm run verify`, browser-check the
signed-in screens at desktop and phone widths, then the owner's review and its
fixes. Each pending-data marker in Known Gaps leaves with its data; grep
`TODO(v3-data)` to find them. On the next computer, run `git status`,
`git log -1 --oneline`, and `npm install` before editing. Preserve unrelated
work and confirm the linked Supabase migration list before any later remote
database write.

Team History is retired: History reads the shared Play event store and its
Team filter shows the roster events, with event-time Pokémon identity, ordered by
when each moment happened (see Data Ownership).

The bounded route-backed `Progress - Story` workspace is mounted:
`/progress` opens Story, the attached menu has no Overall item, and the UI
preserves exact-game sections, separate base/DLC scopes, explicit prerequisite
relations, decisions, snapshot evidence, notes, and honest unrecorded state.
Search is scoped to the selected base game or DLC. Desktop keeps list and
selected detail side by side; narrower layouts keep the list primary and open
details in the shared bottom-sheet pattern. Its content-only summary has no
temporary view title; only each `Milestone N` control selects the summarized
milestone. Milestone-type badges use stable semantic tones with visible labels.

The selected detail now exposes the atomic Story workflows supported by the
existing milestone mutation: complete an available milestone, add or update its
note, add or update a relevant decision, deliberately record or replace the
current Active Team snapshot when the milestone policy permits it, and mark an
accidentally completed milestone incomplete so it can be recorded again.
Replacing a snapshot keeps its existing History event. Marking a milestone
incomplete now previews and atomically removes every completed transitive hard
dependent together with its notes, decisions, milestone-linked History, and
snapshot evidence; suggested and unrelated branches remain untouched, and a
stale preview aborts.
Hard prerequisites remain visible and block the completion action. The focused
editor preserves optional context instead of placing every control in the
inspector. Historical date correction, linked-event correction, and bulk
completion still require their own cohesive command contracts and are not
represented by placeholder actions.

The existing Overview Progress Summary is the sole cross-area Progress
landing surface. Story, Pokédex, Collectibles, History and Play Settings now
exist; when the Overview consolidation begins, connect each Overview progress row directly
to its owning child view and keep normalized cross-area completion, tracking
scope, and honest recording states in Overview rather than adding another
Overall route.

Plan Detail, Create Play from a Plan, roster movement between slots, and Past
Members remain separate later increments.

On the Soft Clay redesign branch, broad cross-page refactors are expected: each
screen moves to the new system and deletes its old parts. Do not add dark
mode, Skeletons or a new logo as part of the redesign. Database work requires a current
contract gap, authored-source changes, local `npm run db:verify`, an explicit
remote-write gate, and linked migration parity.

Future design and implementation tasks start from the
[Soft Clay Brief](./design/soft-clay-brief.md), the
[Design System](./app/design-system.md), the product contracts in
[docs/product](./product/feature-contract.md), current code, and verified
responsive behavior. The V1 screen-family contracts were retired with the
journal design; they remain in Git history before ADR 0004 if a past decision
needs checking. Conversation images remain iteration evidence; any
selected behavior that future work must preserve belongs in versioned docs.

## Known Gaps

- There is no committed authenticated end-to-end browser suite.
- Authenticated Play Hub verification remains session-dependent until a stable
  test user or deterministic local browser fixture exists.
- Codex reference-query performance has not yet been profiled under realistic
  usage.
- Pokémon Browse still maps latest available attributes to result cards before
  opening the introduced generation's version group, so the card and the entry
  can disagree until the accepted scoped query correction is built.
- Codex Pokémon Browse and Game Pokédex filter state remains client-only, and
  every matching Game Pokédex entry renders at once. Those accepted functional
  gaps remain.
- Plays Browse still needs archived visibility, secondary filters, explicit
  recovery states, and incremental loading before its accepted contract is
  complete.
- Secure account deletion has no reviewed server-owned operation proving Auth
  identity removal, dependent owner-data cascades, session invalidation, and
  failure rollback without exposing administrative authority.
- Team-derived requirements have exposed confirmed gaps in atomic roster
  placement, explicit known-empty versus not-recorded current slots, the
  distinction between selectable fixed forms and game-valid directed form
  transitions, current/past lifecycle support, and Plan-safe correction or
  deletion. The consolidated design-derived database matrix and full
  reference-data audit remain required before those workflows are implemented.
- A Play without a Plan shows `No Plan yet` with Plan a team and Follow a
  Plan. Plan Detail, Create Play from a Plan, the shared-edit impact warning,
  the clone-before-Play-edit workflow and the Game List are not built.
- The Team Planner saves through several writes (no single save-Plan
  function): a failed new Plan is deleted, and a failed edit restores the
  Plan's previous row, Pokémon, planned moves and expansions. Every Pokémon
  is checked against the version group first (its Pokédexes, learnsets and
  capability profile). The roster editor's move rewrite restores the old
  moves the same way.
- The development Team fixture still stores a non-ball reference in
  `ball_item_id`. The Team read model now validates that reference against the
  `poke_ball` item category and presents an invalid value as `Not recorded`;
  fixture data still needs a real capture-ball assignment.
- Future product families remain backlog and should not receive schema or UI
  work before Mainline is useful end to end.

### Pending v3 Data

Each item is a `PendingData` marker with a `TODO(v3-data)` comment in `src`
(`grep -rn "TODO(v3-data)" src`), grouped by what it waits on:

- `public.profiles`: a Pokémon icon (`avatar_url` is a URL, not a species) for
  the trainer card, Settings, Welcome, the account menu and the You tab; a
  default trainer name for new Plays; a first-run flag so Welcome shows once.
- `public.user_preferences`: mode, colour theme and motion (Look and feel);
  New Play defaults for Pokédex mode and Story and Collectibles tracking.
- Account deletion: a reviewed, server-owned operation (Auth user and every
  owned row) behind Settings' Delete your account.
- `gameplay.mainline_play_settings`: a Story on/off flag, a Pokédex mode
  (caught only or caught and seen; only `pokedex_tracking_enabled` exists) and
  a Collectibles on/off flag (only `include_collectibles_in_completion`
  exists), for New Play and Play Settings' Tracking.
- `gameplay.mainline_challenge_rules`: the seeded system catalogue (Nuzlocke,
  Monotype, No battle items, Level caps, Set battle mode, Shiny hunt); only
  development rows exist. New Play and Play Settings' Challenge rules.
- `gameplay.mainline_plays`: a last-opened column, so Home's shelf reads
  "last opened first" (it uses the latest update).
- Roster placement: an atomic RPC to move a member between team and reserve
  or to another slot (Edit Pokémon).
- `planning.mainline_team_plans`: a version preference (either, or one game
  of the pair); a Plan stores its group's first game until then.
- A reviewed `save_mainline_team_plan` RPC writing a Plan's row, members,
  planned moves and expansions in one transaction (the Planner's save).
- Opponent parties (species, level, moves per opponent): Story matchups'
  verdict, their team, best hit and the level comparison.
- `tracking.mainline_opponents` and `mainline_badges`: an anon read grant (and
  each opponent's town and ace) for the Codex game page's leaders.
- `tracking.mainline_collectibles`: reward text per collectible set.
- Reference catalogue: one-per-save gift groups and either-or picks (the
  Planner's Team check); route and encounter locations (Add Pokémon's
  suggestions); a badge count for Start a Play ("8 gym badges ahead"); a
  description per region (`reference.regions`) and per version group.
- Reference Pokémon facts for the Codex entry: the species' Pokédex category
  (genus); flavour text per game; heights and weights
  (`pokemon_forms.height_decimeters` and `weight_hectograms` are unseeded);
  EV yield, catch rate, base friendship, base experience and growth rate;
  egg groups for forms without egg group ids; egg cycles and gender ratio per
  species.
- A table for a user's favourite Pokémon (the entry's Favourite).
- Legal text for Privacy and Terms, written and reviewed before launch.

## Verification Checkpoint

The repository currently provides:

- Architecture enforcement over the active source tree.
- The latest `npm run verify` checkpoint passes documentation, repository-wide
  formatting, lint, TypeScript, architecture enforcement, 143 Vitest tests, and
  the production build.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 131 schema sources, 896 seed sources, and 638,242
  seed rows.
- Five pgTAP files with 124 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, representative mutations, and
  gameplay fixture coverage.
- Local database reset, SQL formatting, lint, test, and generated-type parity.
- The linked Supabase migration list matches local history through
  `20260728101342_fix_milestone_column_ambiguity.sql` as of July 28, 2026.

See [Verification](./app/verification.md) for commands and environment limits.
