# Voydex Product Docs

These docs define the product contract for the clean Voydex rebuild.

The current root app is the active implementation. The old prototype is preserved in `legacy/` for reference only and should not be imported from by new code.

Database table-level details live in `00-databases/projects/voydex/docs`. Product docs in this repo should explain user behavior, app flow, and app-facing expectations.

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

Voydex is a Pokemon companion app for tracking, remembering, and planning playthroughs across games.

The product pillars are:

- Track a playthrough.
- Remember the user's Pokemon history.
- Plan the next run.
- Search reference Pokemon/game data.

The database and app should be designed for the full product direction, not only the first release.

The active product family is `mainline`, with Adventures as the likely user-facing app workspace label. Future product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` should be designed as separate product behavior areas under the Voydex umbrella. `Codex` is the shared reference browser module.
