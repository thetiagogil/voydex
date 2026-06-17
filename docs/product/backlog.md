# Backlog

These features are accepted product directions but are not immediate implementation targets.

## Shareable Recap

Generate a shareable play recap from:

- Play metadata.
- Timeline.
- Final team/Hall of Fame snapshot.
- Completion stats.
- Favorite or MVP Pokemon.

The current schema should make this possible through play events and snapshots, but no public sharing surface is required yet.

## HOME / Living Dex

Add a `home` module for Pokemon HOME-style living-dex support inside Voydex.

Initial direction:

- No direct Pokemon HOME account connection.
- Help users plan and track living-dex completion.
- Support species/form targets where useful.
- Connect to user history when helpful, but do not force HOME tracking into core playthrough tables.

This should likely be a V2 module after the core playthrough companion is usable.

## Other App Modules

Future modules:

- `dungeon`
- `pokopia`
- `go`
- `ranger`
- `sleep`

Each module needs its own product design before schema work. Do not force these games into the `core` play/team/story model if their mechanics differ.

## Progression-Aware Planning

Support planning by story point, location, or progression gate.

Example questions:

- Which Pokemon are available before the third badge?
- Which planned team members can I catch before the Elite Four?
- Which moves/items are available before a given story milestone?

This requires future reference data such as:

- Locations.
- Encounters.
- Encounter methods.
- Story gates.
- Game-specific availability windows.

The database should not block this future direction, but the initial clean schema does not need full encounter/location seed coverage.

## Optional Pokedex Expansion

Regional Pokedexes are the baseline. National and special Pokedexes are supported optional scopes when seeded.

Future work:

- Expand optional Pokedex seed coverage where games support meaningful National or special post-game Pokedexes.
- Decide UI treatment for multiple Pokedexes in one play.
- Decide how optional Pokedex scopes affect dashboard and stats summaries.

## Platform-Specific Rerelease Differences

Reference availability currently models original historical game behavior.

If rereleases, enhanced platforms, or online-service changes alter availability, model that explicitly through platform/content-scope data instead of mutating canonical original-game rows.

## Achievements

Derived user achievements may be added later.

Examples:

- First completed play.
- Completed every game in a generation.
- Completed a monotype run.
- Used every starter.
- Completed a regional Pokedex.

Achievements should be derived from real user data when possible, not manually maintained.
