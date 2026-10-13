# ADR 0007: Development Workflow, Tooling And Money Model

- Status: Accepted
- Date: 2026-10-13

## Context

Bugs, behaviour changes and the backlog lived in chat and in long documents.
Screens were checked by hand, agents could not sign in without the owner, and
some tools were installed but unused. The owner wants every tool used fully,
explained in plain words, and kept on free tiers.

## Decision

- **Local first.** Daily work and all tests run on local Supabase with the
  seeded dev account. The hosted project is production. No extra accounts to
  get more free-tier projects.
- **Work tracking.** Every piece of work is a GitHub Issue with a `type:` and
  an `area:` label; phases are milestones. One issue, one branch, one pull
  request. See [Workflow](../app/workflow.md).
- **Tests.** Unit tests sit next to the file they test. Playwright end-to-end
  tests with axe live in a root `e2e/` folder, database tests in
  `database/supabase/tests`. Every bug fix adds a test that failed before.
- **Tools.** Remove the unused `@radix-ui/themes`, `radix-ui` and `date-fns`.
  Add Zod, Playwright with axe, Knip, Sentry and Renovate.
- **Primitives.** The shadcn files in `src/shared/components/ui` are ours, on
  Base UI. Edit them in place for styling and variants only; never wrap them
  in a second component, never put product logic in them, and pull shadcn
  updates by hand.
- **Folders.** Feature slices use a closed set of folder names, checked by
  `architecture:check` once the redesign merges (see
  [Frontend Architecture](../app/architecture.md)).
- **Money.** Donations only, no paid features. Before taking donations, check
  each tool's terms (Vercel's free Hobby plan is non-commercial only) and
  revise the Terms and Privacy pages and the
  [Business Model](../product/business-model.md).

## Consequences

- The backlog document shrinks as its entries become issues.
- Project Status becomes a short checkpoint.
- Agents explain each GitHub, Vercel and Supabase feature in plain words when
  they switch it on.
