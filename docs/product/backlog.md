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

## Achievements

Derived user achievements may be added later.

Examples:

- First completed play.
- Completed every game in a generation.
- Completed a monotype run.
- Used every starter.
- Completed a regional Pokedex.

Achievements should be derived from real user data when possible, not manually maintained.
