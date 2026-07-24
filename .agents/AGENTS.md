# Voydex Engineering Guide

The root [AGENTS.md](../AGENTS.md) is the entry point. This file contains only
durable implementation conventions; product behavior and current status belong
in the canonical [documentation index](../docs/README.md).

## Development Workflow

The root agent owns the task from understanding through handoff. Specialists
are optional tools for isolated judgment or independent evidence; they do not
replace root ownership and are not mandatory stages in a pipeline.

### 1. Orient And Scope

- Record the initial worktree state and preserve unrelated changes.
- Read the root guide, this guide, the current
  [Project Status](../docs/project-status.md), and only the architecture,
  product, design, database, code, tests, and configuration relevant to the
  requested boundary.
- Restate the intended outcome, acceptance criteria, important constraints, and
  material exclusions before a consequential or ambiguous change. Resolve
  evidence from the repository before asking the user questions that the
  project can answer.
- Treat remote writes, production mutations, deployments, destructive Git,
  schema changes, new dependencies, infrastructure changes, and communication
  to other people as separate authority gates.

### 2. Inspect The Existing System

- Trace the real route, ownership, data flow, types, states, and tests before
  editing. For UI work, inspect the design system, the nearest design reference,
  shared primitives, and comparable live surfaces.
- Search for an established component, utility, domain rule, query, action, or
  test pattern before creating a new one. Apply the Component Consistency Gate
  below to recurring UI patterns.
- Choose the smallest cohesive change that solves the root cause. Call out
  documentation drift when implementation evidence disagrees with a canonical
  document, and update that document when the correction is in scope.

### 3. Implement With One Writer

- The root agent implements normal work directly. Do not delegate routine
  exploration, focused edits, documentation, tests, or project-native checks.
- Keep one source writer at a time. Never run overlapping implementation agents
  against the same worktree or split a cohesive change merely to parallelize
  it.
- Preserve established boundaries, strict types, relevant validation,
  authorization, errors, async states, accessibility, responsive behavior, and
  supported themes. Add focused tests when behavior or a stable contract
  changes.

### 4. Verify In Layers

- Run the smallest relevant checks while iterating, then inspect the final diff
  and run `git diff --check`.
- Run `npm run verify` before merging normal application work. Database work
  additionally requires a running local Supabase stack and
  `npm run db:verify`.
- Meaningful UI work also requires desktop and mobile browser checks, console
  inspection, keyboard and focus checks, and the states relevant to the change.
- Report exact commands and outcomes. Separate product failures, environment
  limits, pre-existing warnings, and checks that were not run.

### 5. Review And Handoff

- Review the final diff for correctness, security, data integrity,
  architecture fit, types, edge cases, accessibility, performance,
  testability, regression risk, and file placement. Do not invent
  preference-only findings.
- Update Project Status only when the implementation checkpoint, next slice, or
  known gaps materially changed. Keep volatile progress out of agent guidance.
- For a computer-change handoff, synchronize `Next Chat Handoff` in Project
  Status with the `Resume Prompt` in the canonical
  [V1 Screen Flow](../docs/design/v1-screen-flow.md). Do not create a competing
  handoff file.
- Finish with the outcome, changed files, exact verification, unverified risks
  or next steps, and a suggested commit message after non-trivial changes.

## Specialist Routing

Direct work is the default. Use zero specialists for ordinary tasks and at most
one for an ordinary complex task. Use more than one only when the user
explicitly requests parallel work and the scopes are independent. Specialists
never delegate further.

- `architect`: Read-only review for consequential cross-layer boundaries,
  authentication, security, performance, or genuinely ambiguous application
  design.
- `database_guardian`: Read-only review for schema, SQL, migrations, RLS,
  grants, concurrency, rollback, and data-integrity risk.
- `product_designer`: Read-only implementation brief for significant flows,
  responsive composition, interaction states, accessibility, or design-system
  decisions grounded in current screens or supplied evidence.
- `reviewer`: Independent defect review after non-trivial or high-risk changes
  when a fresh context materially increases confidence.
- `verifier`: Isolated execution of lengthy, noisy, or environment-sensitive
  checks. It may write only ignored test, cache, build, or temporary artifacts
  and must stop if tracked files change beyond the baseline.
- `implementer`: Exceptional bounded source writer only when the user requests
  delegated implementation or context isolation materially improves a complex
  task. The root must stop editing the assigned files, then inspect and
  integrate the result.

Every delegated task must state its objective, exact scope, relevant context,
constraints, required evidence or return shape, and stop condition. The root
remains responsible for validating the specialist's evidence, resolving
conflicts, completing verification, and answering the user.

## Source Layout

The allowed root source layout is:

```txt
src/
  app/
  config/
  features/
  modules/
  platform/
  shared/
  proxy.ts
```

- `app`: thin Next.js route adapters.
- `config`: static application contracts such as routes and modules.
- `features`: cross-app workflows such as auth, app shell, settings, site, and
  system surfaces.
- `modules`: product/domain ownership, currently Mainline, Codex, and the
  internal reference context.
- `platform`: framework and external-service integration.
- `shared`: domain-neutral utilities, generated types, UI primitives, and the
  narrow visual exceptions recorded in ADR 0003.

Do not reintroduce root-level `lib`, `components`, `constants`, or `types`
buckets. Reuse belongs at the nearest stable owner.

## Modules, Features, Views, And Sections

- A module may own multiple features and views.
- A feature may nest view folders when users experience them as distinct
  surfaces, such as browse and detail/hub.
- When one navigation branch owns multiple route-backed surfaces, group them as
  an explicit view family. Keep leaf-view code in named children such as
  `team-overview` and `team-plan`; the family root may contain only contracts,
  data, server reads, or UI foundations genuinely shared by those views.
- A leaf view must not import another leaf view's internals. Move a genuinely
  shared formatter, contract, mapper, or UI foundation to the nearest Hub,
  feature, or view-family owner; the architecture check enforces this boundary
  for Play Hub views.
- A complex view may nest section folders that mirror visible page concerns.
- Name components that own a top-level visible page Card `*Section`. Reserve
  `*Card` for reusable visual cards, `*Detail` or `*Inspector` for contextual
  content, and `*Sheet` for responsive overlays.
- Use `shared` inside a feature only when behavior is reused across that
  feature's views. Create module-wide shared code only after reuse crosses
  features.
- Prefer the smallest recognizable leaf-view vocabulary: `sections` for visible
  page areas, `server` for server-only workflows and persistence, `utils` for
  small pure helpers, and `data` for substantial pure models or transformations.
  Add `components` only for UI reused across sections and `client` only for
  browser-owned state or helpers.
- Do not create empty responsibility folders or mandatory templates.
- Cross-module consumers use the public contracts of `src/modules/reference`.
  Concrete catalogue components and domain utilities may use explicit feature
  paths when those are the intended public implementation surface.

## Read And Write Boundaries

Start with the smallest cohesive boundary and split only when a responsibility
needs independent review, reuse, or testing.

- `server/*-query.ts`: complex read orchestration and public server entry.
- `server/*-reader.ts`: raw Supabase/database I/O. Existing `*-loaders.ts` may
  retain their name.
- `server/*-command.ts`: mutation orchestration when it merits a separately
  tested use case.
- `server/*-repository.ts`: database or external persistence adapter when it
  merits an independently reviewable boundary.
- `data/*-mappers.ts`: pure row-to-model transformation.
- `data/*-selectors.ts`: pure selection over loaded data or models.
- `server/*-action.ts`: Server Actions with explicit authentication and input
  parsing.
- `utils`: small pure validation, formatting, and presentation helpers with
  explicit filenames.
- `components`: UI shared by multiple top-level sections in the same feature or
  view.
- `client`: browser-only state, API, and model helpers.
- `types.ts` or `types/*`: type-only contracts.

Do not create one-file `application`, `infrastructure`, or `display` folders
inside a leaf view. Keep commands and repositories in `server`, and keep small
pure domain validation or display helpers in `utils`. A dedicated `domain`,
`application`, or `infrastructure` boundary remains appropriate for substantial
module-wide rules or workflows that have independent reuse, complexity, and
review needs; the reference-owned game mechanics and Pokémon type rules are
examples of a real domain boundary.

Readers must distinguish an empty result from a failed read. Do not turn a
failed required query into an empty array or `null` that the UI can mistake for
authoritative absence. Give each route the smallest cohesive read model it
needs; an Overview preview must not reuse a detailed workspace reader when that
loads unrelated reference or product data.

Components may own interaction state but never create Supabase clients or issue
raw reads. Client Components may import Server Actions, not server queries or
readers. Multi-table writes follow action → validated command/use case →
repository/RPC → database constraints and RLS. These responsibilities may be
separate files in one `server` folder; they do not require a folder per layer.

Derived comparisons remain derived. In particular, linked Team Plan statuses
are pure application mapping over authored Plan targets, Play Pokémon, and
reference evolution edges. Keep raw reads, matching, display selection, and UI
separate and tested; do not persist inferred member links or status rows unless
the product and schema contracts explicitly change.

## Exact-Game Capability Gate

Any game-scoped Pokémon workflow must resolve supported mechanics through the
reference-owned exact-game capability contract before presenting, authoring,
validating, comparing, or summarizing mechanic-dependent data.

- Pass the exact game, version group, and generation context into the reference
  resolver. Product modules and UI components must not infer support from null
  values or add local checks such as `generationId >= 3`.
- Omit mechanics that the resolved game does not support. Exclude them from
  form options, mutations, comparison status, derived summaries, and empty
  states instead of presenting them as `Any` or `Not recorded`.
- Keep `unsupported`, `unknown`, `supported but unconstrained`, and `supported
  but not recorded` distinct. Do not collapse these states into one falsy value.
- `reference` owns the capability profile and exact-title exceptions. Codex,
  Mainline, and future product modules consume it without depending on one
  another.
- Test the relevant generation or exact-game boundary whenever a supported
  mechanic changes product behavior.

## File And Naming Hygiene

- Keep route files small and import feature-owned page entry points.
- Prefer passing one cohesive route model as `data` to the feature entry,
  alongside only route-owned identifiers or callbacks. Do not make a route
  unpack a model into a long list of view-internal props.
- Use explicit, searchable filenames and exports.
- Use relative imports within one leaf view or section. Use `@/` aliases when
  crossing a view, view-family, Hub, feature, module, platform, or shared
  ownership boundary. Do not add barrel files solely to shorten imports.
- Keep `v1` and `v2` out of runtime filenames, folder names, and public asset
  names until the app has a real multi-version requirement. Version labels may
  remain in documentation and agent guidance where they describe product
  phases or historical decisions.
- Prefer use-case names over vague files such as `queries.ts` or `helpers.ts`.
- Keep one responsibility or a small group of tightly related responsibilities
  per file.
- Split when mixed concerns hide data flow, not merely because a line count was
  crossed.
- Roughly 150–250 lines can remain cohesive; files above 250 lines deserve a
  responsibility review, and files above 400 lines should be exceptional
  outside generated data, configuration, or third-party primitives.
- Avoid tiny one-use helpers that make a workflow harder to follow.
- Runtime helpers do not belong in type-only files.

## UI And Design

- Reuse project shadcn/Base UI primitives under `src/shared/components/ui`.
- Use Base UI `render` composition unless a local primitive explicitly exposes
  `asChild`.
- Use Lucide for interface actions and the shared icon catalogue for branded or
  domain icons.
- Keep Tailwind classes canonical and preserve supported theme tokens.
- Keep Client Components at the smallest interactive boundary.
- Verify hierarchy, density, spacing, typography, responsive overflow, loading,
  empty/error/disabled states, keyboard use, focus, semantics, and non-color
  cues.
- Treat phone, tablet, and desktop as separate validation bands when a view's
  composition changes; do not assume a stretched phone stack is a suitable
  tablet layout.
- Preserve Voydex's clean adventure-companion character; screenshots guide
  intent rather than fixed dimensions.
- Conversation screenshots and generated mockups are iteration evidence. Once
  a direction is selected, record the durable behavior and responsive decisions
  in the nearest versioned design reference before relying on them in future
  tasks.

### Component Consistency Gate

Before creating or materially styling a Card, Button, Navigation Menu,
Dropdown, Link, Badge, selector, form control, list row, or another recurring UI
pattern:

1. Search `src/shared/components/ui`, `src/shared/components`, the owning
   feature or module, and comparable product views for existing components,
   variants, wrappers, and interaction patterns. Do not limit the search to the
   current route.
2. Identify the closest established component or screen as the implementation
   reference. Compare structure, density, spacing, radius, borders, shadows,
   typography, icons, responsive behavior, semantics, and default, hover,
   focus, active, selected, open, disabled, loading, and error states as
   applicable.
3. Reuse that component or variant when its contract fits. When multiple
   surfaces share the same interaction contract but have different content,
   extract one controlled wrapper at the nearest stable owner and expose the
   differing content through children, slots, or explicit props before adding
   the new consumer.
4. Keep semantics attached to behavior: navigation uses links, actions use
   buttons, persistent selection exposes the appropriate selected or pressed
   state, and static surfaces remain non-interactive. Use Base UI `render`
   composition when one visual primitive needs different semantic elements,
   and never create nested interactive controls.
5. Create a new visual or behavioral variant only when the existing reference
   has a materially different contract. Record the reason in the nearest
   design reference and keep the shared foundation aligned where the contracts
   still overlap.

Review UI changes against both the target view and the chosen reference view.
The change is not complete merely because it looks coherent in isolation.

Read [Design System](../docs/app/design-system.md) and the nearest indexed
[design reference](../docs/design/README.md) before meaningful visual work.

## Database Work

- Edit authored schema/seeds, then rebuild generated artifacts through package
  commands.
- Keep browser/server clients under `src/platform/supabase`.
- Keep RLS, grants, constraints, transactional functions, and generated types
  aligned with app queries/actions.
- Use `npm run db:verify` after database contract changes. Remote comparisons
  require explicit authorization.

See [Database Architecture](../docs/database/architecture.md),
[Schema Contract](../docs/database/schema-contract.md), and
[Security](../docs/database/security.md).
