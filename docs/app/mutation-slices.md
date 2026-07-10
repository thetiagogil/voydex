# Mutation Slices

Phase 9 starts with the first Mainline Team write: adding a Pokémon to a
play's active or reserve roster. The slice is intentionally backend-first
because the Team tab is still a shell; a Team form can call the Server Action
without moving database concerns into UI code.

```txt
Team form or client intent
  -> tabs/team/server/add-team-member-action.ts
  -> tabs/team/application/add-team-member-command.ts
  -> tabs/team/domain/team-member-domain.ts
  -> tabs/team/infrastructure/team-repository.ts
  -> gameplay.add_mainline_play_pokemon
  -> gameplay.mainline_play_pokemon, moves, and optional event/ref rows
```

## Responsibilities

- The Server Action verifies an authenticated Supabase claim, parses the form
  adapter input, and revalidates the play route after success.
- The application command is dependency-injected with a repository port so the
  workflow can be tested without a database client.
- The domain validates UUIDs, roster state/slot compatibility, identity IDs,
  level, text limits, gender, and the four-move limit. It does not decide
  ownership or reference-data validity.
- The repository calls the existing `gameplay.add_mainline_play_pokemon`
  security-invoker function. Database constraints, RLS, and the function's
  transaction remain authoritative for ownership, form relationships, roster
  uniqueness, event creation, and cross-table writes.

The next Team slice should add a real form or Codex-owned intent surface and
keep it as a client of this action. Do not duplicate the RPC call in a
component or bypass the command/domain boundary for convenience.
