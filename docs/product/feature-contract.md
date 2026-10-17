# Feature Contract

This document defines the agreed feature set for the Voydex rebuild.

## Product Scope

The active V1 target is the `mainline` product family and its Mainline app
workspace: traditional mainline and Legends-style Pokémon RPG playthrough
tracking, planning, Pokédex search, Collection, and stats.

Frontend modules and database product families are related but distinct. The
active modules are Mainline, the authenticated playthrough workspace, and
Codex, the shared public reference browser. Codex is not a database product
family and does not own gameplay or planning mutations.

Possible later product families include Mystery Dungeon, Pokopia, Pokémon
HOME, Pokémon GO, Pokémon Snap, Ranger, and Sleep. They are outside V1 and are
not implementation commitments. They should not distort the `mainline`
play/team/story model. They can share account, reference, style, and high-level
shell concepts while using product-family-specific workflows and data models
where needed.

## V1 Loading Pattern

Initial asynchronous page reads use one accessible page-level Spinner inside
the persistent application shell. V1 does not use Skeleton placeholders. When
valid page content already exists, preserve it and place pending Spinner
feedback on the responsible control or section. Loading never substitutes for
empty, partial, unavailable, or error behavior.

## By Area

Each area has its own contract:

| Area                                                                     | What it covers                                                                         |
| ------------------------------------------------------------------------ | -------------------------------------------------------------------------------------- |
| [Mainline Home And Plays](./feature-contract/mainline-home-and-plays.md) | Mainline Home, the Plays list and what a Play is.                                      |
| [Play Hub](./feature-contract/play-hub.md)                               | The Play hub: its shell, navigation and Overview.                                      |
| [Team](./feature-contract/team.md)                                       | Team management: the Roster, the editor, Plan comparison and Analysis.                 |
| [Progress](./feature-contract/progress.md)                               | Progress navigation, Story, the Pokédex and Collectibles.                              |
| [History And Play Settings](./feature-contract/history-and-settings.md)  | A Play's timeline and journal, and its settings.                                       |
| [Plans](./feature-contract/plans.md)                                     | The Team Planner and My Plans.                                                         |
| [Collection And Statistics](./feature-contract/collection-and-stats.md)  | Collection and Statistics across every Play.                                           |
| [Codex](./feature-contract/codex.md)                                     | Pokémon browse and detail, Games, game Pokédexes and Codex browse.                     |
| [Accounts, Settings And System States](./feature-contract/app-shell.md)  | Authentication, global settings and the shared system states.                          |
| [Personalization](./feature-contract/personalization.md)                 | Metadata, rules and challenges, tags, the backlog and wishlist, biographies and items. |
