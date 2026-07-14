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
- The internal `reference` module owns reusable Pokémon and game contracts,
  domain rules, catalogue components, and presentation helpers.
- Application and database boundaries are enforced by automated checks.

## Implemented Product Surfaces

### Mainline

- `/mainline/plays` is an authenticated, real-data play browse.
- `/mainline/plays/[playId]` mounts the Play Hub.
- The Overview tab loads real play, team, progress, and recent-history data.
- Team, Progress, Plans, History, and Settings remain intentionally small tab
  shells until their workflows are implemented.
- The Team slice has a verified backend mutation path for adding a team member;
  no Team form is mounted yet.

### Codex

- Pokémon browse and game-scoped Pokémon detail are implemented with seeded
  reference data.
- Games browse, game detail, and game Pokedex routes are implemented.
- Species-only Pokémon detail routes redirect to a default supported game.

### Global Features

- Authentication, proxy session refresh, app shell, module-aware navigation,
  settings, site pages, and health surfaces have explicit owners.

## Current Product-Design Checkpoint

The next phase is a complete V1 product-design pass before database correction
or frontend feature implementation. The canonical continuation brief is
[V1 Screen Flow And Design Handoff](./design/v1-screen-flow.md).

The product overview, V1 scope, landing and intro direction, shared shell,
navigation baseline, Play-creation direction, and detailed Play Overview, Team,
Progress, and Plan information architecture have been reviewed in the
[V1 Design Workspace](./design/v1/README.md). The current step is to continue
the depth-first functional review through the remaining Play Hub and V1 screen
families while keeping the whole-screen inventory, shared patterns, and
database-requirements matrix coherent. The Team interaction contract is
accepted, as are the Progress Overview hierarchy and complete Story interaction
contract; their visual composition still needs validation in the later visual
phase. The Pokédex interaction contract is accepted, including a provisional
card-rail selector that must be re-evaluated through realistic desktop and
mobile UI. The Collectibles interaction contract is also accepted, including
exact-entry and honest count-only import paths. Progress now keeps one stable
Overview entry without persistent area sub-tabs. The Play Plan contract is
accepted as a full-width target-to-actual comparison list with Plan-owned
relationship actions and no persistent Pokémon detail panel. The Play History
contract is accepted as one meaningful full-width timeline with honest journey
ordering and contextual event-detail sheets. Play Settings information
architecture is accepted as one section-scoped workspace with explicit save,
lifecycle, archive, and destructive-action behavior. Its game-aware Completion
& Tracking hierarchy, simplified General metadata contract, and distinct
reusable Rules & Tags behavior are also accepted. Routine status transitions
now have lightweight date-aware behavior: Start and Mark completed suggest
editable Exact Today values, historical completion starts as `Not recorded`,
and normal Reopen preserves recorded completion knowledge. The inside-out V1
Play functional contract is accepted. Plays Browse now has an accepted
single-column library structure, information hierarchy, and six-position
current-form Active-Team sprite preview. Its two-level search, filter, and sort
structure, Archive behavior, explicit loading, and context-preserving recovery
states are also accepted. The complete Plays Browse V1 functional contract can
now support the Dashboard derivation; exact visual composition remains pending.
Dashboard review has started with a provisional play-led hierarchy. Dedicated
quick-stat cards and a duplicated Quick Actions card are intentionally excluded
so continuation, other recent Plays, and meaningful activity remain primary.
The dominant summary uses the most recently updated non-archived Play with
status-aware Continue, Start, or Revisit language; a user-selected favorite is
preserved for the future backlog rather than added to V1 persistence.
Its accepted content hierarchy is cover-led identity, Journey, six current-form
Active-Team sprite states, one trustworthy overall Progress summary, and one
routed Play Header Next Step without a duplicate Dashboard mutation.
Other Recent Plays is accepted as up to three compact cover-led rows using the
same meaningful-activity order, without duplicating Team, Progress, or another
Next Step.
Recent Meaningful Activity is accepted as up to four compact cross-Play History
rows with honest effective dates, event-time identity when useful, and direct
routes to the owning Play History. V1 has no global activity route.
V1 initial page loading now uses the existing shared accessible page-level
Spinner throughout the app. Skeleton loading is excluded from V1 and preserved
in the future backlog; in-place operations keep valid content visible and use
localized pending feedback.
Dashboard no-Play, only-archived, partial-data, isolated-section failure,
complete failure, and stale-focus recovery states are accepted. The Dashboard
V1 functional contract is complete and now awaits the three-direction visual
checkpoint.

Accepted direction:

- Design the complete Mainline and Codex journey, beginning with the shared
  shell and Mainline Dashboard.
- Treat the existing UI and legacy design images as optional references rather
  than constraints.
- Keep Codex publicly browsable.
- Let authenticated users start a Plan or Play from Codex Game Detail.
- Create Plays through concise details followed by a game-aware completion goal
  with optional progressive customization.
- Keep Team as a list-detail workspace over a fixed current roster and uncapped
  Past Members, with named lifecycle actions, quiet atomic placement, guarded
  correction, and read-only Plan comparison.
- Keep Progress Overview centered on trustworthy normalized completion and
  direct handoffs into Story, Pokédex, and Collectibles; optional content remains
  scope rather than a fourth progress category.
- Keep Progress as one stable Hub tab that always opens its Overview; focused
  Story, Pokédex, and Collectibles routes use a clear return and at most an
  optional compact sibling-area menu rather than persistent sub-tabs.
- Keep Story as a game-aware list-detail workspace whose explicit prerequisites,
  rather than presentation order, determine dependencies and next objectives.
- Keep routine milestone completion quiet; reserve deliberate History and Team
  snapshots for `Record story moment`, and handle imported Story catch-up
  through an atomic dependency-aware preview with unknown dates by default.
- Keep Pokédex progress species-level with responsive Grid/List browsing,
  explicit Missing/Seen/Caught state, exact reviewed batch updates, and honest
  imported `Not recorded` state; keep named-Pokédex selection visually
  prominent.
- Prototype named-Pokédex selection as a responsive card rail, preserve the
  active scope in the route, and replace the component later if visual testing
  shows that it competes with the species browser or does not scale cleanly.
- Treat remaining Mainline layout choices as functional hypotheses until the
  first coherent UI draft can validate hierarchy, density, responsiveness, and
  shared patterns across the complete Play Hub.
- Keep Collectibles adaptive: family-grouped list-detail for identifiable
  entries, honest count-only imported progress when identities are unknown,
  exact reviewed batches, and no routine History noise.
- Keep Play Plan as a full-width target-to-actual list with six stable Primary
  positions, compact Alternates, explicit relationship states, non-judgmental
  off-plan context, and Plan-owned editing and relationship actions.
- Keep Play History as a full-width meaningful timeline with compact filters,
  exact, approximate, and unrecorded chronology, contextual detail sheets,
  guarded event-time correction, Highlights, and no bulk importer.
- Keep Play Settings as one locally sectioned workspace with explicit
  section-scoped saves, read-only game identity, distinct Rules and Tags,
  guarded lifecycle and destructive actions, and one durable Play-notes field.
- Merge durable Play notes into General and preserve Exact, Approximate, or
  `Not recorded` started and completed dates without inventing day precision or
  changing lifecycle implicitly.
- Keep Rules and Tags visually and semantically distinct, use honest checkable
  versus recorded-only rule capability, keep V1 checks warning-only, save local
  attachments and configuration atomically, and defer shared-definition
  administration.
- Keep routine status transitions in the persistent Play Header, reuse any
  promoted adaptive Next Step instead of duplicating its CTA, and reserve Play
  Status & Management for recorded-status correction, Archive, Restore, and
  Delete.
- Treat normal Reopen as continuation: preserve a recorded completion date as
  `Previously completed on ...`; clear it only when `Correct recorded status`
  confirms that the completion itself was a mistake.
- Use focused date sheets for Start, Mark completed, and historical completion;
  keep Pause, Resume, and Reopen immediate; confirm Abandon without inventing an
  abandonment date; and never change Progress or History automatically.
- Defer the proposed next-session bookmark beyond V1 until Overview or Journey
  Status proves a frequent use distinct from Story, History, Play-wide next
  actions, and durable Play notes.
- Configure Main Story, applicable optional Story paths, named Pokédexes,
  optional Pokédex requirements, and Collectible groups through consistent
  completion, track-only, or not-tracked meanings while preserving recorded
  data and previewing recalculation before save.
- Let authenticated users add a Pokémon from Codex to a compatible Plan or
  Play, with Mainline owning destination selection, validation, and mutation.
- Preserve the chosen Codex context and intended action through login.
- Derive a screen-by-screen data-requirements matrix, then use it for the
  planned database correctness and reference-seed audit before production
  implementation resumes.
- Limit that database pass to missing or correctness-critical support for
  accepted V1 behavior; move non-blocking schema generalization, convenience
  projections, and richer administration to the future backlog.
- Preserve every improvement excluded from V1 as a concrete backlog item with
  its intended outcome, deferral reason, and future reconsideration trigger.

No V1 visual direction has been selected. After the blueprint and screen
requirements are reviewed, the visual checkpoint is to produce exactly three
directions for the shared application shell and Mainline Dashboard, then wait
for one to be chosen before building UI.

## Known Gaps

- There is no committed authenticated end-to-end browser suite.
- Authenticated Play Hub visual coverage still requires a stable test user or
  deterministic local browser fixture.
- Codex reference-query performance has not yet been profiled under realistic
  usage.
- The V1 visual direction, responsive screen set, and state matrix have not yet
  been selected or designed.
- Team-derived requirements have exposed confirmed gaps in atomic roster
  placement, explicit known-empty versus not-recorded current slots, the
  distinction between selectable fixed forms and game-valid directed form
  transitions, current/past lifecycle support, and Plan-safe correction or
  deletion. Remaining screen-derived requirements and the full reference-data
  audit are still pending.
- Future product families remain backlog and should not receive schema or UI
  work before Mainline is useful end to end.

## Verification Checkpoint

The repository currently provides:

- Architecture enforcement over the active source tree.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 133 schema sources, 890 seed sources, and 638,246
  seed rows.
- Four pgTAP files with 52 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, and representative mutations.
- Local database reset, SQL formatting, lint, test, and generated-type parity.

See [Verification](./app/verification.md) for commands and environment limits.
