# Workflow

How work moves from a report to production, and what each platform feature is
for. The decisions behind it are in
[ADR 0007](../decisions/0007-development-workflow.md). Agents run these flows;
the owner reports, reviews and merges.

## From Report To Production

1. The owner reports a bug, change or idea in chat.
2. An agent files a GitHub Issue with one `type:` label, one `area:` label and
   a milestone.
3. The agent branches from `main` as `fix/...` or `feat/...`, reproduces the
   problem, adds a test that fails, then fixes it.
4. The agent runs `npm run verify` (and `npm run db:verify` for database work)
   and opens a pull request that closes the issue.
5. GitHub Actions run the same checks; Vercel builds a preview.
6. The owner opens the preview, reviews and presses Merge.
7. Vercel deploys `main` to production. Database migrations reach production
   only through a release step the owner approves.

## Labels

| Label                                      | Meaning                                                  |
| ------------------------------------------ | -------------------------------------------------------- |
| `type: bug`                                | Something is broken or wrong                             |
| `type: change`                             | Works, but should work differently                       |
| `type: feature`                            | New capability from the product backlog                  |
| `type: chore`                              | Tooling, docs, refactors                                 |
| `design mismatch`                          | Doesn't match the Soft Clay reference (the v3 mock-up)   |
| `needs data`                               | Waits on data Voydex doesn't have (`TODO(v3-data)` tags) |
| `accessibility`, `performance`, `security` | Quality work in that field                               |
| `priority: high`                           | Do next; everything else is normal                       |

Area labels: `area: mainline`, `area: codex`, `area: reference`,
`area: app-shell`, `area: database`, `area: mobile`.

## Phases

| Milestone           | Contents                                                                                          | Starts                          |
| ------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------- |
| Foundation          | Local database for daily work, CI green, unused packages removed, Playwright and axe, agent setup | Now                             |
| Finish the redesign | Bug, change and design-mismatch issues on the redesign branch                                     | Now                             |
| Restructure         | Multi-table writes into database functions, closed folder names, oversized files split            | After the redesign merges       |
| Harden              | Security headers, Sentry, page-weight budget, accessibility and loading pass, backups             | After Restructure               |
| Data and features   | Schema work for `TODO(v3-data)` placeholders, backlog features                                    | After Restructure               |
| Phone               | Installable web app (PWA); store apps only if demand appears                                      | After Harden, Data and features |

## Platform Features

| Feature                   | What it is                                   | How Voydex uses it                                               | What the owner does         |
| ------------------------- | -------------------------------------------- | ---------------------------------------------------------------- | --------------------------- |
| GitHub Issues             | A to-do item with a discussion               | One per bug, change or feature                                   | Reports in chat             |
| Milestones                | A group of issues with a goal                | One per phase above                                              | Watches the % done          |
| Projects board            | A Kanban view of issues                      | To do, In progress, In review, Done                              | Glances at it               |
| Pull requests             | A proposal to merge a branch into `main`     | Every change, linked to its issue                                | Reviews and merges          |
| GitHub Actions            | Scripts GitHub runs on every pull request    | `verify`, database tests, end-to-end tests                       | Merges only when green      |
| Branch protection         | Rules on `main`                              | No direct pushes; checks must pass                               | Nothing once set            |
| Releases                  | A named, dated version with notes            | One per finished milestone (v0.2, v0.3, ...)                     | Reads the notes             |
| Renovate                  | A bot that opens package-update PRs          | Weekly and grouped; small green updates merge themselves         | Merges the big ones         |
| Vercel previews           | A live copy of the app per pull request      | Checking a change on a phone before merging                      | Opens the preview link      |
| Vercel production         | The real site                                | Deploys when `main` changes                                      | Nothing                     |
| Supabase local            | The database on the owner's Mac (Docker)     | Daily work and all tests; `npm run db:start`, `npm run db:reset` | Nothing                     |
| Supabase hosted           | The production database                      | Previews also point at it while the owner is the only user       | Approves migration releases |
| Supabase Advisors         | Automatic security and speed checks          | Run in CI                                                        | Nothing                     |
| Supabase Auth emails      | Sign-up, magic link and reset emails         | Custom SMTP (a free sender) on our own domain; Soft Clay styling | Approves the wording        |
| Supabase Edge Functions   | Small server jobs                            | Export, account deletion, nightly backup                         | Nothing                     |
| Sentry                    | Error tracking                               | Emails grouped errors with the failing line                      | Reads the email; agents fix |
| Next.js `loading`/`error` | Skeleton and failure screens per route group | One per route group, in Soft Clay                                | Nothing                     |
| Next.js caching           | Remembering results between visits           | Reference data only, never user data                             | Nothing                     |
