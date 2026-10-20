# Plans

This is the Plans part of the [Feature Contract](../feature-contract.md).

## Plans

Team plans are separate from plays.

As built (v3):

- **Team Planner** (`/mainline/plans/new`, a saved Plan at
  `/mainline/plans/[planId]`, `?vg=` for the version group): pick a version
  group on the cover shelf menu (the expansions it includes read under its name), fill six slots from its Pokédexes (one range
  per Pokédex, a Pokédex filter, search, Fully evolved only, type dots), drag to swap, Random
  and Clear, and open a slot to set its note (its role, or why it's there; Plans keep no separate roles) and build (the sheet keeps its edits until Save, and closing with unsaved ones asks "Discard your changes?"; on a locked Plan it only reads, with Unlock to edit) (ability, nature,
  gender and held item where the version group has them, four moves it
  learns). Team check says whether the team can be built in one save and
  reads its defensive matchups from its types. Save writes the Plan; a new
  Plan is kept in this browser until saved. Share (in the "⋯" menu) puts the version group, six
  Pokémon in a link's hash; importing opens it as a new unsaved
  Plan. Switching game carries the team over, unsaved edits included, as
  the new game can have it: a Pokémon it doesn't have leaves the team, and
  one that stays loses what the game doesn't offer it (an ability, held
  item, nature, gender or a move it can't learn there). A Plan with a team always asks first ("Switch game?"), listing each Pokémon with its picture under "Leaves the team" or "Loses part of its build"; the switch waits on a save. A followed Plan opens locked ("Locked: followed by 2 Plays."): its first edit asks "Unlock this Plan?", saying that a save changes how each Play compares with it, and its game stays the same while Plays follow it. See Plays in its "⋯" menu lists each Play with its current team; a card opens the Play. While a switch is checked and opens, the game picker shows a spinner.
- **My Plans** (`/mainline/plans`): every Plan as a card with its game, six
  Pokémon and who follows it, filtered by game and sorted by
  update, name or game; New Plan opens the Planner blank. Archived Plans leave the list for their own (`?view=archived`, behind "Archived · N"), as archived Plays do. Each Plan has one "⋯" menu, on its card and in the Planner, grouped by what each action does: See Plays; then Rename and Archive (or Restore); then Delete; Archive in the Planner waits until unsaved changes are saved or undone. An archived Plan doesn't open: its card stays shut, its link leads back to the archived list, it keeps its Play links, and the save refuses it until it's restored.
- A Plan is stored for one game, the version group's first, until Plans
  store a version preference. Plan Detail, Create Play from a Plan, cloning,
  drafts and the Game List below are accepted but not built.

The V1 standalone Plans family has three responsibilities:

- Plans Hub contains two obvious URL-backed sibling views: Team Plans, the
  default reusable-plan library, and Game List, the independent game-intent
  library. Each keeps its own controls and results rather than mixing records
  into one feed.
- Create Plan collects only game, editable suggested name, applicable optional
  content, and source context supplied by Codex or a Play. It creates a Draft
  and opens Plan Detail rather than asking the user to build a team in a modal.
- Plan Detail owns reusable target authoring, setup, checks, lifecycle, Play
  usage, and Create Play from Plan. Team owns the contextual automatic
  comparison for one linked Play and provides its compact Play-level entry.

Plans Hub summarizes game identity, lifecycle, up to six ordered target
positions, target count, relevant optional-content or
organization context, updated time, and linked-Play count. Archived Plans are
excluded from current work by default but remain readable through explicit
status filtering. Normal results open Plan Detail and do not expose inline
member editing, delete, lifecycle mutation, adherence, or Team scoring.

Plans reuse the Plays family where the task is equivalent: the shared centered
canvas, plain heading and one Create action, visible Search/Status/Game/Sort,
More filters with URL-backed chips, explicit Load more, and one cover-led result
per row in a responsive single-column library. Plan rows substitute lifecycle,
up to six ordered target positions, capacity/check context, organization,
usage, and
recency for Play Journey, actual Team, and Progress. Create Plan reuses Create
Play's focused contextual surface but remains one step. Plan Detail reuses the
responsive cover/identity/action Header structure without adding Play Hub tabs.

Game List records one explicit intent and optional note per game. It supports
Want to Play, Planned, Playing, Completed, and Skipped; game search; status and
generation filtering; and recent-update, name, generation, or status sorting.
Rows show game identity, intent, note preview, updated time, and quiet Plan/Play
counts for navigation. They may start canonical Create Plan or Create Play
flows without changing intent automatically.

Plans should support:

- Planning a team before a play exists.
- Planning target/final Pokémon.
- Planning optional content scope such as DLC availability.
- Required target forms plus optional notes, abilities, natures, held
  items, gender, and moves.
- Creating a play from a plan.
- Keeping the plan as a persistent reference after a play is created.

Creating a play from a plan should not auto-fill the active team. The play starts with an empty current team, and the user can add planned Pokémon into the play when they are actually obtained.

Creating a Play from a Plan keeps the game and source Plan visible in the
accepted Create Play flow. The Plan's optional-content scope prefills the
Play's enabled content; the normal game-aware Completion Goal recommendation
then decides how that content participates unless the user customizes it.
Attached Plan Rules are copied as the Play's initial Rules. Plan Tags remain
Plan organization and are not copied. These values become independently
Play-owned after creation: later Plan edits do not silently synchronize into
the Play, and later Play Settings edits do not rewrite the Plan.

The Play, its initial settings, copied content and Rule links, and focused Plan
link are created atomically. The Plan
remains reusable, and the actual Active and Reserve Team positions remain
empty. A failed operation must leave no partial Play or Plan link.

The authored Plan is never changed automatically to match the actual Team.
Adding an unplanned Pokémon changes only Play-owned Team state. Plan targets,
forms, preferences, and notes change only through an explicit Plan edit;
unlinking a Plan from a Play does not delete the standalone Plan.

A Plan contains one to six ordered targets. Species and form are
required. Ability, nature, held item, gender, and up to four moves are optional
constraints; level and ball are not part of V1 comparison. There are no
alternate targets or manually maintained Plan-member-to-Play-member links.

A play has one focused linked Team Plan. The comparison is computed at read
time and never writes progress state. Matching is deterministic and one-to-one:
exact species/form wins first, then alternate form, earlier or later evolution,
and another branch in the same evolution family. Active and Reserve members
receive full build comparison. Retired and replaced records establish only
that the planned family was previously used; hard-deleted members are absent.

The contextual Team Plan view remains inside the active Team tab and presents a
compact `planned Pokémon → computed status → matched Play Pokémon` list.
On desktop, selecting a row updates a persistent comparison panel beside the
list. Tablet and phone open the same focused comparison in a sheet. Accepted
statuses are `Exact match`, `Build differs`, `Alternate form`, `In progress`,
`Evolved beyond plan`, `Branched evolution`, `Previously used · retired`,
`Previously used · replaced`, and `Not found`. Unplanned members are summarized
only; they are not displayed as inspectable comparison rows.

Editing a reusable Plan outside a Play warns when multiple Plays are linked.
Editing from inside a Play clones the Plan and relinks only that Play before
applying changes. V1 comparison itself is read-only and exposes no manual
association controls.

Standalone Plan Detail uses one to six ordered target rows. Each member owns a
required species and form plus optional role, nature, ability, held item,
gender, four ordered moves, and notes. Add, edit, move, swap, and remove actions
are atomic and provide a keyboard alternative to drag and drop. Reusable edits
disclose every linked Play that may be affected but never change an actual Team
member.

Plan checks warn about game/content availability, invalid persistent forms,
reuse policy, and supported Rules. They do
not produce a completion percentage or overall score and do not block creative
planning unless the underlying identity or ownership is invalid. Plan notes,
optional content, Rules, and Tags remain separate editable responsibilities.

Draft means the Plan is being explored; Active means the user keeps it as a
current or reusable Plan. Both are editable and may create a Play. Archived
Plans remain readable with existing Play links intact but require explicit
reactivation before editing or creating new links. Deleting a Plan is a guarded
separate action: it never deletes linked Plays, actual Team members, Progress,
or History, and must fail without partial detachment if those consequences
cannot be preserved safely.

Standalone Plan Detail lists every linked Play with a concise comparison
summary and can enter that Play's comparison context directly. `Link to existing Play` offers only
owner-scoped Plays with the exact game/version and no other focused Plan.
Linking changes no Team member and stores no member association.
