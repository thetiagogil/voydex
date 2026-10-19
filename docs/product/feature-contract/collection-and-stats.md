# Collection And Statistics

This is the Collection And Statistics part of the [Feature Contract](../feature-contract.md).

## Collection

Collection is the user's used Pokémon history across plays.

As built (v3, `/mainline/collection`): every species that has joined one of
your teams, as stickers, with Search, a Show choice (All, On a team now, In
several Plays, Shiny), Sort (Recently recorded, Most used, Pokédex number)
and the type dots. A species opens its sheet (`?species=`): every Pokémon of
it on your Plays' rosters, each opening on its Play's roster, and the games it
joined you in. Archived Plays count.

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

Stats says `Most used`, not `Favorite`, unless the user explicitly recorded a
favorite through a future feature. It counts distinct companions and Plays
rather than repeated evidence rows, calculates type in the relevant Play's
generation context, treats unknown progress as unknown rather than zero, and
exposes the denominator behind every aggregate. Every meaningful result links
to supporting Plays, Collection, or Progress records.

Stats is read-only and explainable. V1 excludes scores, percentiles, streaks,
achievements, inferred best Teams, challenge success rates without outcome
evidence, and opaque correlations. A cache or enlarged aggregate projection is
a later performance choice, not a user-owned source of truth.
