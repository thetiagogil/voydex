# App Modules And Product Families

Voydex uses two related but different concepts:

- App modules are frontend product workspaces inside the Voydex app.
- Product families are Pokemon content/game families stored in the database.

They should not be treated as the same layer. A frontend module can read from one or more product families, and a product family can later support multiple app surfaces.

## Database Schemas

Schemas describe data responsibility:

- `reference`
- `tracking`
- `gameplay`
- `planning`
- `views`
- `public`

Schemas are not feature modules. Voydex keeps schemas by data responsibility and uses explicit prefixes where table behavior is product-family-specific, such as `mainline_`.

## App Modules

App modules describe the Voydex UI workspaces and product surfaces.

| Module     | Status | Meaning                                                                |
| ---------- | ------ | ---------------------------------------------------------------------- |
| `mainline` | Active | Mainline playthrough workspace. User-facing label: Mainline.           |
| `codex`    | Active | Public-readable reference browser for Pokemon, games, and generations. |

Dashboard is a view inside the `mainline` module. Settings is a global account/app preference area, not a product module.

The navbar uses a module switcher backed by the `voydex-active-module` cookie. Entering a module should feel like entering a focused app area under the Voydex umbrella.

## Product Families

Product families describe Pokemon game/content families in reference data.

| Product family | Status  | Meaning                                                                                                                                                                                                                                      |
| -------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `mainline`     | Active  | Mainline-style Pokemon RPG content, including traditional mainline games, remakes, Let's Go-style entries, and Legends-style RPG entries where team, story, Pokedex, collectibles, and planning apply. The app-facing workspace is Mainline. |
| `dungeon`      | Planned | Mystery Dungeon-style games with different team, recruitment, dungeon, and story tracking needs.                                                                                                                                             |
| `pokopia`      | Planned | Pokopia-style life/simulation content. Exact feature model should be defined after official scope is stable.                                                                                                                                 |
| `go`           | Planned | Pokemon GO companion data, likely focused on collection, living inventory, events, and goals rather than playthroughs.                                                                                                                       |
| `home`         | Planned | Pokemon HOME/living-dex planning and completion support inside Voydex, without direct HOME account integration at first.                                                                                                                     |
| `ranger`       | Backlog | Ranger-style games. Likely separate progress and capture mechanics.                                                                                                                                                                          |
| `sleep`        | Backlog | Pokemon Sleep tracking ideas. Not part of the initial app scope.                                                                                                                                                                             |

`codex` is not a product family. It is a frontend module that can browse reference data across product families as the database grows.

## Shared Boundaries

Most app modules can share:

- User account and profile.
- Visual shell and design language.
- Tags and preferences where the semantics are global.
- Pokemon identity reference data.
- Item, type, move, ability, and species data if relevant.
- High-level navigation patterns.

Different product families should not be forced to share:

- Play/team data models.
- Pokedex completion rules.
- Story progression tables.
- Planning workflows.
- Completion calculations.
- Timeline semantics.

For example, a Mystery Dungeon product family probably should not reuse the exact `mainline_plays` team model if recruitment, dungeons, and parties behave differently.

## Implementation Direction

The first build target is the mainline product family and the Mainline module, plus the Codex reference browser needed to support planning and browsing.

Future product families should be added after the mainline database and Mainline UI are useful, unless a future feature requires shared foundations now.
