# Personalization

This is the Personalization part of the [Feature Contract](../feature-contract.md).

## Play Metadata

Plays should support metadata useful for old and current games:

- Trainer name.
- Platform or console.
- Started date.
- Completed date.
- Playtime.
- Save notes.

## Rules And Challenges

Rules/challenges can attach to plays and plans.

Examples:

- Nuzlocke.
- Monotype.
- No repeated species.
- No repeated forms.
- No repeated evolution families.
- Shiny-only.
- No legendary Pokémon.
- Custom rules.

Rules should be modeled flexibly. The app should support immutable predefined
rules and reusable user-authored custom rules. A rule explicitly declares
whether Voydex can evaluate it or only record it. Pokémon reuse rules apply
both when planning teams and when adding Pokémon to a play team.

For V1, the shipped application catalogue owns that capability and the supported
configuration for predefined rules; custom rules are recorded only. A later
version may move those contracts into generalized database metadata if a real
administration or extensibility need appears.

Pokémon reuse checks should support both real usage warnings and preemptive warnings. Real usage warnings validate the Pokémon being selected now. Preemptive warnings validate planned targets and future evolution destinations so the user is not surprised later in a play.

Predefined rules should be structured where they affect app behavior.
User-authored descriptive rules should also be supported for personal
challenges that the app cannot validate yet. V1 evaluates supported rules as
warnings rather than hard action blockers.

## Tags

Tags should be user-owned and attachable to:

- Plays.
- Play Pokémon.

Plans keep challenge rules but no tags: a Plan's rules are copied into a
Play when it starts following the Plan (a snapshot the Play can remove; the
Plan picker says which rules each Plan brings).

Tags should support filtering and personal organization.

Tags never affect completion, gameplay validation, or History. Detaching a
shared Tag from one record does not delete the reusable Tag.

## Library

The Library (`/mainline/library`) keeps the rules and tags you reuse across
Plays and Plans, in two tabs:

- **Rules:** a card per rule you can pick, Voydex's built-in ones (marked
  Built-in, never edited or deleted) and yours, with its kind and how many
  Plays and Plans keep it. New rule, in the page's head, makes one with a
  name and a kind; a rule's menu edits its name and kind or deletes it.
- **Tags:** a pill per tag with how many Plays wear it; the pill
  opens Rename and Delete, and New tag in the head makes one.

Renaming fixes the name everywhere it's used. Deleting is for good, after a
confirm that says which Plays and Plans it leaves, and every link goes with
it. Names are unique per trainer, ignoring case.

A Play's settings (rules and tags) and a Plan's details (rules) show only
the ones it keeps, each with a corner × that takes it off that record only. "+ Add" opens a picker of the rest of your Library with a search;
a name nothing has yet offers Create, which makes it in the Library and adds
it. The picker's foot links to the Library. A Play's changes save with its
card's Save; a Plan's with its details' Save. Rule sets (a Nuzlocke as a group
of rules) are the Library's next tab.

## Backlog And Wishlist

Users should be able to track game-level intent:

- Want to play.
- Planned.
- Playing.
- Completed.
- Skipped.

This is separate from a play. A user may want to play a game before creating a concrete playthrough.

Creating or completing a play can suggest updates to backlog/wishlist status, but the game intent row remains independent user intent rather than a strict mirror of play status.

Game List lives as the second clear view inside Mainline Plans Hub. `Add game`
defaults to Want to Play and lets the user confirm another intent and optional
note. Codex Game Detail uses the same confirmation with the game prefilled.
Creating a Plan, starting a Play, or completing a Play may offer an explicit
intent update, but never changes the row silently. Removing the row deletes
only that independent intent and note, not any Plan, Play, Team, Progress, or
History data.

## Pokémon Biography

Play Pokémon should support optional personal biography fields:

- Met/caught location.
- Met level.
- Ball.
- Personal notes.
- MVP flag.
- Final status.

These fields enrich Collection and timeline features.

## Pokémon-Relevant Items

Voydex should not become an item encyclopedia.

The item catalog should only include items that are held by Pokémon or are essential to Pokémon biography/mechanics:

- Poke Balls for caught-ball history.
- Held items for team display and planning.
- Evolution items where they explain evolution history or availability.
- Fossils where they explain Pokémon origin/availability.
- Form-change items where they affect selectable/displayed Pokémon forms.
- Berries, Mega Stones, and Z-Crystals as held item subgroups.

General medicine, treasures, ingredients, decorations, clothing, mail, generic key items, and unrelated bag items should stay out unless a future feature needs them.
