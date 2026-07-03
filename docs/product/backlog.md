# Backlog

These features are accepted product directions but are not immediate implementation targets.

## Shareable Recap

Generate a shareable play recap from:

- Play metadata.
- Timeline.
- Final team/Hall of Fame snapshot.
- Completion stats.
- Favorite or MVP Pokémon.

The current schema should make this possible through play events and snapshots, but no public sharing surface is required yet.

## HOME / Living Dex

Add a `home` module for Pokémon HOME-style living-dex support inside Voydex.

Initial direction:

- No direct Pokémon HOME account connection.
- Help users plan and track living-dex completion.
- Support species/form targets where useful.
- Connect to user history when helpful, but do not force HOME tracking into mainline playthrough tables.

This should likely be a V2 module after the mainline playthrough companion is usable.

## Other App Modules

Future modules:

- `dungeon`
- `pokopia`
- `go`
- `ranger`
- `sleep`

Each module needs its own product design before schema work. Do not force these games into the `mainline` play/team/story model if their mechanics differ.

## Progression-Aware Planning

Support planning by story point, location, or progression gate.

Example questions:

- Which Pokémon are available before the third badge?
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

## Codex Pokemon Detail Follow-Ups

The Pokemon detail page has its V1 section foundation in place. Keep these
items out of the immediate path unless they become necessary for the next
workflow.

Future work:

- Add Pokedex entry text once the database has game/version scoped entry data.
- Add a richer breeding/training section once the database has more than egg
  groups, such as gender ratio, hatch cycles, catch rate, growth rate, base
  friendship, and base EXP.
- Improve evolution requirement presentation after item/method images are
  available. The current hover label is acceptable for now.
- Use form rules and item requirements for team-building behavior, not as a
  primary Pokemon detail section for now.
- Keep species flags and color primarily as browse/filter metadata unless a
  detail-page use case becomes clear.
- Improve Availability after structured encounter/location/source data exists.

## Codex Action Surfaces

Codex should eventually connect reference browsing to authenticated app
workflows without becoming owned by Mainline.

Future Codex actions:

- Add to plan.
- Add to play team.
- Start a plan with the current Pokemon.
- Check availability in one of the user's plays.
- Compare with a planned team.
- Mark as target.
- Find where this Pokemon fits.

The `Mark as target` flow is useful when a user wants to remember a Pokemon for
a future run without committing to a concrete team plan yet.

Future Pokemon browse overlays:

- Already used.
- Used as this form.
- Planned.
- Targeted.
- Never used.

Codex should pass selected context to module-owned workflows rather than owning
the mutation. For Mainline, that context can include species, form, selected
game, version group, availability scope, and DLC/transfer requirements.

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
