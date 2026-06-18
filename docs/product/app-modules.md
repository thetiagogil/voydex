# App Modules

App modules describe product behavior families. They do not replace database schemas.

Schemas describe data responsibility:

- `reference`
- `tracking`
- `gameplay`
- `planning`
- `views`
- `public`

Modules describe which type of Pokemon experience the app is supporting.

## Current Module Set

| Module     | Status  | Meaning                                                                                                                                                                                                                                             |
| ---------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `mainline` | Active  | Mainline-style Pokemon RPG playthrough companion, including traditional mainline games, remakes, Let's Go-style entries, and Legends-style RPG entries where team, story, Pokedex, collectibles, and planning apply. User-facing label: Adventures. |
| `dungeon`  | Future  | Mystery Dungeon-style games with different team, recruitment, dungeon, and story tracking needs.                                                                                                                                                    |
| `pokopia`  | Future  | Pokopia-style life/simulation module. Exact feature model should be defined after official scope is stable.                                                                                                                                         |
| `go`       | Future  | Pokemon GO companion module, likely focused on collection, living inventory, events, and goals rather than playthroughs.                                                                                                                            |
| `home`     | Future  | Pokemon HOME/living-dex planning and completion support inside Voydex, without direct HOME account integration at first.                                                                                                                            |
| `ranger`   | Backlog | Ranger-style games. Likely separate progress and capture mechanics.                                                                                                                                                                                 |
| `sleep`    | Backlog | Pokemon Sleep tracking ideas. Not part of the initial app scope.                                                                                                                                                                                    |

## Why Not One Schema Per Module

One schema per module would make shared concepts harder to maintain and would duplicate access/RLS patterns.

Voydex keeps schemas by data responsibility and uses module prefixes where table behavior is module-specific. Mainline-specific tables and functions use the `mainline_` prefix, for example `gameplay.mainline_plays`. Future module tables can use their own prefixes if their behavior diverges.

## What Modules Share

Most modules can share:

- User account and profile.
- Visual shell and design language.
- Tags and preferences where the semantics are global.
- Some reference Pokemon identity data.
- Some item, type, move, ability, and species data if relevant.
- High-level navigation patterns.

## What Modules Should Not Force Share

Different modules should not be forced to share:

- Play/team data models.
- Pokedex completion rules.
- Story progression tables.
- Planning workflows.
- Completion calculations.
- Timeline semantics.

For example, a Mystery Dungeon module probably should not reuse the exact `mainline_plays` team model if recruitment, dungeons, and parties behave differently.

## UI Implication

The app can eventually have a module selector or module-aware dashboard. Entering a module should feel like entering a focused app area under the Voydex umbrella.

The `mainline` module is the first priority. Other modules should be added after the mainline database and Adventures UI are useful, unless a future feature requires shared foundations now.
