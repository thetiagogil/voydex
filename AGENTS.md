# Voydex Agent Entry Point

This root file is the auto-discovered entry point for AI work in Voydex. The
global Workforce controls delegation; this repository controls product,
architecture, UI, and verification decisions.

## Read By Scope

Avoid loading every project document into every specialist. After this root
guide, read only what the task needs:

- `.agents/AGENTS.md`: the relevant detailed engineering convention before
  implementation or review;
- `docs/codex-handoff.md`: continuation work or questions about the current
  implementation checkpoint;
- `docs/app/architecture.md`: boundary, ownership, or data-flow changes;
- `docs/app/design-system.md`: UI implementation or visual review;
- feature product/design docs: only for the touched area;
- nearby implementation files and their tests or verification paths: always.

Treat code and generated types as implementation evidence. If documentation
conflicts, stop relying on the stale statement and update the canonical doc when
that is within scope.

## Product And Repository Boundaries

- Voydex is a Pokemon companion app with `mainline` and `codex` as the active
  frontend modules.
- Keep `src/app` routes thin. Feature implementation belongs under
  `src/modules` or `src/features`; reusable app UI belongs under `src/shared`.
- Preserve the query, loader, mapper, selector, and component boundaries defined
  in `.agents/AGENTS.md`.
- Never create Supabase clients or raw `.schema(...)` reads in UI components.
- The database source of truth is the sibling `00-databases/projects/voydex`
  project. Do not change schema, seeds, or Supabase config from this repo.
- App-consumed generated types live at `src/shared/types/database.types.ts`.

## Workforce Routing

The root orchestrator remains the only user-facing agent and owns the final
result.

- Use one agent for normal work.
- Use the explorer only when repository ownership or data flow is unclear.
- Use the product designer for significant new UX direction, then give one
  frontend engineer ownership of implementation.
- Use the reviewer for non-trivial diffs, with special attention to architecture
  and file/folder cleanliness.
- Use the verifier for focused checks and browser evidence.
- Use the database guardian for cross-repository schema, seed, RLS, grant, or
  factual-data concerns; implementation still happens in `00-databases`.
- Keep one source writer. Parallel work should be independent and usually
  read-only.

## UI And UX Gate

UI quality is a first-class acceptance criterion. For meaningful visual work:

- inspect the design system and the nearest reference screens first;
- preserve Voydex's clean adventure-companion character rather than producing a
  generic corporate dashboard;
- verify hierarchy, spacing, typography, density, responsive layout, and
  overflow at desktop and mobile widths;
- handle relevant loading, empty, error, disabled, success, permission, and
  long-content states;
- verify keyboard flow, focus visibility, labels, semantics, and non-color
  status cues;
- check light and dark themes when the touched surface supports both;
- reuse shadcn/Base UI and shared primitives with the composition rules in the
  detailed guide;
- treat generated screenshots as design intent, not automatic pixel contracts.

## Review Gate

Review concrete behavior and organization, not cosmetic preferences:

- route files stay thin;
- server orchestration, raw loading, pure mapping, and UI remain separated;
- filenames and exports are explicit and searchable;
- shared behavior sits at the nearest stable boundary;
- abstractions have a real responsibility and do not hide duplicated styling;
- types remain strict and relevant async/error/permission states are covered;
- accessibility and responsive behavior are preserved;
- docs and handoffs still describe the changed implementation accurately.

## Verification

For normal frontend changes, run the relevant subset, expanding with risk:

```powershell
npm.cmd run format:check
npm.cmd run lint
npm.cmd run build
```

For UI work, also run a browser check at desktop and mobile widths and inspect
console/runtime errors. State exact results and distinguish environment failures
from product failures.

## Durable Knowledge

- Stable conventions belong in this file or `.agents/AGENTS.md`.
- Current implementation status and next slices belong in
  `docs/codex-handoff.md` or the relevant design document.
- Promote user corrections only when they are durable and evidence-backed.
- Do not duplicate volatile status across several guidance files.
- Keep cross-machine state in tracked docs and Git, not only in chat context.
