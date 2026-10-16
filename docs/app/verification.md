# Verification

Voydex uses layered checks so the smallest credible gate can be run while
diagnosing, with complete gates available before merging.

## Application Gate

```bash
npm run verify
```

The command runs documentation validation, the retired-design guard,
formatting, lint, type-checking, architecture boundaries, Knip, Vitest, and the
production build. `design:check` fails on any reference to the journal design
that Soft Clay replaced; see [Design System](./design-system.md). `knip` fails
on a file, export, type or package nothing uses; its settings are in
`knip.json` (the vendored primitives under `src/shared/components/ui` and the
generated database types may keep unused exports, and the Supabase CLI and
`sharp` are reached outside imports).

Individual commands remain available:

```bash
npm run docs:check
npm run design:check
npm run format:check
npm run lint
npm run typecheck
npm run architecture:check
npm run knip
npm run test
npm run build
```

## Database Gate

Start local Supabase before running the executable database checks:

```bash
npm run db:start
npm run db:verify
```

`db:verify` performs a fresh reset/seed, offline source audits, SQL format check,
database lint, pgTAP, and generated-type parity. `npm run verify:all` runs
`db:verify` followed by the application gate.

The offline `db:audit` does not require Docker and runs in the normal Quality
workflow. The Docker-backed Database Quality workflow runs when database-related
paths change.

## Browser Gate

Meaningful UI work also requires a real browser check at desktop and mobile
widths. Verify:

- Intended loading, empty, error, disabled, and long-content states.
- Keyboard flow, visible focus, labels, semantics, and non-color status cues.
- Responsive hierarchy, overflow, and the supported V1 light theme.
- Console errors, framework overlays, and failed network requests.

Representative public routes include `/`, `/codex/pokemon`, `/codex/games`, and
game-scoped Pokémon detail. Representative authenticated routes include
`/mainline/plays`, an owned Play Hub, and `/settings`.

There is not yet a committed authenticated end-to-end browser suite. If a tool
cannot reach a host-local development server, report that as an environment
limitation rather than claiming visual verification.

## Current Automated Coverage

- Architecture checks enforce layer, module, client/server, and raw-database
  boundaries.
- Vitest covers focused domain, mapping, navigation, auth, and tooling behavior.
- Offline database audits validate authored schema and the full deterministic
  seed corpus.
- pgTAP covers structural security, client access, cross-user RLS, view
  isolation, and representative transactional mutations.

Exact current counts belong in [Project Status](../project-status.md).
