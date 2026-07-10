# Voydex Documentation

This directory is the human-readable knowledge base for Voydex. Each fact has
one canonical owner; other documents should link to it instead of restating it.

## Authority Map

| Concern                                    | Canonical source                                                      |
| ------------------------------------------ | --------------------------------------------------------------------- |
| Product purpose and principles             | [Product Vision](./product/vision.md)                                 |
| User-visible behavior                      | [Feature Contract](./product/feature-contract.md)                     |
| Navigation and user flows                  | [Navigation And Routes](./product/navigation-and-routes.md)           |
| State ownership and derivation             | [Data Ownership](./product/data-ownership.md)                         |
| Current implementation and next work       | [Project Status](./project-status.md)                                 |
| Frontend boundaries                        | [Frontend Architecture](./app/architecture.md)                        |
| Setup and verification                     | [Setup](./app/setup.md) and [Verification](./app/verification.md)     |
| Database structure and integration         | [Database Architecture](./database/architecture.md)                   |
| Tables, constraints, grants, and policies  | `database/schema`                                                     |
| Seed facts                                 | `database/seeds`                                                      |
| Durable architecture rationale             | [Architecture Decision Records](./decisions/0001-modular-monolith.md) |
| Mounted routes and implementation behavior | `src` and its tests                                                   |

## Product

- [Product Vision](./product/vision.md)
- [Feature Contract](./product/feature-contract.md)
- [Navigation And Routes](./product/navigation-and-routes.md)
- [Data Ownership](./product/data-ownership.md)
- [Glossary](./product/glossary.md)
- [Backlog](./product/backlog.md)

Product docs may describe accepted future direction, but every planned surface
must be labeled as planned. Only [Project Status](./project-status.md) records
which slices are currently implemented.

## Application

- [Frontend Architecture](./app/architecture.md)
- [Design System](./app/design-system.md)
- [Setup And Development](./app/setup.md)
- [Verification](./app/verification.md)

## Database

- [Database Overview](./database/README.md)
- [Database Architecture](./database/architecture.md)
- [Schema Contract](./database/schema-contract.md)
- [Database Decisions](./database/decisions.md)
- [Reference Data](./database/reference-data.md)
- [Security And Indexing](./database/security.md)

## Decisions And Design

- [ADR 0001: Modular Monolith](./decisions/0001-modular-monolith.md)
- [ADR 0002: Co-Locate Database Source](./decisions/0002-colocate-database-source.md)
- [ADR 0003: Shared Visual Primitives](./decisions/0003-shared-visual-primitives.md)
- [Design References](./design/README.md)
- [Codex Pokémon Detail Direction](./design/codex-pokemon-detail.md)

## Documentation Rules

- Link to the canonical owner instead of copying contracts or status.
- Keep completed phase journals in Git history, not the active documentation
  tree.
- Keep volatile progress only in [Project Status](./project-status.md).
- Prefer focused documents over monolithic table-by-table inventories.
- Update documentation in the same change when its implementation contract
  changes.
- Run `npm run docs:check` to validate links, reachability, and design assets.
