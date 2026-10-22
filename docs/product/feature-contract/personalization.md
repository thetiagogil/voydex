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

Rules/challenges attach to Plays. A Plan is a team, so it keeps none; presets
(such as a Nuzlocke) live in the Library.

Voydex ships its own rules, one small idea each, grouped by kind
(`database/seeds/04_gameplay/002_mainline_challenge_rules.sql`):

- **Catching:** First catch per area, Shiny only.
- **Losing:** Release on faint, Whiteout ends the run.
- **Team:** Nickname everything, Monotype, No legendaries, No Pokémon reuse,
  No trades.
- **Battles:** Level caps, No battle items, Set battle mode.

Presets group them: Voydex's Nuzlocke (First catch per area, Release on
faint, Nickname everything, Whiteout ends the run) and Hardcore Nuzlocke
(the Nuzlocke plus Level caps, No battle items and Set battle mode), and
your own. Adding a preset to a Play adds its rules (the ones the Play
doesn't keep yet); the Play keeps no link to the preset, so any rule comes
off on its own. The Add rule picker lists presets first; a preset with
Monotype opens Monotype's type at once. Your own rules take the Custom kind or
any other.

A rule's `config` lists the options a Play can set and their defaults; a
Play's own values live on its link to the rule (`config_override`), and the
database refuses an option the rule lacks, a value of the wrong kind, a
missing Monotype type, or a type the Play's game doesn't have, or an unknown reuse scope. Three rules
have options:

- **Monotype:** the type, picked per Play from the types its game has (no
  Fairy before Generation VI). A Play can't keep Monotype without one.
- **First catch per area:** "Shinies can always be caught", off by default.
- **No Pokémon reuse:** what counts as the same Pokémon, narrowest first:
  its exact form (the default), its species (any form) or its whole
  evolution family (every member and its forms), the scopes of the
  Pokémon Reuse Policy in the [Glossary](../glossary.md).

The chip names the options ("Monotype · Water", "First catch per area ·
except shinies"), and tapping it opens them; adding a rule with options opens
them at once.

Rules should be modeled flexibly. The app should support immutable predefined
rules and reusable user-authored custom rules. A rule explicitly declares
whether Voydex can evaluate it or only record it.

Voydex checks six of its own rules against the Pokémon you have now (the
team and the reserve) and warns, but never blocks
(`src/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks.ts`):
an amber "N rules broken" chip in the Play's head opens a sheet listing
each broken rule and the Pokémon that break it; on the Team page each such
Pokémon's sticker carries a warning mark and its profile a note naming the
rules; in Add Pokémon the Pokémon that would break a rule are faded (you can
still pick them) and the details step lists what the pick breaks.

- **Shiny only:** a Pokémon recorded as not shiny (Add Pokémon can't know
  yet, so only the Team page says it).
- **Nickname everything:** a Pokémon with no nickname.
- **Monotype:** a Pokémon without the type, by its types in the Play's game.
- **No legendaries:** a Legendary or Mythical species.
- **No Pokémon reuse:** a Pokémon one of your earlier Plays (started before
  this one) used, even one that has evolved since, by the rule's scope; the
  note names the closest use (same form, then species, then family).
- **Level caps:** a Pokémon above the cap, the highest level on the team of
  the first Gym Leader, Kahuna, Elite Four member, Champion or Legends: Z-A
  promotion match Story still has ahead (rivals and bosses don't set it),
  read as Story matchups reads that battle. Where that story point holds
  several such battles in a row, as Jacinthe's tournament does, the cap is
  the strongest of them. Add Pokémon checks the level once it's typed. In Play
  details an "i" tip beside the rule gives the cap and its battle, or why
  there's none: Voydex doesn't have that battle's team (no warning then), or
  no such battle is left.

The rest happen in the game and stay labels, as does every rule of yours, even one named like
Voydex's.

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

The Library (`/mainline/library`) keeps the rules, presets and tags you
reuse across Plays, in three tabs. Rules and Presets each list yours first,
then Voydex's own under "Made by Voydex" (any Play can use them; nobody
can change them):

- **Presets** have their own tab, between Rules and Tags, with a search and
  New preset as the head's main button: a card per preset with its rules.
  A preset keeps no order (a Play takes all its rules
  at once), so its rules always show by kind, then by name. A preset opens
  in full; yours (or New preset) is its name, what
  it's for and its board: the rules in it beside the rules to add. Drag a
  rule across, or use its button (add, take out) on a phone or a keyboard.
  A preset needs at least one rule.
- **Rules:** a card per rule you can pick, yours and Voydex's own, with its
  kind, what it asks and how many Plays keep it.
  Tapping a card opens the rule in full: its kind and who made it ("Made by
  Voydex" or "Made by you") over its name, everything it asks, the options
  each Play sets for it, and the Plays that keep it as the Team Planner's
  See Plays shows a Plan's (each Play's name and team, opening the Play).
  Voydex's own stays as it is; yours opens with its name, kind and
  description ready to change, Save and Delete. New rule, in the page's
  head, makes one with a name, a kind and an optional description. The bar
  narrows rules by kind.
- **Tags:** a pill per tag with how many Plays wear it; the pill opens the
  tag in full the same way (its name, the Plays that wear it, Save and
  Delete), and New tag in the head makes one.

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
