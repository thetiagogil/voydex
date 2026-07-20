# Gameplay Development Fixtures

Local resets create a login-capable fixture account and a deterministic set of
playthrough scenarios for product and database testing.

- Email: `fixture@voydex.test`
- Password: `voydex-local`
- Scope: local Supabase only

The dataset contains exactly two plays for each of the 22 supported base version
groups: one populated play and one deliberately blank play. Populated plays are
distributed across early, middle, late, story-complete, postgame, and true 100%
completion stages, while lifecycle statuses include playing, paused, completed,
abandoned, archived, and not started where applicable.

The 22 populated plays collectively cover settings, game-valid six-member teams,
four-move sets, all roster states, milestone decisions, Pokedex and collectible
progress, every event type and origin, Pokemon references, team snapshots, tags,
custom challenge rules, optional content, all game-list states, reusable team
plans, planned alternates, and every plan realization state. The blank partner
plays intentionally have no gameplay children so empty-state UI remains easy to
test.

The fixture owner UUID intentionally matches the dedicated hosted development
account used for visual testing. Only gameplay seed files `002` through `006` can be applied
to that account, and only after an explicit linked-project authorization. The
Auth fixture in `001_local_fixture_user.sql` must never be applied remotely.
