# Collection And Statistics

This is the Collection And Statistics part of the [Feature Contract](../feature-contract.md).

## Collection

Collection is the user's used Pokémon history across plays.

As built (v3, `/mainline/collection`): every species that has joined one of
your teams, as stickers, with Search, a Show choice (All, On a team now, In
several Plays, Shiny), Generation, Sort (Most used by default, Pokédex
number, Recently recorded)
and the type dots. A species opens its sheet (`?species=`): every Pokémon of
it on your Plays' rosters, each opening on its Play's roster, and the games it
joined you in. Archived Plays count. Each sticker carries the same small
count mark as a played game, its Plays on a corner, and no line under the
name; how many were caught is the sheet's to tell. The list opens on Most used; Generation is a filter
beside Sort, never a grouping, so the order holds across the whole
Collection.

Collection has a second view, Favourites (`?view=favourites`), on a
Pokémon | Favourites | Games switch under the head: every Pokémon you hearted
on its Codex entry, newest heart first, one per form (Arcanine and Hisuian
Arcanine are separate favourites). One whose species has joined your teams is
yours, so it wears the sticker with its Play count and opens its sheet; one
that hasn't yet is a plain card ("Not on a team yet") opening its Codex
entry. The heart saves straight away with Undo in the toast; signed out, it
asks you to sign in and comes back to the entry. Before any heart the view is
the empty state with Browse the Codex. Favourites are only what you picked:
Statistics keeps Most used apart from them.

The third view is Games (`?view=games`): one grid of only the games you've played (as the
Pokémon view holds only what joined you), the most Plays leading, then
release order. Each is a card with the owned band and the same small count
mark of your Plays of it, archived ones included, and opens its sheet in
place, as a Pokémon does: the game's cover and Open in Codex, then each Play
of it (trainer and playtime, its status), archived ones in their own section,
each opening on the Play. The head counts the same marks: "You've played 3 of
38 games, across 4 Plays". Before any Play the view is the empty state with
Start a Play. The three views share one toolbar (`CollectionFilterBand`):
search, Show, Generation and Sort, plus the type dots for the two Pokémon
views. Favourites shows All, On your teams or Not yet, and sorts by Newest
heart (the default), Pokédex number or Most used. Games shows All, Playing
now or Completed, and sorts by Most played (the default), Release order or
Name.

It is derived from actual play Pokémon, recorded team lifecycle events, and meaningful snapshots, not only from current active team slots.

It should support filters by:

- Game.
- Generation.
- Species/form.
- Type.
- Shiny.
- Status.
- Tags.
- Used-before state.

Collection also supports users who want to avoid reusing a species or form across playthroughs.

Collection should expose used-before identity at form, species, and evolution-family levels so it can power both browsing filters and reuse warnings.

V1 Collection browses one result per species. A species result aggregates exact
recorded forms, distinct actual Play-Pokémon companions, supporting Plays, and
meaningful historical evidence without counting repeated event or snapshot
rows as additional companions. Planned targets and Pokédex Seen/Caught state do
not establish Collection usage.

Collection reuses Mainline's URL-backed browse controls while adopting an
image-led Pokémon grid rather than the Plays list. Visible controls are Search,
Game, Type, and Sort; More filters may include Generation, exact Form,
Active/Reserve/Past or historical-only evidence, Shiny knowledge, MVP,
Play-Pokémon Tags, and supporting Play lifecycle. Archived Plays remain part of
personal history. The default sort is most recently recorded with unknown
chronology labelled rather than treated as recent.

Each species card shows stable Pokémon identity, form context, distinct
companion and Play counts, honest latest-appearance knowledge, and recorded
Shiny or MVP context. It never presents raw evidence count as `times used` and
has no inline Team mutation.

Collection Pokémon Detail is species-level and uses a URL-backed `All used
forms` or exact-form scope. It shows a personal identity header, distinct
companions, meaningful recorded moments grouped by Play, and compact
evolution-family usage context. A companion that evolved may appear on an
earlier-stage detail through recorded event evidence while remaining one actual
individual. Historical evidence without a surviving companion link remains an
explicit historical appearance rather than an invented companion.

Collection Detail is read-only. Companion rows route to the owning Play Team;
a "Before" row known only from recorded moments opens its latest moment in
History (`#moment-<event id>`), scrolled to and highlighted, and falls back
to the Play's History when no moment is known; generic reference facts route
to Codex. Exact,
approximate, and unrecorded dates remain honest, and events from different
Plays are not forced into a false global chronology.

## Stats

Stats are derived from user data.

As built (v3, `/mainline/stats`), Statistics shows rather than tells: a band
with three big figures (hours, Plays, Pokémon met), small facts under them and
one highlight (the old friend back for the most runs, else a clear favourite
type, else the Play with the most time); then your team style (the types you
pick as a ranked chart, old friends), the regions you've travelled and, last,
where your time went (the top five, every Play in a dialog), since most Plays
record no playtime. A Pokémon opens the shared species sheet in place, with
"See in Collection". All of it is read from what you recorded; a new account
says what fills in as it records more.

The band opens on a trainer title, read from your Plays' rosters (every
Pokémon on a roster counts, a dual type for both types). The first rule that
matches wins:

1. **Type Specialist**: one type is on at least 6 of your Pokémon across at
   least 2 Plays, with half again as many as the next type (6 beats 4, 9 does
   not beat 7). One early team never makes a specialist.
2. **Region Hopper**: Plays in 3 or more regions.
3. **Pokémon Trainer**: everyone else, told how many more regions make a
   Region Hopper.

The rules live in `getTrainerTitle` (`stats-model.ts`) with their tests.

Stats may include:

- Plays by generation and game.
- Completed plays.
- Favorite or most-used Pokémon.
- Favorite types.
- Challenge/rule stats.
- Pokedex and collectible completion.
- Team composition trends.

Stats should remain read-model/query output. User-facing stats should not become manually maintained source-of-truth tables unless a later performance need requires cached aggregates.

V1 Stats is one vertically ordered page with one shared All Mainline,
Generation, or Game scope. It contains no stateful category tabs and no
arbitrary date-range filter. Its sections are Overview values, Adventures,
Pokémon, Progress, and Challenges.

Overview uses no more than four trustworthy orientation values such as total
Plays, lifecycle Completed Plays, distinct games, and distinct recorded
species. Playtime appears only with its recording coverage. Adventures shows
lifecycle, game, generation, goal, and playtime distributions. Pokémon shows
most-used species/forms/types, multi-Play reuse, Shiny companions, and explicit
MVP companions. Progress summarizes only initialized named scopes with visible
coverage. Challenges reports Rule participation, not unproven success or
compliance.

Stats says `Most used`, not `Favorite`: favourites are what you hearted in the
Codex (Collection's Favourites), never inferred from use. It counts distinct companions and Plays
rather than repeated evidence rows, calculates type in the relevant Play's
generation context, treats unknown progress as unknown rather than zero, and
exposes the denominator behind every aggregate. Every meaningful result links
to supporting Plays, Collection, or Progress records.

Stats is read-only and explainable. V1 excludes scores, percentiles, streaks,
achievements, inferred best Teams, challenge success rates without outcome
evidence, and opaque correlations. A cache or enlarged aggregate projection is
a later performance choice, not a user-owned source of truth.
