# Team

This is the Team part of the [Feature Contract](../feature-contract.md).

## Team Management

Each play has a managed Pokémon roster.

The current active/reserve roster should be capped to prevent unbounded team growth. The working product limit is 6 active Pokémon plus 6 reserve Pokémon.

The Team page should support:

- Active and reserve Pokémon.
- Levels, forms, abilities, natures, gender, shiny state, moves, and notes.
- Team strengths and weaknesses.
- Pokémon lifecycle actions: add, evolve, change persistent form, replace,
  retire, and return from Past Members.
- Quiet current-roster move, swap, and reorder controls.
- Guarded current-record correction and deletion.
- Correction-only edits versus in-game recorded changes.
- Real-time Pokémon reuse validation when adding, replacing, or evolving a Pokémon.

Retired and replaced Pokémon remain complete Past Member records and do not
count toward the current roster limit. The named `Retire` and replacement
actions also preserve the change in History; a correction does not.

Roster slots:

- Active Pokémon use slots 1 to 6.
- Reserve Pokémon use slots 7 to 12.
- Retired and replaced Pokémon have no current roster slot.

The accepted desktop Team workspace uses a list-detail structure. One compact
left-side roster list keeps all six Active and six Reserve positions visible,
including explicit `Empty slot` rows. The initial baseline has no Reserve
summary or disclosure state. Add, move, replace, and correction workflows still
expose exact Reserve destinations when position choice matters. Selecting an occupied row
updates a larger Play-owned Pokémon detail on the right. Roster portraits remain
intentionally smaller than selected-member artwork so the source and result of
selection are immediately distinguishable. The Roster holds only the roster
and the selected detail; Plan and Analysis are its sibling views in the Team
menu. A link may name the member to open on
(`/mainline/plays/[playId]/team?pokemon=[playPokemonId]`, as an Overview
sticker does). On narrow screens, member selection opens a focused Team detail
sheet with a clear return to the roster.

When a roster or slot workflow exposes a detailed position, all twelve possible
positions use the same compact row geometry across occupied, selected,
confirmed-empty, not-recorded, pending, and unavailable states. An
occupied row is limited to slot, portrait, nickname or species and relevant
form identity, level, types, and the smallest necessary state cues. Selection
uses a visible non-color cue without displacing the row's stable overflow
action. Confirmed-empty positions open an add flow targeted to that slot;
not-recorded positions first let the user add a remembered Pokémon or confirm
that the slot is empty.

The row target and its sibling overflow action must both be keyboard operable.
Explicit move and reorder controls provide the complete workflow; drag and drop
may only supplement them. Roster counts distinguish confirmed empty capacity
from a Team that is only partially recorded.

One Move workflow covers current-roster placement. Choosing a confirmed-empty
slot moves the selected member; choosing an occupied slot swaps the two members.
A not-recorded slot is never available capacity. Move, swap, and reorder succeed
atomically, remain quiet in History, and never write Plan data. The team keeps
at least one Pokémon: its last member can swap with a reserve Pokémon but not
move to an empty reserve slot. The V1 path for
preserving a meaningful lineup is `Record Team moment`.

The selected-Pokémon detail is an identity-first Play member record. It leads
with larger correct-form artwork, nickname and species identity, shiny state,
Active or Reserve position, level, types, and recorded held item. Current
setup, origin and personal facts, four ordered move positions, notes, and
contextual member actions follow in progressive groups. Missing imported facts
remain explicitly unrecorded, and fields unsupported by the game are omitted.

The panel does not duplicate generic species reference, Team-wide analysis,
complete member history, or complete Plan detail. Those route to Codex, Team
Analysis, History, and Plan respectively. Current HP, battle status, and current
PP are transient battle values and are not part of the V1 Play record. Routine
detail edits update current state without timeline noise; lifecycle changes
that affect History or Collection distinguish corrections from recorded
in-game events. V1 does not add a generic per-edit History option.

Every member has a concrete form identity, but form selection and form
changeability are separate. Fixed identities—including regional, encounter-,
evolution-, size-, gender-, or authenticity-derived forms that cannot transform
in the selected game—are chosen during Add, import, or correction and expose no
`Change form` action. Hisuian Growlithe cannot become Kantonian Growlithe.

`Change form` is a dedicated recorded lifecycle flow only when the same
individual has a game- and content-valid directed transition from its current
form to another persistent, team-selectable form. Rotom appliance changes are
the canonical example. Do not infer this from shared species or availability,
and exclude battle-only transformations and cosmetic-only variants. Preserve
the same member and personal details, resolve ability and required held-item
consequences safely, keep moves until the user reviews them, and store
before/after event-time identity. A wrongly entered form uses `Correct record`
without History.

`Replace` puts an incoming Pokémon into the selected current slot. When an
Active member is displaced and Reserve has confirmed capacity, recommend moving
the outgoing member to a chosen Reserve position; that member remains current
and the incoming addition is the recorded event. Otherwise the outgoing member
moves to Past Members as `Replaced`, and one event preserves both identities.
`Retire` moves a current member to Past Members without adding a replacement.
Neither flow discards a member, assumes unknown capacity, or changes Plan.

`Past members (N)` is a secondary Team-owned roster view for uncapped retired
and replaced Play Pokémon. It is not another Hub tab and is not the event-only
History view. Selecting a past member reuses member detail with past-state copy,
member History, correction, guarded deletion, and `Return to Team`. Return
reactivates the same member in one confirmed-empty current slot and records the
return. A full roster routes through Replace with that member preselected and
records one compound return-and-replacement moment rather than two competing
History entries.

`Correct record` repairs a wrongly entered identity or roster placement without
creating lifecycle History or false Collection evidence. Existing event-time
History remains unchanged and is corrected separately in History. The
destructive overflow action `Delete Pokémon record` is reserved for wholly
mistaken or duplicate records. It removes the record's own "added" moment
(the moment rule) and keeps every other moment, which lose their link to the
record. Because
Plan comparison has no persisted member association, deletion simply removes
that member from future comparison; it never rewrites the authored Plan.

As built: **Add Pokémon** is a side sheet (a bottom sheet on phones), opened
from the Roster head or `?add=` (the Codex's Add to a Play presets the
species and form). Pick a species of the Play's Pokédexes (base game and the
expansions it tracks) by name or number, then its nickname, level and team
or reserve; the server takes the first open slot, the moment joins History
and the toast offers Undo, which deletes the Pokémon and that moment
together. **Edit Pokémon** is the same kind of sheet: Who,
Where, Build and Met, then Review changes before Save, offering only what the
game records. Evolve and Change form record their moment; Replace (picking
the incoming Pokémon in the Add sheet), Retire and Delete record act from its
head. Where moves it straight away to another team or reserve slot, swapping
with the Pokémon there; dragging a roster sticker onto another slot does the
same, and the roster redraws at once while the move saves.

Team Analysis is the Team-owned review view. Its final metrics, calculation
strategy and evidence disclosure are deliberately deferred until the product
can define a reliable and explainable review model; do not replace its
unresolved strategy with invented matchup, balance, coverage, role, damage, or
competitive claims. Its Overall reading covers defensive matchups and recorded
damaging-move coverage. **Story matchups** (`?reading=story`) lists the
Play's Story battles by chapter: every opponent a story point names is its
own battle (a rival on the way to a Gym sits under that badge), with where it
happens. A battle won keeps who you faced, their team
and the team saved with it, and reads nothing. A battle ahead reads your
active team against their team in that battle
(`tracking.mainline_opponent_team_members`, keyed by story point and
opponent) by types, recorded damaging moves
and levels, following v3: each of your Pokémon is Advantage (an answer and
no 2× weakness), At risk (a 2× weakness and no answer), Even, or Not recorded
(no types or no damaging moves); its best hit is its strongest move against
any of them. The battle reads **Challenging** when fewer than 60% of their
Pokémon have an answer, three or more of yours are at risk, or their ace is 8
or more levels above your best; **Strong** when every one of theirs has an
answer, at most one of yours is at risk, one answers without a 2× weakness,
and your levels are recorded with their ace at most 3 levels above;
**Balanced** otherwise. Each battle has its own team, so a rematch reads the
team you face then. One sentence
names your answers and the thing that matters most against you. A team that
depends on a recorded choice (usually the starter) follows the Play's
choice; while it isn't recorded the report reads the first and says so. A
battle that only one choice leads to (the roaming legendary your starter
picks) is left out once the Play records another option, and says which
choice it needs while none is recorded.
Their moves aren't in Voydex, so their threat is read from their types.
Every Story battle has its opponent's team (a database test holds this); a
battle that somehow had none would keep the specialty reading and an honest
placeholder.

A **legendary encounter** is a Boss whose team is one Legendary or Mythical
Pokémon (by its species, `reference.pokemon_species`). It reads as that
kind (Legendary or Mythical, never Boss), its report speaks of one Pokémon
("it", "The Pokémon", the Pokémon's types) and not of a team, it is **Done**
rather than won, and an optional one (its story point is not required) is
marked Optional. The count of battles won ("N of M battles won", and each
chapter's) leaves out optional legendary encounters, which are catches you
may skip and may not be battles at all; a chapter counts them apart ("2 of 5
done"). A required legendary, like Groudon in Ruby, still counts. Roaming
shows in the story point's name and where it roams, not as a kind of its own.
Boss is only the seeded role of these opponents; Story matchups reads one
as a legendary once its team is in Voydex, so a game without that team still
reads it as a Boss.

There is no separate Team History. Team events (additions, evolutions, form
changes, replacements, retirements, removals and returns) are History's Team
filter, with event-time Pokémon identity.

`Plan` in the Team menu opens the comparison with the Plan this Play follows;
the Roster carries no Plan card. The comparison is computed from current
Play-owned records and never writes Plan progress. A Play with no Plan shows
`No Plan yet` with `Plan a team` (the Team Planner on the Play's version
group) and `Follow a Plan`, a menu of your Plans for this game; picking one
links it (or re-points the existing link) and the comparison redraws.

`Record Team moment` is a dedicated lower-emphasis Team action. It opens a compact dialog or mobile sheet with a read-only
six-position Active-Team preview, required title, exact, approximate, or unknown
date, and optional short note. V1 snapshots the recorded Active lineup only;
Reserve is excluded and unknown positions remain unknown. Completed or
abandoned Plays use final or remembered language, while a Play with no recorded
Active members routes to Team recording instead of saving an empty snapshot.
The History event and event-time snapshot appear only after the write succeeds.

Recorded in-game team changes should create timeline events with enough Pokémon identity data to preserve usage history. For example, if Squirtle evolves into Wartortle and then Blastoise, Collection and reuse checks should still know that Squirtle, Wartortle, and Blastoise were used.

Correction-only edits should update the current Pokémon record without creating timeline history.
