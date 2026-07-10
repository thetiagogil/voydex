# Voydex Product Docs

These docs define the Voydex product contract. They include both implemented
behavior and accepted future direction; implementation-status claims should be
checked against `docs/codex-handoff.md` and current code.

Database table-level details live in `docs/database`. Product docs should explain
user behavior, app flow, and app-facing expectations.

## Documents

- [Product Vision](./vision.md)
- [Feature Contract](./feature-contract.md)
- [Navigation And Routes](./navigation-and-routes.md)
- [App Modules And Product Families](./app-modules.md)
- [Data Ownership](./data-ownership.md)
- [Glossary](./glossary.md)
- [Decision Log](./decision-log.md)
- [Backlog](./backlog.md)

## Product Summary

Voydex is a Pokémon companion app for tracking, remembering, and planning playthroughs across games.

The product pillars are:

- Track a playthrough.
- Remember the user's Pokémon history.
- Plan the next run.
- Search reference Pokémon/game data.

The database and app should be designed for the full product direction, not only the first release.

The active product family is `mainline`, with Mainline as the user-facing app workspace label. Future product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` should be designed as separate product behavior areas under the Voydex umbrella. `Codex` is the shared reference browser module; it can later expose authenticated contextual actions that hand off to the owning module for validation and mutation.
