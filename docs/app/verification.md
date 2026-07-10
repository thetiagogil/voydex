# Verification

Voydex uses layered checks so architecture changes can be separated from
product regressions.

## Automated Local Gate

Run the complete gate before merging:

```bash
npm run verify
```

The command runs, in order:

1. `npm run format:check`
2. `npm run lint`
3. `npm run typecheck`
4. `npm run architecture:check`
5. `npm run test`
6. `npm run build`

Use an individual command while diagnosing a failure. `npm run test:watch` is
available for local unit-test development.

The GitHub Actions `Quality` workflow runs the same individual gates on pull
requests and pushes to `main` with Node.js 22.

## Architecture Check

The architecture checker is intentionally transition-aware. It currently
protects boundaries that the pre-refactor code already satisfies:

- shared and platform layers do not depend on product/application layers;
- product modules do not depend laterally on each other, except for the
  directed future dependency on `reference`;
- Client Components do not import server query/reader modules;
- component folders do not create/import database clients or issue raw
  `.schema(...)` reads.

Tighten the checker after each migration phase instead of adding a permanent
allow-list for architecture debt.

## Browser Smoke Baseline

For architecture-only phases, verify that the nearest representative routes
still load and that navigation behavior is unchanged.

Phase 0 baseline recorded on 2026-07-10:

- `/` rendered meaningful content and navigation with no console errors or
  framework error overlay.
- The home-page `Browse Codex` link navigated to `/codex/pokemon`; the live
  catalogue rendered seeded results with no console errors.
- `/codex/games` rendered seeded game cards with no console errors at desktop
  width and remained usable at a 390 x 844 mobile viewport.
- An unauthenticated request to `/mainline/plays` redirected to
  `/login?next=%2Fmainline%2Fplays` and rendered the login form without console
  errors.
- Authenticated Mainline and Play Hub data were not exercised because this
  baseline did not use or create test credentials.

| Surface               | Representative route                      | Expected access                    |
| --------------------- | ----------------------------------------- | ---------------------------------- |
| Public site           | `/`                                       | public                             |
| Public Codex browse   | `/codex/pokemon`                          | public                             |
| Public Games browse   | `/codex/games`                            | public                             |
| Pokemon detail        | `/codex/pokemon/[gameSlug]/[speciesSlug]` | public, valid seeded identifiers   |
| Mainline Plays        | `/mainline/plays`                         | authenticated                      |
| Play Hub              | `/mainline/plays/[playId]`                | authenticated, owned valid play ID |
| Settings              | `/settings`                               | authenticated                      |
| Health endpoint       | `/api/health`                             | public                             |
| Species menu endpoint | `/api/codex/pokemon-menu?...`             | public valid query                 |

For meaningful UI changes, check at least one desktop and one mobile viewport,
keyboard focus, overflow, loading/empty/error states relevant to the change,
and browser console/runtime errors. Authentication and database-backed routes
require a valid `.env.local` and accessible Supabase project.

## Database Phases

Database relocation or contract work needs its own local Supabase checks in
addition to the app gate. Those commands remain documented in
[Database Integration](../database/integration.md) until the database source is
co-located.
