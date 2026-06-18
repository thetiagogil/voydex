# Voydex Docs

This folder is the app-side knowledge base for the clean Voydex rebuild.

The docs here should explain what the product is, how the frontend is organized, how it connects to the Voydex database, and which decisions are already settled. Canonical SQL schema, seed, and table-level source docs live in the separate database repo.

## Source Ownership

| Area                                         | Source of truth                                                                |
| -------------------------------------------- | ------------------------------------------------------------------------------ |
| Product direction, app flow, UI architecture | `13-voydex/docs`                                                               |
| Frontend implementation                      | `13-voydex/src`                                                                |
| Active app assets                            | `13-voydex/public`                                                             |
| Legacy prototype reference                   | `13-voydex/legacy`                                                             |
| Database schema and seeds                    | `00-databases/projects/voydex/schema` and `00-databases/projects/voydex/seeds` |
| Database architecture/table contract         | `00-databases/projects/voydex/docs`                                            |

Do not duplicate full database table blueprints here. Summarize the app contract and link back to `00-databases` when table-level precision matters.

## Documents

### Product

- [Product Vision](./product/vision.md)
- [Feature Contract](./product/feature-contract.md)
- [Navigation And Routes](./product/navigation-and-routes.md)
- [App Modules And Product Families](./product/app-modules.md)
- [Data Ownership](./product/data-ownership.md)
- [Glossary](./product/glossary.md)
- [Decision Log](./product/decision-log.md)
- [Backlog](./product/backlog.md)

### App

- [Frontend Architecture](./app/architecture.md)
- [Setup And Development](./app/setup.md)
- [Design System](./app/design-system.md)

### Database Integration

- [Database Integration](./database/integration.md)

### Collaboration

- [Codex Handoff](./codex-handoff.md)

## Current Build Direction

Voydex is a Pokemon companion app. It should help a user track, remember, and plan Pokemon playthroughs without needing to open every cartridge, console, or save file.

The active product family is `mainline`, covering mainline-style Pokemon RPG playthroughs, including Legends-style RPG entries where the same play/team/Pokedex companion model still applies. The user-facing app workspace label for this experience can be Adventures. Other product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` are planned as future product areas with their own behavior. `Codex` is the shared reference browser module.

The current implementation is a clean Next.js app connected to a clean Supabase database project. The old prototype remains under `legacy/` only for reference.
