# Codex Handoff

Use this file when continuing Voydex in a new Codex thread or on another machine.

## Repositories

```txt
C:\Users\talme\Documents\Dev\Tiago\13-voydex
C:\Users\talme\Documents\Dev\Tiago\00-databases
```

`13-voydex` is the clean active Next.js app.

`00-databases/projects/voydex` is the clean active Supabase database source.

Both repos have `legacy/` folders. Legacy content is reference only.

## Current Product Summary

Voydex is a Pokemon companion app for tracking, remembering, and planning playthroughs.

Main app areas:

- Adventures Dashboard.
- Plays.
- Play Hub.
- Team Management.
- Story Progression.
- Timeline and Journal.
- Pokedex Progress.
- Collectibles.
- Plans.
- Codex Pokemon Search.
- Collection.
- Stats.
- Codex Browse: Generations and Games.
- Settings.

The app should not force `Generations -> Games -> Plays` as the only flow. Users should be able to create and continue plays directly.

## Current Module Scope

Active modules:

- `mainline`: mainline-style Pokemon RPG playthrough companion. User-facing label: Adventures.
- `codex`: public-readable reference browser for Pokemon, games, and generations.

Future modules:

- `dungeon`
- `pokopia`
- `go`
- `home`
- `ranger`
- `sleep`

Do not create one schema per module. Schemas describe data responsibility; modules describe product behavior.

## Key Product Decisions

- Plays are central user-owned adventure records.
- Plans are separate from plays and can exist before a play.
- A play can link multiple plans, with one primary plan.
- Creating a play from a plan does not auto-fill the active team.
- Current roster limit is 6 active plus 6 reserve.
- Retired/replaced Pokemon remain in history but do not count toward the current roster limit.
- Team edits distinguish correction-only edits from recorded in-game changes.
- Timeline is user-facing adventure history, not a technical audit log.
- Story snapshots are optional.
- Pokedex completion is species-level.
- DLC is optional per play.
- National/special Pokedex scopes are optional completion scopes.
- Collection is derived from play Pokemon and meaningful history, not only current team slots.
- Pokemon reuse policy applies to planning and actual team actions.
- Reuse scopes are mutually exclusive and cascading: `none`, `form`, `species`, `evolution_family`.
- Rules support both structured predefined behavior and custom descriptive text.
- The item catalog is Pokemon-relevant only.
- Other Pokemon game families should be separate modules later, not forced into the mainline play model now.
- Dashboard is a `mainline` module view, not a top-level module.
- Active module preference is stored in the `voydex-active-module` cookie.

## Database Contract

Canonical database docs:

```txt
00-databases/projects/voydex/docs
```

Most important handoff doc:

```txt
00-databases/projects/voydex/docs/app-handoff.md
```

App-consumed types:

```txt
13-voydex/src/shared/types/database.types.ts
```

When database types change, copy the generated database type file from `00-databases/projects/voydex/types/database.types.ts` into the app. Do not add an app-side type generation script unless the user asks for one again.

## Frontend Foundation

Current stack:

- Next.js App Router.
- TypeScript.
- Tailwind CSS.
- shadcn-style components.
- Lucide icons.
- Supabase SSR.

Current app status:

- Auth foundation is wired.
- Protected app shell exists.
- Health check banner exists.
- Protected Mainline route surface is intentionally limited to `/adventures/dashboard` until each feature page is implemented.
- Codex routes are mounted under `/codex`.
- Home page hero uses real image layers.

## Working Style Preferences

- Prefer high-quality, maintainable implementation over quick hacks.
- Ask for human opinion on naming or risky product decisions.
- Recommend reasoning effort for the next task.
- In `00-databases`, commit messages should use `type(voydex): message`.
- In `13-voydex`, commit scopes should be feature-specific, such as `feat(home): ...` or `docs(product): ...`.

## Useful Commands

From `13-voydex`:

```bash
npm run dev
npm run format:check
npm run lint
npm run build
```

From `00-databases`:

```powershell
npm.cmd run db:start:voydex
npm.cmd run db:reset:voydex
npm.cmd run db:types:voydex -- --local
node projects\voydex\scripts\audit-seed-files.mjs
node scripts\supabase-target.mjs voydex db lint --local --fail-on error
```

## Cross-Machine Notes

Use Git as the source of truth between Windows and Mac.

Codex local threads and memories are not a replacement for repo docs. Keep durable decisions in docs and code, not only in chat context.
