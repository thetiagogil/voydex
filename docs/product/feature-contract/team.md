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

The member stays its stored form. Where the Play's game has the mechanic, a
`Battle form` switch under its name shows a Mega, Primal, Ultra Burst or
Gigantamax form its stored form reaches. It lists "Base", then each battle form
by its own name (Mega X, Gigantamax) with its mechanic as the quieter line;
Gigantamax shows but can't be picked until the member has the Gigantamax
Factor. A picked battle form previews only: art, types, ability and stat changes
become the form's, and a Gigantamax form lists its Max Moves. A quiet note says
when the member can't reach it as recorded (a wrong or missing Mega Stone, no
Gigantamax Factor, Mega Rayquaza without Dragon Ascent or holding a Z-Crystal);
Let's Go keeps Mega Stones in the bag, so it checks none. In Sun / Moon and
Ultra Sun / Ultra Moon a held Z-Crystal lists the Z-Moves its moves become.
Tera Type (Scarlet / Violet) and the Gigantamax Factor (Sword / Shield, for a
Pokémon that reaches a Gigantamax form) are member fields in the editor, only
in their games.

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
form to another persistent, team-selectable form: its current form and the
target are both of the form class. Rotom appliance changes are the canonical
example. It opens a list of those forms with their art, name and types. A form
a held item selects (Arceus's Plates, Silvally's Memories, Genesect's Drives,
Ogerpon's masks) shows which item and can't be picked where the game has held
items: changing the held item in the editor sets the form instead, as a
details edit. Legends: Arceus has no held items, so its Arceus picks a type by
hand. Do not infer this from shared species or availability,
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
expansions it tracks) by name or number, each variant the game has standing
beside its species as its own card with the same number (never a battle form
or a form it switches to later); a variant that only changes its looks
(Vivillon's patterns, Unown's letters, Gastrodon's seas) is picked from a
Pattern select in the details step instead. Then its nickname, level and team
or reserve; the server takes the first open slot, the moment joins History
and the toast offers Undo, which deletes the Pokémon and that moment
together. **Edit Pokémon** is the same kind of sheet: Who (with shiny and can Gigantamax), Slot,
Details (nature, ability, held item, Poké Ball, and where and at what level it
was met; held items are only the holdable items the Play's exact game has,
grouped by category), Moves and Notes, then Review changes before Save, offering only what
the game records. Evolve and Change form record their moment; Replace (picking
the incoming Pokémon in the Add sheet), Retire and Delete record act from its
head. Slot shows the twelve slots as squares; picking one previews the team
after the move (the picked slot in red, the place it leaves in blue, a taken
slot swapping), and Save applies it after the other changes. Dragging a
roster sticker onto another slot moves it at once, and the roster redraws
while the move saves.

Team Analysis is the Team-owned review view. It makes no claim it can't
explain: every verdict says what it is built from and what to record to
sharpen it. Its **Overall** reading is a general check of the team, not
tied to the game's battles. It opens with four health cards read with the
same battle math as Story's battle readings (below), against a full team of six: a
Pokémon of each type the generation has, with your active team's average
base stats, at your top recorded level (Lv. 50 while none is), hitting with
a move of its type at a power usual for that level (from Gen 4 once
physically and once specially, averaged). Each of yours meets each of them
one on one, and what one costs is your best answer mixed with your second
best. **Team health** weighs the whole team instead: the types are shared out across
it, each Pokémon taking at most its fair share (the types divided by your
team, rounded up) and each type going to whoever answers it cheapest within
that, so one Pokémon that answers many types can't carry a team the rest
can't back up. It is what beating the six costs your team: Strong at 30%
of its HP or less, Weak at 90% or more, Moderate between, so level weighs
first (yours 5 or more levels below your top pull it down), then how many
you bring against six, then types; its line names who lags behind, else the
type to watch when one clearly costs more than the rest, else how many types
stand out (over 30% of a Pokémon's HP and clearly above a usual type), or "No
type to watch" when none does, as with an evenly hard field. Its tooltip says it in general words (never HP or
percentages), gives each lagging Pokémon's exact level, and lists the types
that stand out, three at most. Each card tooltip is one line saying what it
reads, the rows that lead to it (Knockout power says why a type is slow: no
super-effective move, none of the user's own type, or not strong enough), and
behind a hairline the rule with the Strong, Moderate and Weak chips. **Threat response** counts the types your answers beat for
less than 90% of one Pokémon's HP (Strong when all, Moderate from three in
four). **Knockout power** counts the types your hardest hit knocks out in two
hits or fewer (Strong from four in five, Moderate from half). **Weakness
control** names the types that hit two or more of yours (your only one in a
team of one) super effectively and beat them one on one, and is Strong with
none of them unanswered, Moderate with one, Weak with more. A Pokémon
without a recorded level reads at your top level and one without a damaging
move (set-damage moves count) by its types; a note under the cards and each
card's tooltip then say it is a rough read and how many. Typing missing on
any of yours leaves the cards ungraded, without the note. The defensive
matchups matrix and the move coverage list below stay by type; each move
coverage chip counts the recorded damaging moves that hit its type super
effectively, and its tooltip names who has them, while the other chips fade.
Move coverage tooltips give each move's type and mark STAB. **Story
battles** live in Story, not in Team analysis: every opponent a story beat
names is its own battle on that beat (a rival on the way to a Gym sits under
that badge), with where it happens, one line each in the milestone's sheet,
and its report opens in the same sheet. A battle won keeps who you faced, their team
and the team saved with it, and reads nothing. A battle ahead reads your
active team against their team in that battle
(`tracking.mainline_opponent_team_members`, keyed by story point and
opponent) by types, recorded damaging moves
and levels with the games' damage formula (`reference` battle math: stats
from base stats and level with middling IVs and no EVs, a hit's expected
damage from power, the attacking and defending stats, the same-type bonus,
type effectiveness and accuracy). Each of yours hits with its recorded
damaging moves (Hidden Power is left out, Judgment and its kind take its
type, Tera Blast its Tera Type), or with its own types at a power usual for
its level while none is recorded, as theirs do without moves; a set-damage
move (Night Shade, Dragon Rage, Super Fang) deals its set amount, a two-turn
move (Hyper Beam, Fly) counts at half, and one that knocks out its user not
at all; a Dynamaxing opponent has twice its HP. Each of
yours meets each of theirs one on one, both using their hardest hit, Speed
deciding who moves first: what knocking it out costs you is the share of
your HP lost, and one you can't beat costs your whole team. What one of theirs costs is your best answer mixed with your
second best (60/40), as the average player fights; the battle adds those up
across their team and shares them across yours: **Strong** at 0.3 of your
team's HP or less, **Challenging** at 0.9 or more, **Balanced** between. So
level weighs first, then how many they bring, then types. Each of your
Pokémon is Advantage, Even or At risk by the same limits on what taking on
their whole team alone would cost it, or Not recorded (no types). While a
Pokémon's level isn't recorded it reads at their ace's level, and while its
damaging moves aren't, by type; the verdict then says it is a rough read and
what to record. A battle not fought with your team (a Pokémon lent for it,
one of yours alone such as the Zero Lab ride legendary, or a frenzy that is
mostly balms; `player_side` on the battle) gets no reading and says why.
Where an ally fights beside you (a Multi Battle partner such as Steven,
Carmine or Lida: team rows of the battle with `ally_opponent_id` set), their
Pokémon join your side in the verdict as extra team members at their own
levels, answering theirs and sharing what the battle costs. An ally only ever
helps, so the verdict is the easier of fighting alone and fighting beside
them. Each of your Pokémon's role, the levels and the sentence stay about
your own team, and "Beside you" shows each ally's team as theirs is shown. An
ally's team that depends on a choice follows the Play's, and one that depends
on something Voydex doesn't record follows the one their team is read by.
Where you may bring only some of your team (`team_size_limit` on the
battle: three for Emerald's Maxie & Tabitha, one for the Sun / Moon and
Ultra Sun / Ultra Moon Battle Royal), the verdict reads every pick of that
many from your team, ally included as above, and keeps the one the battle
costs least; on a tie, the one whose Pokémon would each fare best alone, then
the earlier in team order. The verdict, its sentence, the levels and the
uncovered types are about that pick; each of your Pokémon is still read, and
the rough-read note still names what your whole team doesn't record. Once
your team is bigger than the limit, a note under "Your team" says how many
you bring, and the table lists the pick first under its own heading ("Your
best three"; "Your best lead" where only your lead battles), then "The rest
of your team".
Best hit is the one of theirs it lands on hardest and Weak to the one of
theirs that hits it hardest for 2× or more (by its moves, or its types
without them), each shown as that Pokémon with the multiplier and picked by
type effectiveness, move power and the same-type bonus, so a same-type
Thunderbolt on Pidgeotto comes before a 2× Bug move on Abra. Best hit's
tooltip lists each of theirs it hits for more than 1× and with which move;
Weak to's names each of theirs that hit it for 2× or more and with what. Each battle has its own team, so a rematch reads the
team you face then. One sentence leads with a level edge of 2 or more, then your answers to their team (or, without a level edge, your answers and then your exposure). A team that
depends on a recorded choice (usually the starter) follows the Play's
choice; while it isn't recorded the report reads the first and says so. A
battle that only one choice leads to (the roaming legendary your starter
picks) is left out once the Play records another option, and says which
choice it needs while none is recorded.
Their threat is read from each Pokémon's damaging moves
(`tracking.mainline_opponent_team_member_moves`, up to four by slot): a
Physical or Special move counts by its type, varying power included, while
status and set-damage moves count for nothing; Tera Blast takes its Tera Type,
Judgment-like moves the user's type, and Hidden Power, whose type isn't known,
is left out. A Pokémon whose moves Voydex doesn't have is read by its types
instead, and the footnote says how many of theirs have moves. Show moves, at
the end of their team's heading, turns every card over to its moves (each on
its type's tint) and back again.
A Pokémon that Terastallizes in the battle is read by its Tera Type for what
hits it (Stellar keeps its own types); without its moves, its own types and its
Tera Type both count as its threat. Where the Play's game has the mechanic
(`resolveGameMechanics`), a card of theirs carries marks on its level line that
keep every card the same height: its Tera Type as a Tera jewel (the type's icon
on a diamond, never a round type dot) and the sprite of the item it holds (in
games with held items, where Voydex has it); a Z-Crystal's sprite is drawn
bigger, as its art is thin. A held Z-Crystal turns the moves it fits into
Z-Moves by the same rule as your own Pokémon's (`getZMoves`): on the card's
back each such move carries the crystal's sprite, and its tooltip names the
Z-Move. A sentence under their team says it in words, one per Pokémon: what it
holds, that it Terastallizes, Dynamaxes, or, for a Z-Crystal, which of its
moves become which Z-Move ("holds Normalium Z: its Pound becomes Breakneck
Blitz"; "for a Z-Move" while Voydex has none of its moves). A Pokémon that
battles as its Mega, Primal or Gigantamax form is stored in that form, so its
name already says it.
Level caps read the opponent's team only, never an ally's.
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
Boss is only the seeded role of these opponents; Story reads one
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
