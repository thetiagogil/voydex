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
  Ability, Nature, Held Item, and Pokémon Gender support.
- Application and database boundaries are enforced by automated checks.

## Implemented Product Surfaces

### Mainline

- `/mainline/plays` is an authenticated, real-data Play browse with URL-backed
  Search, Status, Game, and Sort controls plus compact enriched summary cards.
- `/mainline/plays/[playId]` mounts a route-backed Play shell. The shared Play
  header and navigation persist while nested pages replace only the workspace
  content.
- Play Overview loads real play, team, progress, and recent-history data.
- Team now has a read-only list-detail implementation over the real Active,
  Reserve, Retired, and Replaced roster data plus the linked Team Plan's
  automatic comparison workspace. Team Overview lives at `/team`; the linked
  comparison is directly addressable at `/team/plan`. Their source ownership is
  represented by the `team/team-overview` and `team/team-plan` view family, and
  each route now loads a dedicated read model. The Play shell uses the
  shared shadcn Navigation Menu pattern established by Pokémon Detail and shows
  the complete Overview, Team, Progress, History, and Settings hierarchy.
  Progress, History, Settings, Team Analysis, and Team History remain unmounted
  and visibly disabled until their workflows are implemented.
- The Team slice has a verified backend mutation path for adding a team member;
  the game-aware picker and mutation form are not mounted yet.

### Codex

- Pokémon browse and game-scoped Pokémon detail are implemented with seeded
  reference data.
- Games browse, game detail, and game Pokedex routes are implemented.
- Species-only Pokémon detail routes redirect to a default supported game.

### Global Features

- Authentication, proxy session refresh, app shell, module-aware navigation,
  settings, site pages, and health surfaces have explicit owners.

## Current Product And Design Checkpoint

The breadth-first map and V1 functional screen contracts remain accepted in the
[V1 Design Workspace](./design/v1/README.md). [V1-D115, V1-D118, V1-D119,
V1-D120, V1-D122, and V1-D123](./design/v1/decisions.md) define the current
light-first explorer's navbar, single journal page, compact introduction,
conventional destination-link direction, Team-owned Plan entry, and full-height
shell composition within the canonical
[V1 Visual Language](./design/v1/visual-language.md). [V1-D124](./design/v1/decisions.md#v1-d124--automatic-play-team-plan-comparison)
defines the implemented read-time Plan comparison and supersedes the earlier
manual member-link/status model. [V1-D125](./design/v1/decisions.md#v1-d125--route-backed-hierarchical-play-navigation)
defines the shared route-backed Play shell and compound Team and Progress
navigation.

The shared shell, Plays Browse, Play Hub Overview and Team, linked Team Plan
comparison, Pokémon Browse, and Games Browse now implement the selected system:
one full-height centered journal column over the refined daylight-valley
background. The column begins at the top of the viewport, contains the in-flow
navbar and all page content, fills at least the dynamic viewport height, and
grows with long content. The landscape remains visible in the two side gutters.
Primary route links use shared compact buttons; the module selector, account
access, and actions remain clean controls.
Compact page introductions, label-free accessible controls, result context, and
content share the continuous surface without a clipboard frame, inset sheet,
brass hardware, or repeated nested Cards. The browser owns long-page scrolling
without a nested vertical scroller. Only surfaces listed under Implemented
Product Surfaces are production implementation; the remaining screen work is
still design direction until it is represented in code and verified.

The current production baseline is Plays Browse:

- URL-backed Search, Status, Game, and Sort controls are implemented, including
  debounced updates, result counts, filtered-empty recovery, filter reset,
  accessible in-control names, and compact equal 40-pixel control heights.
- Each Play row now composes game cover, Play and game identity, update date,
  six Active-Team slots, honest overall completion, and one open cue from
  owner-scoped summary, reference-game, Overview, and Team reads.
- Missing progress remains distinct from unavailable enrichment; unavailable
  Team data retains six explicit positions instead of silently disappearing.
- Phone and tablet use stacked journal rows, while compact and wide desktop
  restore the horizontal comparison layout so identity and Team remain dominant.
  The selected composition and its realistic occupied/partial fixture states
  have been browser-checked at representative phone, tablet, and desktop widths.
  The simplified single-journal composition was checked at representative
  desktop, tablet, and phone widths. The page followed growing content without
  clipping, horizontal overflow, or a nested vertical scroller. The
  subsequent navbar refinement kept the opening bar in document flow without a
  hard lower edge or scroll-triggered replacement, and the mobile module sheet
  continued to open and close normally.

Play Hub Overview is a completed production design checkpoint:

- The authenticated query, Play identity, cover, metadata, actions, tab order,
  and four-section Overview organization remain intact. Planning is now reached
  contextually from Team instead of occupying a sixth primary Play area.
- The contextual header now uses the same serif/forest hierarchy and restrained
  cover treatment as the other detail views without becoming another Card.
  Duplicate Team and Pokédex counts were removed from the header so the owning
  Overview sections remain authoritative.
- The route-backed workspace is one quiet journal surface. Journey Status, Recent
  History, Current Team, and Progress Summary use the shared detail-section
  grammar; the realistic scenic banner, duplicate Story Path visualization,
  inactive section actions, and Active/Reserve mini-toggle no longer compete
  with the recorded data.
- Desktop uses the accepted Journey/History and Team/Progress columns. Tablet
  and phone stack those sections in the same order, retain six equal Team slots,
  and keep the section navigation horizontally reachable without widening the page.
  Representative authenticated routes were checked at desktop, tablet, and
  phone widths without page overflow or nested vertical scrolling; keyboard
  focus remained visible and the browser console stayed clear.

Play Hub Team and its linked Plan comparison have a production implementation
checkpoint:

- The Team route keeps the existing Play header and shares the same persistent
  workspace shell as Overview. Team reads the
  Play-owned Active and Reserve roster while keeping
  Overview limited to a dedicated Active preview read that hydrates only the
  identity, portrait, level, slot, and exact-generation types its six summary
  positions render.
- Desktop uses the accepted list-detail hierarchy: all six Active and six
  Reserve positions remain visible with the same detailed row geometry. The
  initial baseline has no Reserve summary or disclosure state. The first recorded member opens in
  a larger selected-Pokémon detail. The substantially larger portrait is the
  identity area's focal point, while an inline labelled star identifies shiny
  members. The top row uses a 60/40 identity-to-caught-information split. Type
  badges precede the adjacent Level and icon-labelled Gender chips, and Held
  Item follows those chips.
  Mechanic-dependent facts are resolved from the Play's exact game profile;
  unsupported Ability, Nature, Held Item, or Gender rows are omitted instead of
  presented as unrecorded. Caught information is now one compact section containing only Ball, met
  location, and met level; Trainer is omitted until the application owns useful
  per-member original-trainer data. The next row uses the same 60/40 hierarchy:
  the wider Moves column sits on the left, while Ability and Nature stack on the
  right with quiet separation, no decorative icons, and supported effect
  context. The four move positions use a compact vertical list with a
  left-aligned type icon, optically centered name, subtle type color, or a
  matching `Empty slot`, followed by optional Notes and a responsive action
  footer. Edit Pokémon now belongs to the selected panel or sheet header.
- Missing Active and Reserve positions are labelled `Empty slot` and omit
  placeholder media and explanatory copy. A completely blank Play keeps all six
  Reserve positions visible without inventing a member selection.
- Tablet and phone keep the roster primary and open occupied members in a
  focused detail sheet. Populated and blank fixtures were browser-checked at
  desktop, tablet, and phone widths without horizontal overflow or console
  errors.
- The Roster Card header now owns only the canonical disabled Add action. A
  compact Team Plan Card appears directly below Roster for linked Plans,
  leads with the Plan identity, reports whether the current Team is following
  it, and separates target coverage from unplanned-member context. Its enabled
  View plan action opens the full-width `/team/plan` comparison while keeping
  Team active and preserving the Play shell. That workspace now exposes three
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
  the taller comparison workspace. Tablet and phone keep a natural stacked flow
  and use a focused bottom sheet capped at 82dvh with the compared identities
  first. Build grids contain only exact-game-supported mechanics; unsupported
  mechanics cannot affect automatic comparison status, and the Build section
  is absent when none apply.
  Past Members has no Roster Card link until its focused destination is
  implemented; selected detail remains the first right-side section.
- Team Quick Analysis remains in the supporting right-side hierarchy while its
  final metrics and review strategy are deliberately deferred. Recent Team
  Events loads and hydrates only Pokémon-specific roster and lifecycle changes;
  Play progress snapshots and Hall of Fame entries no longer qualify. Both
  full-view destinations remain explicitly disabled.
- Decorative section-title icons and the permanent empty Plan card were
  removed. A linked Plan now exposes one to six ordered targets and is compared
  at read time with existing Play Pokémon. Matching is deterministic and
  one-to-one: exact identity, alternate form, directed earlier/later evolution,
  then another branch in the same family; Active and Reserve receive optional
  build comparison, while Retired and Replaced provide identity-only evidence.
  Planned moves remain in Plan order, connect to the same recorded move
  regardless of slot, pair remaining differences in recorded order, and append
  additional recorded moves as neutral evidence.
  No inferred member link or comparison status is persisted. Slot resolution,
  roster movement, member editing, lifecycle actions, Past Members, Plan
  acquisition/authoring, and full analysis/history routes remain outside this
  read-only slice. Their selected-member controls are visibly disabled; only
  the exact-game Codex route is active.

Pokémon Browse is a completed production design checkpoint:

- Result cards now use one continuous specimen surface for artwork and identity,
  with named field-guide type markers beside the number-and-name block instead
  of realistic type scenery, dark poster overlays, or an internal divider.
- The grid presents two useful columns on common phones, three at medium widths,
  and four on wide journal pages. Generation headings retain the section `h2`
  while card species names use nested `h3` headings.
- Browse controls use the shared label-free journal treatment with explicit
  accessible names. Incremental results append automatically in small batches
  before the user reaches the boundary, with a manual compatibility fallback
  when scroll observation is unavailable.
- The exact-game, URL-state, result announcement, and filtered-empty recovery
  gaps in the accepted functional contract remain intentionally out of this
  visual slice.

Pokémon Detail is the current completed visual checkpoint:

- The existing information architecture is preserved: selectors remain at the
  top, portrait/forms/evolution remain in the left stack, and the seven
  reference sections retain their right-stack order.
- The realistic portrait scenery has been replaced by the same neutral specimen
  field and restrained type accent used by Browse. Existing Shiny and form
  behavior remain unchanged.
- Detail sections now use the light journal card grammar, serif primary titles,
  neutral field-guide type badges, and one semantic primary treatment for stat
  bars and effectiveness emphasis.
- Wide reference rows become labelled stacked rows inside their existing cards
  on narrow screens, removing page-level horizontal overflow without moving or
  hiding their data.

Games Browse is a completed production design checkpoint:

- Dark square-poster overlays have been replaced by full, uncropped cover art in
  the same compact `4:3` field-guide card rhythm as Pokémon Browse. Release year
  and region sit above the serif game identity on the same warm paper card.
- The grid presents two useful columns on common phones, three at medium widths,
  and four on wide journal pages. Generation headings remain `h2` sections,
  while exact game titles use nested `h3` headings inside accessible whole-card
  links.
- Search, Generation, Game type, and Region use the label-free journal control
  treatment without forcing four full-width controls before phone results.
- URL-backed filters, Platform and `More filters`, result announcements, and
  return-focus restoration in the accepted functional contract remain outside
  this visual slice.

Game Detail is a completed production design checkpoint:

- The existing return, cover, identity, facts, reference action, named
  Pokédexes, and related-games order remains unchanged. The view now uses the
  same quiet paper cards, serif editorial hierarchy, and forest-primary action
  treatment as Pokémon Detail and Games Browse.
- Platforms, Available Pokémon, and Game type are compact labelled facts
  instead of icon tiles, and the generic game-type description no longer poses
  as a game-specific synopsis.
- Named Pokédexes use flat divided destination rows in normal document flow
  without nested row Cards or an inner vertical scroller. Related-game cards
  retain complete uncropped cover art and explicit accessible destinations.
- Representative seeded routes have been checked at desktop, tablet, and phone
  widths without page-level horizontal overflow. The Browse Pokémon, named
  Pokédex, related-game, and Back to games destinations retain their existing
  behavior.

Game Pokédex is a completed production design checkpoint:

- Each route now has a semantic named-Pokédex heading with exact game,
  generation, and result-count context. Multi-Pokédex games keep the selector
  visible as primary page scope instead of collapsing it into a secondary
  utility menu; single-Pokédex games rely on the heading without showing a
  redundant selector.
- Wide journal pages retain the exact-game semantic comparison table with
  explicit species links. Phones use compact divided field-guide rows that keep
  local number, sprite, species, National number, and types visible; tablets
  add labelled base-stat comparison without widening the document.
- Search and Type retain their existing client-side behavior and now expose a
  selected-Pokédex filtered-empty recovery. Representative Red/Kanto and
  Sun/Alola routes have been checked at desktop, tablet, and phone widths with
  no page-level horizontal overflow, and named-Pokédex switching plus
  exact-game Pokémon destinations remain intact.
- URL-backed filter/sort state, explicit incremental loading, optional-content
  grouping, and the accepted DLC read-model expansion remain functional work
  outside this visual slice.

## Next Chat Handoff

The current implementation checkpoint is the commit containing this handoff on
`main`. On the next computer, run `git status`, `git log -1 --oneline`, and
`npm install` before editing. Preserve unrelated work and confirm the linked
Supabase migration list before any later remote database write.

The completed slice is the read-only Team Plan comparison inside the active
Team tab. It uses one to six ordered planned targets, automatic one-to-one
species/form/evolution-family matching, exact optional-build checks for Active
and Reserve members, identity-only lifecycle evidence for Retired and Replaced
members, aggregate-only unplanned members, generation-correct planned types,
flat build and ordered move comparisons, a persistent desktop inspector, and a
tablet/phone bottom sheet. Roles, Level, and Ball are intentionally excluded.
Ability, Nature, Held Item, and Pokémon Gender use the reference-owned exact
game capability profile across Codex and Mainline. Unsupported mechanics are
omitted and excluded from Plan comparison status.
There is no separate Open action; the title remains non-interactive until the
standalone Plan Detail route exists. There are no alternate targets, manual
member associations, or stored comparison statuses.

Continue with one bounded planning workflow rather than another visual rewrite.
The recommended next slice is the missing Plan acquisition/authoring boundary:
define and implement the no-linked-Plan entry, owner-scoped `Link existing Plan`
and `Create Plan for this Play`, then mount the smallest standalone Plans Hub,
Create Plan, or Plan Detail increment needed to own reusable edits. Keep the
current comparison read-only. A future edit initiated inside a Play must clone
the reusable Plan and relink only that Play before saving; a standalone edit
must disclose how many linked Plays may change. Do not introduce manual pairing
as part of either workflow.

The game-aware `Add Pokémon` picker and targeted slot handoff remain the next
independent Team mutation slice after that planning boundary. Roster movement,
lifecycle actions, Past Members, full analysis/history routes, Progress,
History, and Settings remain separate increments.

Do not add another background, dark mode, sticky replacement navigation,
Skeletons, decorative edge systems, or a broad cross-page refactor while this
slice is active. Database work requires a current contract gap, authored-source
changes, local `npm run db:verify`, an explicit remote-write gate, and linked
migration parity.

Future design and implementation tasks start from the canonical screen-family
document, accepted decisions, design system, current code, and verified
responsive behavior. Conversation images remain iteration evidence; any
selected behavior that future work must preserve belongs in versioned docs.

## Known Gaps

- There is no committed authenticated end-to-end browser suite.
- Authenticated Play Hub verification remains session-dependent until a stable
  test user or deterministic local browser fixture exists.
- Codex reference-query performance has not yet been profiled under realistic
  usage.
- Pokémon Browse still maps latest available attributes to result cards before
  opening an introductory-generation game route, so the implemented card and
  destination can disagree until the accepted exact-game query correction is
  built.
- Codex Game Pokédex search and Type state remain client-only, all matching
  entries render at once, and optional-content Pokédexes are not yet grouped
  into the owning game route. The selected journal visual slice is complete,
  but those accepted functional gaps remain.
- Plays Browse still needs archived visibility, secondary filters, explicit
  recovery states, and incremental loading before its accepted V1 contract is
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
- Plays without a linked Plan currently omit the Plan entry entirely. The
  accepted Link/Create entry, standalone Plans routes, reusable Plan authoring,
  shared-edit impact warning, and clone-before-Play-edit workflow are not yet
  mounted.
- The development Team fixture still stores a non-ball reference in
  `ball_item_id`. The Team read model now validates that reference against the
  `poke_ball` item category and presents an invalid value as `Not recorded`;
  fixture data still needs a real capture-ball assignment.
- Future product families remain backlog and should not receive schema or UI
  work before Mainline is useful end to end.

## Verification Checkpoint

The repository currently provides:

- Architecture enforcement over the active source tree.
- The latest `npm run verify` checkpoint passes documentation, repository-wide
  formatting, lint, TypeScript, architecture enforcement, 96 Vitest tests, and
  the production build.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 131 schema sources, 896 seed sources, and 638,242
  seed rows.
- Five pgTAP files with 107 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, representative mutations, and
  gameplay fixture coverage.
- Local database reset, SQL formatting, lint, test, and generated-type parity.
- The linked Supabase migration list matches local history through
  `20260721221107_simplify_team_plan_comparison.sql` as of July 22, 2026.

See [Verification](./app/verification.md) for commands and environment limits.
