# Voydex Docs

This folder is the app-side knowledge base for Voydex.

The docs here explain the product, frontend architecture, co-located Voydex
database, and settled decisions.

## Source Ownership

| Area                                         | Source of truth                     |
| -------------------------------------------- | ----------------------------------- |
| Product direction, app flow, UI architecture | `docs`                              |
| Frontend implementation                      | `src`                               |
| Active app assets                            | `public`                            |
| Database schema and seeds                    | `database/schema`, `database/seeds` |
| Database architecture/table contract         | `docs/database`                     |

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
- [Verification](./app/verification.md)
- [Design System](./app/design-system.md)

### Architecture Decisions

- [ADR 0001: Modular Monolith](./decisions/0001-modular-monolith.md)
- [ADR 0002: Co-Locate Database Source](./decisions/0002-colocate-database-source.md)

### Design

- [Design References](./design/README.md)
- [Codex Pokemon Detail Direction](./design/codex-pokemon-detail.md)

### Database

- [Database Docs](./database/README.md)
- [Database Integration](./database/integration.md)

### Collaboration

- [Codex Handoff](./codex-handoff.md)

## Current Build Direction

Voydex is a Pokémon companion app. It should help a user track, remember, and plan Pokémon playthroughs without needing to open every cartridge, console, or save file.

The active product family is `mainline`, covering mainline-style Pokémon RPG playthroughs, including Legends-style RPG entries where the same play/team/Pokedex companion model still applies. The user-facing app workspace label for this experience is Mainline. Other product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` are planned as future product areas with their own behavior. `Codex` is the shared reference browser module.

The current implementation is a Next.js app with its Voydex Supabase source
co-located under `database`. Mainline Plays and the public Codex are the mounted
product surfaces; broader product documents also describe planned work.
