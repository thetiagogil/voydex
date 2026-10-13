# ADR 0005: Supabase Postgres Is The Backend

- Status: Accepted
- Date: 2026-10-13

## Context

Voydex is a web app today and may get a phone app later. Server Actions run on
the Next.js server, but they act as the signed-in user, and Postgres RLS
already decides what that user can read and write. Several multi-table writes
(`create-play-command.ts`, `save-plan-command.ts`, `play-event-writer.ts`) run
as separate TypeScript writes, so a dropped connection can leave half a
change, and a non-web client could not reuse them.

The project runs on free tiers while it is personal. The owner wants the logic
kept in code so a later move to another host stays possible.

## Decision

- Supabase Postgres is the backend for every client: RLS for access,
  constraints for truth, and one database function per write that touches
  more than one table or creates a History moment.
- Database functions live as plain Postgres SQL in `database/schema`, so the
  logic stays in the repository and runs on any Postgres host.
- Server Actions are thin web adapters: check the session, validate, call one
  function or a single-table write.
- Readers and commands receive a Supabase client as a parameter. `data/`,
  `domain/` and `utils/` folders never import Next.js, React or
  `src/platform`.
- Server-only jobs that need a secret key (export, account deletion, backups)
  become Supabase Edge Functions when a second client needs them.
- The stack is Next.js, Vercel and Supabase for now, not forever. Avoid
  host-only features, so a move stays a hosting change, not a rewrite.

## Consequences

- Moving the three multi-step TypeScript writes into database functions is a
  schema change, scheduled after the redesign merges.
- Supabase Auth (`auth.uid()` in policies) and Storage are the parts tied to
  Supabase; leaving Supabase means replacing those two, not the logic.
- `architecture:check` gains the portability rule once the repository passes
  it.
