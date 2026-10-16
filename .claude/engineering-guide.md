# Voydex Engineering Guide

[CLAUDE.md](../CLAUDE.md) is the entry point. This guide holds the durable
implementation practice that does not fit there. Product behavior and current
status belong in the [documentation index](../docs/README.md); ownership and
file responsibilities are canonical in
[Frontend Architecture](../docs/app/architecture.md), which this guide links
to rather than repeats.

## Development Workflow

The main session owns the task from understanding through handoff.
Subagents are optional tools for isolated judgment, bounded delegated work or
independent evidence; they are not mandatory pipeline stages.

### 1. Orient And Scope

- Record the initial `git status` and preserve unrelated changes.
- Read [Project Status](../docs/project-status.md) and only the architecture,
  product, design, database, code, tests and configuration relevant to the
  requested boundary.
- Before a consequential or ambiguous change, restate the outcome, acceptance
  criteria, important constraints and material exclusions. Answer from the
  repository before asking the user something the project can answer.
- Treat remote writes, production mutations, deployments, destructive Git,
  schema changes, new dependencies, infrastructure changes and communication
  to other people as separate authority gates.

### 2. Inspect The Existing System

- Trace the real route, ownership, data flow, types, states and tests before
  editing. For UI work, also read the design system, shared primitives and
  comparable live surfaces.
- Search for an established component, utility, domain rule, query, action or
  test pattern before creating one. Apply the Component Consistency Gate below
  to recurring UI patterns.
- Choose the smallest cohesive change that solves the root cause. Call out
  documentation drift when implementation evidence disagrees with a canonical
  document, and fix the document when that is in scope.

### 3. Implement With One Writer

- Implement normal work directly. Do not delegate routine exploration,
  focused edits, documentation, tests or project-native checks.
- Keep one source writer at a time. Never run overlapping writing agents
  against the same worktree, and never split a cohesive change only to
  parallelize it.
- Preserve boundaries, strict types, validation, authorization, errors, async
  states, accessibility, responsive behavior and the supported theme. Add
  focused tests when behavior or a stable contract changes.

### 4. Verify In Layers

- Run the smallest relevant checks while iterating (`npx vitest run <path>`,
  `npm run typecheck`, `npm run lint`, `npm run architecture:check`), then
  inspect the final diff and run `git diff --check`.
- Run `npm run verify` before merging normal work. Database work additionally
  needs a running local Supabase stack and `npm run db:verify`.
- Meaningful UI work also needs desktop and phone browser checks (tablet too
  when the composition changes), console inspection, keyboard and focus
  checks, and the states relevant to the change.
- Report exact commands and outcomes. Separate product failures, environment
  limits, pre-existing warnings and checks that were not run.

### 5. Review And Handoff

- Review the final diff for correctness, security, data integrity,
  architecture fit, types, edge cases, accessibility, performance,
  testability, regression risk and file placement. No preference-only
  findings.
- Update Project Status only when the checkpoint, next slice or known gaps
  materially changed. Keep volatile progress out of agent guidance.
- For a computer-change handoff, update only `Next Chat Handoff` in
  [Project Status](../docs/project-status.md).
- Finish with the outcome, changed files, exact verification, unverified risks
  or next steps, and a suggested commit message after non-trivial changes.

## Delegation

The roster lives in [CLAUDE.md](../CLAUDE.md#workforce) and each definition in
`.claude/agents/`. When delegating:

- State the objective, exact scope (files or folders the agent may write),
  relevant context, constraints, required evidence or return shape, and the
  stop condition.
- A writing subagent (`product-engineer`, `ui-engineer`, `database-engineer`)
  owns its assigned files until it returns. Inspect and integrate its result
  before editing those files again.
- Read-only subagents (`code-reviewer`, `pokemon-domain-expert`) never edit;
  `verifier` may only produce ignored build, cache or test artifacts and must
  stop if tracked files change.
- Validate a specialist's evidence before relying on it; the main session
  completes verification and answers the user.

## Ownership And Placement

[Frontend Architecture](../docs/app/architecture.md) is canonical for the
source layout, dependency direction table, module and view-family shapes, and
read/write file roles. The rules most often missed:

- A leaf view never imports another leaf view's internals. Move a genuinely
  shared formatter, contract, mapper or UI foundation to the nearest Hub,
  feature or view-family owner; `npm run architecture:check` enforces this for
  Play Hub views.
- Prefer the smallest leaf-view vocabulary: `sections` for visible page areas,
  `server` for server-only workflows and persistence, `utils` for small pure
  helpers, `data` for substantial pure models. Add `components` only for UI
  reused across sections and `client` only for browser-owned state.
- Name the owner of a top-level visible page card `*Section`; reserve `*Card`
  for reusable visual cards, `*Detail` or `*Inspector` for contextual content,
  and `*Sheet` for responsive overlays.
- No empty responsibility folders, and no folder names outside the closed
  vocabulary (Agreed Folder Names in the architecture guide);
  `npm run architecture:check` rejects them. `domain` exists only in
  `reference`, for its game mechanics and type rules.
- Cross-module consumers use the public contracts of `src/modules/reference`
  (`types.ts`, `reference-data.ts`, `reference-rows.ts`); concrete catalogue
  components and domain utilities may use their explicit feature paths.

## Reads And Writes

- Readers distinguish an empty result from a failed read. Never turn a failed
  required query into an empty array or `null` the UI can mistake for
  authoritative absence.
- Give each route the smallest cohesive read model it needs; an Overview
  preview must not reuse a detailed workspace reader that loads unrelated
  data.
- Server Actions authenticate explicitly and parse their input with Zod. Multi-table
  writes follow action → validated command → repository or RPC → database
  constraints and RLS; these may be files in one `server` folder.
- Long lists (Plays, Collection, History, Collectibles, Pokédexes) load
  their full read model and draw it in batches as you scroll, through the
  shared `LoadMoreTrigger`; search and filters stay local and instant. Page
  from the database only when one trainer's data is too big to download,
  because that moves search, filters and group counts to the server.
- Derived comparisons stay derived. Linked Team Plan statuses are pure
  application mapping over authored Plan targets, Play Pokémon and reference
  evolution edges: keep raw reads, matching, display selection and UI
  separate and tested, and never persist inferred member links or status rows
  unless the product and schema contracts explicitly change.

## Exact-Game Capability Gate

Any game-scoped Pokémon workflow resolves supported mechanics through the
reference-owned capability contract (`resolveGameMechanics` and
`getGameMechanicSupport` in
`src/modules/reference/features/games/domain/game-mechanics.ts`) before
presenting, authoring, validating, comparing or summarizing mechanic-dependent
data.

- Pass the exact game, version group and generation context. Product modules
  and UI must not infer support from null values or local checks such as
  `generationId >= 3`.
- Omit mechanics the resolved game does not support: exclude them from form
  options, mutations, comparison status, derived summaries and empty states
  instead of showing `Any` or `Not recorded`.
- Keep `unsupported`, `unknown`, `supported but unconstrained` and
  `supported but not recorded` distinct; never collapse them into one falsy
  value.
- `reference` owns the capability profile and exact-title exceptions. Codex,
  Mainline and future modules consume it without depending on one another.
- Test the relevant generation or exact-game boundary whenever a supported
  mechanic changes product behavior.

## File And Naming Hygiene

- Keep route files small. Pass one cohesive route model as `data` to the
  feature entry, plus only route-owned identifiers or callbacks.
- Use explicit, searchable filenames and exports; prefer use-case names over
  `queries.ts` or `helpers.ts`.
- Use relative imports within one leaf view or section and `@/` aliases when
  crossing an ownership boundary. No barrel files just to shorten imports.
- Keep `v1` and `v2` out of runtime file, folder and public asset names.
- One responsibility, or a small group of tightly related ones, per file.
  Split when mixed concerns hide data flow, not because a line count was
  crossed: 150–250 lines can stay cohesive, above 250 deserves a
  responsibility review, above 400 is exceptional outside generated data,
  configuration or third-party primitives.
- Avoid tiny one-use helpers that make a workflow harder to follow. Runtime
  helpers do not belong in type-only files.

## UI

The [Design System](../docs/app/design-system.md) is canonical for Soft Clay
tokens, type, loudness, edges, motion, components and copy; the
[Soft Clay Brief](../docs/design/soft-clay-brief.md) holds the agreed
reasoning and screen map. The `ui-engineer` subagent carries the working
checklist.

- Reuse the primitives under `src/shared/components/ui` with Base UI `render`
  composition, unless a local primitive explicitly exposes `asChild`.
- `src/shared/domain/icons/app-icons.ts` is the only application icon
  catalogue: select icons through `appIcons` and render them with `AppIcon`.
  Never import a Lucide icon directly, inline an SVG icon, or pick a nearby
  entry because it looks similar; register a missing semantic icon first.
  Library-owned primitive internals and the custom icons the catalogue imports
  are the only exceptions.
- Keep Tailwind classes canonical and use the role tokens. Keep Client
  Components at the smallest interactive boundary.
- Verify hierarchy, density, spacing, typography, responsive overflow,
  loading, empty, error and disabled states, keyboard use, focus, semantics
  and non-colour cues. Treat phone, tablet and desktop as separate validation
  bands when a composition changes.
- Screenshots and mockups are iteration evidence. Once a direction is chosen,
  record durable behavior in the design system or the nearest design document
  before relying on it in later tasks.

### Component Consistency Gate

Before creating or materially styling a Card, Button, Navigation Menu,
Dropdown, Link, Badge, selector, form control, list row or another recurring
pattern:

1. Search `src/shared/components/ui`, `src/shared/components`, the owning
   feature or module, and comparable product views for existing components,
   variants, wrappers and interaction patterns. Do not limit the search to the
   current route.
2. Name the closest established component or screen as the implementation
   reference. Compare structure, density, spacing, radius, edges, shadows,
   typography, icons, responsive behavior, semantics, and default, hover,
   focus, active, selected, open, disabled, loading and error states as they
   apply.
3. Reuse that component or variant when its contract fits. When several
   surfaces share an interaction contract but differ in content, extract one
   controlled wrapper at the nearest stable owner and expose the difference
   through children, slots or explicit props before adding the new consumer.
4. Keep semantics attached to behavior: navigation uses links, actions use
   buttons, persistent selection exposes selected or pressed state, static
   surfaces stay non-interactive. Use Base UI `render` composition when one
   visual primitive needs different elements; never nest interactive
   controls.
5. Add a new visual or behavioral variant only for a materially different
   contract. Record the reason in the design system and keep the shared
   foundation aligned where the contracts still overlap.

Review UI changes against both the target view and the chosen reference view.
Looking coherent in isolation is not enough.

## Database Work

- Edit authored schema and seeds, then rebuild generated artifacts and types
  through the package scripts.
- Keep browser and server clients under `src/platform/supabase`.
- Keep RLS, grants, constraints, transactional functions and generated types
  aligned with app queries and actions.
- Run `npm run db:verify` after database contract changes. Remote comparisons
  and linked-project commands need explicit authorization.

See [Database Architecture](../docs/database/architecture.md),
[Schema Contract](../docs/database/schema-contract.md) and
[Security](../docs/database/security.md); the `database-engineer` subagent
carries the working checklist.
