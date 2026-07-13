# V1 Data Requirements And Database Gaps

This document captures data needs discovered while designing V1. It supports a
later database correctness, completeness, security, and reference-seed audit;
it does not authorize schema, seed, or production-data changes during the
design phase.

## Recording Rules

- Tie every requirement to a screen or journey ID from the
  [Product Blueprint](./product-blueprint.md).
- Describe the user-visible need before proposing a database solution.
- Separate confirmed implementation evidence from assumptions.
- Check authored schema, seeds, generated types, policies, and relevant queries
  before marking a gap confirmed.
- Record reference-data correctness and missing reference facts separately from
  user-owned schema or workflow gaps.
- Capture authorization, validation, transactional, loading, conflict, and
  failure requirements—not only displayed fields.
- Defer fixes until the full design-derived matrix is reviewed.

## Evidence Status

- **Unreviewed**: design need recorded; database not inspected.
- **Supported**: current database appears to meet the need.
- **Partial**: some required behavior or data exists, but coverage is incomplete.
- **Confirmed gap**: implementation evidence shows the requirement is missing
  or incorrect.
- **Not a database concern**: requirement belongs in application or
  presentation logic.
- **Resolved**: later database work was completed and verified.

## Screen Data-Requirements Matrix

Add one row for each meaningful screen capability rather than one vague row per
screen.

| Requirement ID | Screen/journey        | User-visible need                                                                                                                                                                         | Reference reads                                                                                       | User-owned reads/writes                                                                                                     | Auth and validation                                                                                                                 | Failure/conflict states                                                                                                              | Evidence status        | Gap IDs |
| -------------- | --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ | ---------------------- | ------- |
| DR-001         | G-01, J-01            | Normal signed-in entry opens the default view of the last active available module; V1 falls back to Mainline                                                                              | Available module metadata and default routes                                                          | Read and update last active module; persistence scope is still open                                                         | Explicit URLs and validated post-login targets take precedence; reject unavailable or unauthorized modules                          | Missing, unknown, retired, or unauthorized preference falls back safely                                                              | Unreviewed             | —       |
| DR-002         | G-01                  | Landing uses matched day/night scenes based on the resolved app theme                                                                                                                     | —                                                                                                     | —                                                                                                                           | Theme resolution must respect system preference and any later explicit user choice                                                  | Decorative asset failure, contrast, and theme-flash fallback                                                                         | Not a database concern | —       |
| DR-003         | M-04–M-12             | Load one owner-scoped Play context with game identity, lifecycle, metadata, settings, optional content, and applicable Hub areas                                                          | Game and tracking definitions                                                                         | Play, settings, rules, tags, and optional-content state                                                                     | Authenticate owner and reject unavailable game/content combinations                                                                 | Missing, unauthorized, archived, deleted, partial-read, and unsupported-area states                                                  | Unreviewed             | —       |
| DR-004         | M-04                  | Derive a concise Overview from current team, applicable progress, recent meaningful history, and next actions                                                                             | Pokémon, game, Pokédex, story, and collectible context                                                | Owner-scoped roster, progress, events, snapshots, and linked Plan                                                           | Summaries must preserve Play settings and content scope                                                                             | Empty new Play, sparse historical import, partial section failure, and no applicable track                                           | Unreviewed             | —       |
| DR-005         | M-05                  | Manage active, reserve, and historical Pokémon with correction and recorded-event paths                                                                                                   | Pokémon, forms, moves, abilities, and game availability                                               | Roster and lifecycle writes plus optional event/history writes                                                              | Enforce ownership, slots, capacity, reuse, availability, form, and content scope                                                    | Full roster, duplicate/reuse warning, unavailable form, stale edit, and mutation failure                                             | Unreviewed             | —       |
| DR-006         | M-06–M-09             | Show and update only applicable Story, Pokédex, and Collectible progress and derive completion                                                                                            | Tracking definitions, game Pokédex entries, collectibles, and optional scopes                         | Sparse owner-scoped progress writes and Play completion settings                                                            | Validate game/content applicability and bulk operations                                                                             | Disabled track, zero total, partial definitions, conflict, and bulk mutation failure                                                 | Unreviewed             | —       |
| DR-007         | M-10                  | Show one focused linked Team Plan and relate planned targets to actual Play Pokémon                                                                                                       | Pokémon availability, forms, evolutions, and optional content                                         | Plan, Play-Plan link, planned members, and actual-member links                                                              | Enforce ownership, one focused link, reuse, availability, and form rules                                                            | No linked Plan, unavailable target, evolution conflict, skipped target, and stale link                                               | Unreviewed             | —       |
| DR-008         | M-04, M-11            | Preserve and order meaningful events, journal entries, snapshots, and imported history, then derive a concise Recent History preview without routine progress noise                       | Event-time Pokémon, milestone, progress-scope, and lifecycle context                                  | Owner-scoped events, event Pokémon, snapshots, date certainty, and manual ordering                                          | Distinguish recorded history from corrections and routine progress writes while preserving historical identity                      | Unknown or approximate date, manual order, missing snapshot detail, sparse import, and failed event write                            | Unreviewed             | —       |
| DR-009         | M-12                  | Edit Play metadata, lifecycle, tracking scope, optional content, archive state, and destructive actions                                                                                   | Game/content constraints                                                                              | Play and settings writes, archive, and delete                                                                               | Authenticate owner, validate lifecycle/settings, and confirm destructive actions                                                    | Invalid lifecycle transition, incompatible scope, unsaved changes, and delete failure                                                | Unreviewed             | —       |
| DR-010         | M-03, M-04–M-09, M-11 | Create a usable Play from concise identity, lifecycle, and completion-goal input, then let an existing or historical save be initialized progressively inside the owning Play areas       | Game-aware roster options, milestones, Pokédex entries, collectible groups, and availability          | Initial Play plus normal roster, progress, and event writes from each owning area                                           | Preserve ownership, lifecycle, content scope, species-level Pokédex truth, and transactional bulk behavior                          | User leaves setup sparse, unknown earlier history, large progress sets, stale bulk edits, and partial failure                        | Unreviewed             | —       |
| DR-011         | M-03, M-05            | Add actual current-team Pokémon through a searchable game-aware selector while treating linked Plan members only as suggestions or link targets                                           | Pokémon, forms, game availability, evolution paths, optional content, and planned targets             | Current roster writes and optional Plan-member links                                                                        | Validate ownership, capacity, slots, availability, form, optional content, and reuse rules                                          | No matches, unavailable planned target, full roster, stale Plan link, and failed add                                                 | Unreviewed             | —       |
| DR-012         | M-03, M-06–M-09       | Configure applicable Pokédex and Collectible tracking scopes separately from recording exact progress, using species states and the interaction mode required by each collectible group   | Game/content-scoped Pokédexes and entries; collectible groups, entries, and tracking-mode metadata    | Per-Play tracking scope plus species, entry, quantity, or milestone progress as applicable                                  | Reject incompatible scopes and validate explicit bulk operations without replacing exact identity with an unsupported total         | Unsupported tracking mode, optional content removed, large result set, stale bulk edit, unknown exact identity, and partial failure  | Unreviewed             | —       |
| DR-013         | M-03, M-12            | Present a concise game-aware completion recommendation during creation and persist a custom definition covering optional content, Pokédex scopes, optional entry groups, and Collectibles | Per-game completion defaults; content-to-Pokédex, optional-entry, and collectible-group relationships | Play completion settings, enabled content scopes, selected Pokédex scopes or entry groups, and applicable collectible scope | Validate that every selected completion requirement belongs to the Play's game and enabled content; keep Story in the base contract | Missing recommendation, incomplete reference relationships, incompatible custom scope, changed content scope, and failed create      | Unreviewed             | —       |
| DR-014         | M-04, M-06–M-09       | Distinguish genuinely known zero progress from progress that has not yet been recorded for an imported active, paused, completed, or abandoned Play before showing counts or completion   | Applicable Story, Pokédex, and Collectible definitions and completion denominators                    | Per-Play or per-track initialization/knowledge state, or another reliable derivation from user-owned progress               | Preserve sparse-progress defaults without misrepresenting an existing save; validate initialization and later bulk catch-up         | Missing rows are ambiguous, partially initialized tracks, completion shown too early, reset after scope changes, and partial failure | Unreviewed             | —       |
| DR-015         | M-04–M-12             | Derive the shared Play Header's concise completion state and highest-priority Play-wide action from lifecycle, trusted progress, Team and Story context, and configured scope             | Game identity, completion definitions, and applicable tracking definitions                            | Owner-scoped Play metadata, settings, rules, roster, progress, events, and linked Plan state                                | Preserve ownership and never infer known progress or setup completion from ambiguous missing rows                                   | Partial reads, unknown progress, no meaningful next action, stale recommendation, and incompatible completion scope                  | Unreviewed             | —       |
| DR-016         | M-04, M-05            | Distinguish a genuinely empty active lineup from an imported, uninitialized, or partially remembered Team before rendering Overview slots or Team summaries                               | Pokémon and form identity                                                                             | Owner-scoped current roster plus a reliable Team knowledge/completeness state or another supported derivation               | Preserve ownership, slot capacity, lifecycle context, and the distinction between unknown and confirmed empty                       | Missing Team rows are ambiguous, partial historical recall, stale lineup state, and unavailable member detail                        | Unreviewed             | —       |
| DR-017         | M-04, M-06–M-09       | Derive stable Story, Pokédex, and Collectibles percentages from native child tracks using explicit normalized weighting, goal contribution, and reliable knowledge state                  | Applicable Story tracks, Pokédex scopes and entries, Collectible groups and tracking-mode definitions | Per-Play tracking/completion scope plus owner-scoped child-track progress and initialization state                          | Preserve ownership, selected content scope, overlapping Pokédex semantics, heterogeneous Collectible modes, and unknown-versus-zero | Missing child denominators, incorrect weighting, uninitialized or partially recorded groups, stale scope, and partial reads          | Unreviewed             | —       |

## Database-Gap Register

Only add a gap after recording the design requirement that exposed it.

| Gap ID | Requirement IDs | Category | Observed need                                  | Evidence | Status | Later action |
| ------ | --------------- | -------- | ---------------------------------------------- | -------- | ------ | ------------ |
| —      | —               | —        | No specific V1 screen-derived gap recorded yet | —        | —      | —            |

Recommended categories:

- reference correctness;
- missing reference facts;
- user-owned schema;
- derived read model;
- validation or constraint;
- transaction or mutation;
- authorization, RLS, or grants;
- indexing or query performance;
- generated-type or application-contract parity.

## Later Audit Gate

Before production implementation resumes:

1. Review every approved V1 screen and state for matrix coverage.
2. Inspect current schema, seeds, policies, generated types, and app queries.
3. Mark each requirement supported, partial, a confirmed gap, or not a database
   concern.
4. Group confirmed gaps into cohesive database changes.
5. Implement authored schema and seed corrections.
6. Rebuild generated artifacts and types.
7. Run the complete database verification gate.
8. Recheck the approved designs against the corrected data contract.
