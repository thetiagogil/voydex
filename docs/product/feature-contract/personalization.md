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

Rules/challenges attach to Plays. A Plan is a team, so it keeps none; rule
sets (such as a Nuzlocke) will live in the Library.

Voydex ships its own rules, one small idea each, grouped by kind
(`database/seeds/04_gameplay/002_mainline_challenge_rules.sql`):

- **Catching:** First catch per area, Shiny only.
- **Losing:** Release on faint, Whiteout ends the run.
- **Team:** Nickname everything, Monotype, No legendaries, No Pokémon reuse,
  No trades.
- **Battles:** Level caps, No battle items, Set battle mode.

Presets that group them (Nuzlocke, Hardcore Nuzlocke) are rule sets, and
come with the Library's rule sets. Your own rules take the Custom kind or
any other.

A rule's `config` lists the options a Play can set and their defaults; a
Play's own values live on its link to the rule (`config_override`), and the
database refuses an option the rule lacks, a value of the wrong kind, a
missing Monotype type, or a type the Play's game doesn't have, or an unknown reuse scope. Three rules
have options:

- **Monotype:** the type, picked per Play from the types its game has (no
  Fairy before Generation VI). A Play can't keep Monotype without one.
- **First catch per area:** "Shinies can always be caught", off by default.
- **No Pokémon reuse:** what counts as the same Pokémon, its exact form, its
  species (the default) or its whole evolution family, the scopes of the
  Pokémon Reuse Policy in the [Glossary](../glossary.md).

The chip names the options ("Monotype · Water", "First catch per area ·
except shinies"), and tapping it opens them; adding a rule with options opens
them at once.

Rules should be modeled flexibly. The app should support immutable predefined
rules and reusable user-authored custom rules. A rule explicitly declares
whether Voydex can evaluate it or only record it. Pokémon reuse rules apply
when adding Pokémon to a Play's team.

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

Plans keep no tags.

Tags should support filtering and personal organization.

Tags never affect completion, gameplay validation, or History. Detaching a
shared Tag from one record does not delete the reusable Tag.

## Library

The Library (`/mainline/library`) keeps the rules and tags you reuse across
Plays, in two tabs:

- **Rules:** a card per rule you can pick, Voydex's own (a lock marked
  Voydex, never edited or deleted, with what the rule asks) and yours, with
  its kind and how many Plays keep it. Tapping a card opens the rule in full:
  everything it asks, the options each Play sets for it and, for yours, Edit
  and Delete. The bar narrows rules by kind and by who made them (Voydex's
  or yours). New rule, in the page's head, makes one with a
  name and a kind; a rule's menu edits its name and kind or deletes it.
- **Tags:** a pill per tag with how many Plays wear it; the pill
  opens Rename and Delete, and New tag in the head makes one.

Renaming fixes the name everywhere it's used. Deleting is for good, after a
confirm that says how many Plays it leaves, and every link goes with
it. Names are unique per trainer, ignoring case.

A Play's settings show only the rules and tags it keeps, each with a corner × that takes it off that Play only. "+ Add" opens a picker of the rest of your Library with a search;
a name nothing has yet offers Create, which makes it in the Library and adds
it. The picker's foot links to the Library. Changes save with the card's
Save. Rule sets (a Nuzlocke as a group
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
