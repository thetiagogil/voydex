# Progress

This is the Progress part of the [Feature Contract](../feature-contract.md).

## Progress Navigation And Ownership

Progress contains three focused route-backed views in stable order: Story,
Pokédex, and Collectibles. It has no separate Overall child view. The Play
Overview Progress Summary owns the cross-area normalized summary and routes
each visible row directly to its detailed Progress view. Settings owns tracking,
completion contribution, and optional-content scope.

Story is always present and is the default Progress destination. Pokédex and
Collectibles appear only when supported by the selected game and enabled by the
Play's tracking configuration. A supported but disabled destination may remain
visible as unavailable with a Settings handoff; a concept unsupported by the
game is omitted.

Every focused view owns its native summary, next step, detailed records, and
updates. Meaningful Story events belong in History; routine Pokédex and
Collectible updates remain quiet. Opening any child keeps Progress active and
uses the compound label `Progress - Story`, `Progress - Pokédex`, or
`Progress - Collectibles`. The Progress parent route opens Story, and the
attached Progress menu switches directly between the three siblings.

Overall completion remains derived only when every contributing area has enough
recorded context. Do not add Story milestones, Pokédex species, and Collectible
units into a cross-category raw count. Imported missing progress remains `Not
recorded`, not zero.

## Story Progression

Story progression is game/version-group-specific milestone tracking.

Story opens inside the Progress context as an ordered milestone list with a
larger selected-milestone detail region. Its summary shows the current or
furthest recorded position, the next applicable objective, and normalized Story
completion. Games with distinct Main Story, Postgame, DLC, or parallel paths
may expose a compact game-aware content-scope switcher in the milestone Card
header; games without separately authored scopes should retain one simple list.

Story holds story beats, not one milestone per battle. A beat is a required
visit where the story stops you: a Gym, trial or League match; a confrontation
with a named boss (Giovanni's hideouts, Mt. Chimney, the Galactic HQ, Lysandre
Labs, the Mossdeep Space Center); the legendary the story forces you to face
(Spear Pillar, the Cave of Origin, Ultra Space); or a landmark event (S.S. Anne,
the Burned Tower, the Iki Town festival, waking Rayquaza). Rival fights, admin
fights and grunt raids never make a beat of their own. Each battle sits on one
beat: the beat at whose place it is fought (Blue in Oak's lab on Choose
Starter, Jupiter in Eterna City on Forest Badge, Hugh at the Driftveil
tournament on Quake Badge) or, for a battle on the road between two beats, the
beat it leads to (Silver at Cherrygrove on Zephyr Badge). A beat with no fight
of its own never carries later battles, a rematch is never a Story battle, and
a character fought twice on one beat has one opponent row per battle.

Every story chapter says what it is to the journey (`chapter_kind`): main
story runs to the credits, the League included; post game continues after
them; side content hangs off the route and never counts. A beat is required
when the credits need it; what comes after them is optional, except Johto's
Kanto badges through Red, the game's second half. Chapters played beside
each other in any order (Scarlet / Violet's three paths) are flagged
(`plays_in_any_order`) so Story draws them as forks that join back. A
side-content beat says what opens it (one `opens-after` prerequisite): that
places it on the route after the moment that opens it and never locks
recording. The only beats without one are open from the start (Scarlet /
Violet's shrines).

A legendary the story makes you face is a Boss battle on its story beat.
Optional and roaming legendaries are optional Side Content beats (never
counted): one per place or quest (the Regis behind the Sealed Chamber share
one), else one per legendary, each battle with its level and where it happens
or roams. Where Story already has the place (Ramanas Park, Stark Mountain) or
the choice (Emerald's roaming Lati), the battle sits there. Event-only
legendaries stay out, unless a re-release hands them out in normal play
(FireRed / LeafGreen's island tickets on Switch, Crystal's GS Ball on 3DS); the
seed header says so.

Story's stamp card, like Overview's badge case, stamps every Gym badge in its
type and then the League in gold. Alola has no Gyms, so Sun / Moon (7 trials,
4 Grand Trials) and Ultra Sun / Ultra Moon (8 and 4) stamp each island trial
and Grand Trial in its Z-Crystal's type, a Grand Trial with a gold ring, and
label it by its captain or kahuna. A trial that hands out no Z-Crystal (Ilima's
bonus trial) gets no stamp. Recording one stamps it as it does a badge.

Milestone rows provide completion state, identity, concise location or context,
type, and restrained decision or snapshot cues. The selected detail owns the
description, prerequisites, recorded decision, snapshot availability, notes,
and actions. Narrow screens open that detail in a focused view or sheet and
preserve a clear return to the list.

**One count.** A journey (one version group: the main game, or one DLC)
counts its required milestones only, and the same count reads everywhere: the
head's ring, the panel's "Milestone 3 of 16", the sheet, Overview's next
objective and the record toast. Required milestones are numbered 1 to N in
Story order; an optional one has no number and reads "Optional" (its marker
shows its type's icon).

Explicit prerequisite relationships determine what blocks recording. Story
order is the order you play, except in an open-world game
(`reference.version_groups.is_open_world`, set for Scarlet / Violet), where it
is only a suggestion. Nonlinear games never receive an action that invents a
linear path.

Important milestones can optionally support team snapshots:

- Gym leaders.
- Rival battles.
- Elite Four.
- Champion.
- Major bosses.
- Final story milestones.

Snapshots must be optional. Users logging already-completed games should be able to bulk-complete milestones without being forced to attach snapshots.

Selecting a milestone changes only its detail. `Record` is the routine action
and is a moment in History (the moment rule). When required or story-unlock
prerequisites are missing, the milestone is locked and names them. Decisions
may remain `Not recorded` for forgotten or imported history.

Important milestones may separately offer `Record snapshot`. That deliberate
path creates one History event with the current Active Team snapshot. Recording
it again replaces that event's snapshot rather than creating another event.
Ordinary completion does neither. `Mark incomplete` is an explicit correction:
derive every currently completed transitive dependent connected through
`required` or `story-unlock`, preview the complete affected milestone and
recorded-data set, and require one confirmation. One atomic write then removes
those completion rows and their milestone-owned notes, decisions, History
events, Team snapshots, and snapshot moves. Suggested dependencies and
unrelated branches remain unchanged. The database must recompute the impact and
abort a stale confirmation rather than delete a set the user did not review.
Focused milestone editing uses a compact Dialog on desktop and a bottom Sheet
on narrow Play layouts. `Mark incomplete` uses a desktop confirmation Alert
Dialog before the correction is submitted.

**Catching up in a linear game.** Recording a milestone also records the
required milestones and choices (Fossil Choice) before it that are still open,
by default: its detail
says so ("Recording it also records the 3 before it"), and the Record arrow
offers `Record only this one` for the rare out-of-order case (a choice
milestone's form has `Also record the N before it`, ticked). One database call
records them all; only the milestone you picked becomes a moment, the earlier
ones get no moment or note, a choice's decision stays `Not recorded`, and an
optional milestone that isn't a choice is never recorded this way. The toast's Undo clears the whole set. `Mark incomplete`
likewise offers `Also clear the N after it`, ticked (every milestone recorded after
it in Story order), and its preview lists the whole set before the one
confirmed write. Open-world games do neither.

Story progress rows should track milestone completion. If a milestone has a player decision, such as a starter choice or fossil choice, the selected option should be stored separately from simple completion.

Absence of a progress row should mean incomplete by default. The app should not need to pre-create every possible progress row for every play.

## Pokedex Progress

Pokedex progress is tracked per play.

Product rules:

- Completion is species-level.
- Seen/caught states are supported.
- Optional DLC Pokedex scopes are controlled by play settings.
- Optional Pokedex scopes are controlled by play settings.
- Optional Pokedex entries are controlled by play settings.

Pokedex progress is stored per play and species. Reference Pokedex definitions and entries decide which species count for each game/content scope, including optional DLC, National, and special Pokedex scopes.

The focused tracker presents one named Pokédex at a time and keeps its selector
as a prominent orientation element. Do not merge overlapping Pokédexes into one
raw count. Because state is stored per Play and species, changing one species
updates every applicable Pokédex view containing it.

Use one purpose-built scope overview band for orientation. When multiple named
completion-relevant Pokédexes apply, use the shared Navigation Menu at content
width, preserve selection in the route, close it after selection, and show each
choice’s name, entry count, and Pokédex kind without adding search.
Browse-only local Pokédexes covered by the active aggregate scope do not appear
as peer destinations. Expose them through an optional Select control in the
entry-filter row; filtering preserves the parent scope’s numbering, summary,
route, and completion denominator. An adjacent information action explains
that these local scopes do not count separately. When only one independent
scope applies, show its name and entry count without an inactive menu or
redundant kind metadata. Keep orientation
and the continuous progress sentence on one responsive row, followed by one
full-width progress rail. Do not add a decorative icon, eyebrow label, internal
divider, or `All Pokédexes` pseudo-scope.

For the active Pokédex, show one continuous
`Caught · Seen · total · percentage` progress readout with the normalized
percentage inline in the same summary sentence. Completion-relevant scopes use
only included entries as their denominator and label the percentage
`Completed`. A browse-only local filter never replaces or recalculates the
aggregate completion summary. Use primary emphasis for the
Caught number, the established Seen-species secondary color for the Seen
number, and normal foreground for the total and percentage. Caught is the only
bold metric; Seen, total, and percentage use regular weight above a slightly
thicker-than-default progress rail. Do not divide those values into Story-like
metric tiles. Support search, state
and required/optional filters, Missing filtering, fixed Pokédex-number order,
and responsive Grid/List views using the established shared control sizes and
Button Group treatment. Keep Search and filters in the browse-control row, and
place the compact Seen/Caught mode and Grid/List groups together as actions in
the entries Card header. Prefix the Seen/Caught group with the non-interactive
label `Mark mode`.
Grid is the desktop default and presents five or six compact species entries
per row at wide Play widths. List is the narrow-screen default and is a
separate flat, full-bleed divided data list rather than a horizontal Grid Card.
It uses the entries section's full content width without a nested Card border,
radius, or side gutters. Each row shows number, framed portrait, name,
exact-generation types with visible names, explicit Seen/Caught status, and
the separate Codex action. Keep Active Team membership out of this browser
because it belongs to the Team workflow. Spread these desktop columns across
the available width rather than clustering metadata at the right. Seen and Caught rows use their matching
translucent state background without a state border color. Both presentations
use the shared actionable-row hover surface. A shared
`Seen`/`Caught` Button Group chooses the action applied by selecting a species
Card. Selecting Caught always includes Seen. Toggling off the active Caught or
Seen state returns the species directly to Missing. Otherwise, the selected
mark type overrides the Card's current state: Seen changes Caught to Seen, and
Caught changes Seen to Caught.
Absence stays an internal `Missing` state represented by the neutral base Card;
it may be filtered but is not a visible Card status or update action. Seen uses
a stronger secondary surface and Eye icon, while Caught uses the established
primary selected surface and Poké Ball icon. Each shadowless Grid Card keeps one
bottom-aligned footer with number and name at the left and the separate Codex
action at bottom-right, while the state icon stays at top-right; every
List row keeps the same action in its trailing column, so navigation never
triggers a progress update. Keep the filter toolbar stretched across the
available width, let search absorb width changes, and show the visible-entry
count immediately beneath it.

For an initialized known-zero scope, absence of a progress row means the species
is neither Seen nor Caught. For an imported scope with unknown coverage,
knowledge state must keep absence as `Not recorded` until the player initializes
or deliberately reconciles the scope.

`Catch up Pokédex` supports `Record what I know` and a reviewed `Completed this
Pokédex` proposal. Normal `Mark multiple` selects Seen or Caught and exact
species, previews every change, and applies the batch atomically. A future
reviewed clear-progress action may return exact species to the internal absence
state without exposing `Missing` as a routine status option. Do not accept only
an overall in-game count. Pokédex progress never creates History.

## Collectibles

Collectibles are game-specific groups with interactions determined by their
tracking definition. The focused area uses a family-grouped list-detail
workspace on desktop and a group-list-to-focused-detail flow on narrow screens.
Hide a redundant group navigator when only one group applies.

Show normalized page-level completion across active groups. Each selected group
owns its native collected/total and remaining counts, percentage, completion
context, and tracker. Play settings own which supported groups contribute.

The head of each group also says, in one line led by `Reward`, what completing
the whole group earns in that game (the Pokémon, move or encounter it unlocks).
The line comes from `tracking.mainline_collectibles.reward_summary` and is
written in Voydex's own words.

Identifiable-entry groups use searchable and location-filterable rows with a
direct collected control. They support canonical-order and location sorting.
Group-level inclusion is not repeated on every entry. Routine changes never
create timeline events.

Imported progress supports exact-entry recording, an honest count-only total,
or a reviewed complete-group action. Count-only state must not assign arbitrary
entry identities or claim which locations are missing. When exact entries are
also known, distinguish the reported total from the identified subset and
require reconciliation before fully exact tracking. Quantity-only definitions
use a native count tracker without requiring fabricated entries.

Normal `Mark multiple` chooses Collected or Not collected, selects exact
entries, previews the change set, and applies it atomically. Avoid an immediate
filter-dependent `Mark visible collected` action.

Within initialized exact tracking, absence of an entry-progress row means
uncollected. Imported uninitialized or count-only groups preserve `Not recorded`
semantics through their group knowledge state. Collectible completion is
derived from selected game/optional-content scopes, per-Play group selection,
the group's tracking mode, and recorded progress.
