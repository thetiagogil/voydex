# V1 Mainline Plans Functional Blueprint

This document defines the V1 Plans Hub, Create Plan, and standalone Plan Detail
experience. It extends the reusable Team Plan product contract and the accepted
[Play Plan comparison](./mainline-play.md#linked-team-plan-contract) without fixing the
final visual composition before the coherent Mainline UI pass.

## Current Status

**Status: linked Play comparison implemented; standalone Plans family accepted
but not mounted**

The three surfaces are designed as one family:

1. **Plans Hub** finds reusable Plans and keeps independent game intentions.
2. **Create Plan** establishes only the minimum game-aware planning context.
3. **Plan Detail** owns the actual target authoring, setup, checks, lifecycle,
   and links to Plays.

The final UI may change local spacing, density, control placement, and section
composition. It must preserve the ownership, actions, states, and information
hierarchy below.

## Family Boundary

A Team Plan is reusable authored intent. It may exist before any Play, be used
by more than one Play, or remain a private planning exercise. It owns:

- one game and base version group;
- Draft, Active, or Archived lifecycle;
- a name and optional notes;
- applicable optional-content scope;
- one to six ordered targets;
- each target's required species/form and optional role, nature, ability, held
  item, gender, moves, and notes;
- attached Rules and Tags;
- game-aware availability, form, evolution-path, optional-content, rule, and
  reuse checks.

The standalone Plan Detail authors those reusable facts. A focused view inside
a Play's Team tab compares one linked Plan with that Play's Team automatically.
Team never rewrites a Plan. A Plan never fills a Team automatically.

## Relationship To The Plays Family

Plans should feel like a sibling of Plays, not a separately invented module.
Reuse the same Mainline grammar wherever the user is performing the same kind
of task, then change the content where Plan ownership is genuinely different.

| Pattern            | Plays                                                                                               | Plans                                                                                                                          |
| ------------------ | --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| Browse shell       | Centered application canvas, plain heading, one Create action, compact controls, one-column library | Reuse the same shell and browse rhythm; switch locally between Team Plans and Game List                                        |
| Library row        | Cover-led Play identity, lifecycle, Journey, six Active sprites, Progress, organization, recency    | Cover-led Plan identity, lifecycle, up to six ordered target sprites, capacity/check context, organization, usage, recency     |
| Search and filters | Visible Search, Status, Game, Sort; lower-frequency criteria in More filters; URL-backed chips      | Reuse the same control hierarchy with Plan-specific Rule, Tag, optional-content, and Archive criteria                          |
| Creation           | Focused contextual surface; game first; concise required decisions; success opens the new Play      | Reuse the same surface and contextual prefill behavior, but stay one concise step because Plan has no completion-goal decision |
| Detail header      | Cover left, identity/context center, adaptive Play actions right                                    | Reuse the same responsive header structure with Plan lifecycle and Create Play from Plan actions                               |
| Detail body        | Tabbed Hub because one Play owns six mature workflows                                               | One authoring workspace because Plan targets, setup, checks, and usage form one planning responsibility                        |

This is visual and interaction consistency, not shared state. Plan lifecycle is
not Play lifecycle, planned targets are not Active Team members, and Plan checks
are not Progress. Reuse shell and component grammar without forcing the two
domains to expose identical fields or actions.

## M-13 — Plans Hub

### Purpose And Hierarchy

Plans Hub is the user's reusable planning library. It answers:

- Which teams am I currently considering?
- Which game does each Plan belong to?
- Which targets are already defined?
- Which Plan should I continue, reuse, or turn into a Play?
- Which games do I want to play even when I am not ready to create a Plan or
  Play?

Plans and Game List entries are related intentions, but they are not the same
record. Use one prominent, URL-backed two-option view selector inside Plans Hub:

- **Team Plans:** reusable team intent and the default view;
- **Game List:** lightweight game-level intent.

Each view owns its own search, filters, sorting, results, and empty state. Do
not mix Plan rows and game-intent rows in one ranked feed or infer one state
from the other. The final visual pass may choose a segmented control, compact
local navigation, or an equivalent responsive pattern, but switching between
these two sibling responsibilities must remain obvious.

Use the same shared centered application canvas as Plays Browse and this stable
hierarchy:

1. **Page heading:** `Plans`, one context-appropriate primary action, and no
   duplicate Quick Actions card. Team Plans uses `Create Plan`; Game List uses
   `Add game`.
2. **View selector:** Team Plans or Game List.
3. **Active-view controls:** search, compact filters, result count, and sort.
4. **Active-view results:** one clearly separated result per Plan or game
   intention, ordered by most recently updated by default.
5. **Incremental loading:** explicit `Load more` when needed; no endless scroll
   and no Skeletons.

Use one compact, cover-led Plan row per result in a single responsive column,
matching Plays Browse's library rhythm. Do not introduce a Plan grid, table, or
V1 grid/list toggle. The exact internal density remains a visual-validation
question, but the result must remain a scannable library rather than a
decorative gallery or analytics page.

### Search, Filters, And Sort

Search covers Plan name, game, and planned Pokémon identity. Mirror Plays
Browse's two-level control hierarchy. Keep these primary controls visible:

- Search;
- lifecycle Status;
- Game;
- Sort.

Use one `More filters` popover on desktop and focused sheet on narrow screens
for lower-frequency criteria:

- Generation;
- attached Rule;
- attached Tag;
- optional-content scope;
- Archive visibility when it is clearer to keep Archive separate from Plan
  lifecycle.

The default library shows Draft and Active Plans. Archived visibility is
explicit through status filtering; archived Plans are not mixed silently into
current work.

Sort options are:

- recently updated, default;
- recently created;
- name;
- game.

Show removable active-filter chips and one `Clear all` action. Filters and sort
apply to the complete owner-scoped library, not only the currently loaded
slice. Preserve search, filters, sort, and active Team Plans/Game List view in
the URL so returning from Plan Detail restores the same library context. V1
does not store a separate default-filter preference.

### Plan Result Summary

Each result keeps these information levels in a stable order:

1. game cover or other established game identity;
2. Plan name, game/version, and lifecycle;
3. all six target positions in slot order, using the target's current
   planned species/form artwork and an intentional empty state for open slots;
4. concise capacity context such as `4 of 6 targets`;
5. optional-content, Rule, or Tag context only when it improves recognition;
6. derived update time and quiet usage context such as `Used by 2 Plays`.

Treat those facts as the same three visual levels used by Plays Browse:

1. **Primary identity:** cover, Plan name, game/version, and lifecycle.
2. **Planned state:** up to six ordered targets, capacity, and only the most useful
   current check context.
3. **Supporting context:** optional content, Rules, Tags, linked-Play usage,
   update time, and the quiet open affordance.

All six target positions use equal geometry. They represent intended Plan
capacity, so empty positions use an intentional open-target treatment rather
than Team's `Not recorded` question mark. There is no alternate-target strip or
count in V1.

The whole result opens Plan Detail. Do not add inline member editing,
lifecycle mutations, delete, Create Play, comparison percentages, Team scores,
completion bars, or adherence grades to the normal result. Archived results
remain openable and visibly read-only; reactivation belongs to Plan Detail.

On desktop, keep cover, identity, target preview, supporting context, and open
cue in one stable horizontal rhythm. On narrow screens, preserve that hierarchy
in a vertical card: identity first, the six equal target positions next, then
capacity, organization, usage, and open cue. Search remains full width; Filters
and Sort remain separate accessible actions, following Plays Browse.

### Game List View

Game List is a lightweight backlog and wishlist, not another Plan or a derived
summary of Plays. One owner-scoped entry per game records:

- `Want to Play`;
- `Planned`;
- `Playing`;
- `Completed`;
- `Skipped`;
- an optional durable note.

Search covers game name. Filter by intent status or generation and sort by
recent update, game name, generation, or status. Each result shows game cover
and identity, the explicit intent status, a concise note preview when present,
updated time, and quiet context for existing Plans or Plays for that game.
Counts are navigation context only and never rewrite intent automatically.

The row's normal destination opens Codex Game Detail. Its explicit status or
note control opens a focused Game List edit sheet. Preserve those two controls
without turning the row into a toolbar. Contextual actions may offer `Create
Plan` or `Create Play` with the game prefilled; those actions enter the
canonical creation flows and do not mutate intent by themselves.

`Add game` uses a focused game picker, defaults a new entry to `Want to Play`,
and permits a different status and optional note before confirmation. `Add to
Game List` from Codex Game Detail uses the current game, the same status/note
confirmation, and may complete without forcing navigation away from Codex.

Creating or changing a Play may suggest an intent update when the relationship
is obvious—for example `Planned` after creating a Plan, `Playing` after starting
a Play, or `Completed` after finishing one. Suggestions are explicit and
optional. A Plan or Play never creates, changes, or deletes the independent
Game List entry silently.

Removing a Game List entry removes only the intent status and note. It never
deletes the game, its Plans, Plays, Team data, Progress, or History.

### Hub States

- **No Plans:** explain reusable team planning briefly and offer only `Create
first Plan` as the primary action in Team Plans.
- **No Game List entries:** explain lightweight game intent briefly and offer
  `Add first game` in Game List.
- **Filtered empty:** retain the controls and offer `Clear filters`; do not
  imply the active view has no records.
- **Only Archived Plans:** in Team Plans, show a current-work empty state with
  `View archived Plans` and `Create Plan`.
- **Partial summary:** keep the Plan or Game List entry openable, preserve known
  facts, and label unavailable targets, usage, counts, or organization context
  honestly.
- **Initial loading:** keep the application shell and use the shared accessible
  page Spinner.
- **Incremental loading:** retain existing results and put pending feedback on
  `Load more`.
- **Failure:** distinguish initial failure from a failed incremental slice and
  preserve valid results and criteria whenever possible.

## M-14 — Create Plan

### Creation Principle

Create Plan is a concise beginning, not a complete team builder or wizard. It
creates a Draft Plan and then opens Plan Detail, where the user can make their
actual planning decisions with enough room and game context.

Reuse Create Play's focused modal/sheet grammar: contextual source retained,
game first, concise validation, cancel back to the source, pending feedback on
the responsible action, and success opening the newly created destination.
Create Plan remains one step because it has no Play lifecycle or completion-goal
decision; adding a second step merely to resemble Create Play would add no
useful choice.

The base form contains:

1. **Game:** required. A contextual source may prefill and lock it.
2. **Plan name:** required, with a safe editable game-based suggestion.
3. **Optional-content scope:** show only applicable scopes. Base game content
   is implied; a source Pokémon that requires an optional scope may preselect
   it with a clear explanation.
4. **Source context:** show a prefilled initial target or owning Play only when
   the entry point supplied it.

Do not ask for status, full team composition, notes, Tags, Rules,
roles, nature, ability, held item, moves, completion settings, dates, or actual
Team members during creation. Duplicate Plan names are valid. Every new Plan
starts as Draft.

### Contextual Entry Behavior

| Entry point                | Create Plan behavior                                                                                                                    |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Plans Hub or Dashboard     | Choose game, accept or edit the suggested name, and choose applicable optional content.                                                 |
| Codex Game Detail          | Prefill and lock the selected game; preserve any selected content scope.                                                                |
| Codex Pokémon Detail       | Prefill game and exact selectable Pokémon species/form as target slot 1; preselect required optional content only after explaining why. |
| Play without a linked Plan | Lock the Play's game/version, prefill compatible enabled content, create the Plan, and link it to that Play without changing Team.      |

`Add to Plan` from Codex may instead choose an existing compatible Plan. That
is a focused destination handoff, not a reason to add an existing-Plan picker
to ordinary Create Plan.

### Save And Recovery

On success, show a brief confirmation and open the new Plan Detail. A Plan from
Pokémon context contains exactly the confirmed first target. A Plan
from Play context is linked to that Play, but the actual Team remains exactly
as it was.

Creation is atomic across the Plan, optional-content scopes, optional initial
member, and optional Play link. If any required part fails, create none of
them, retain the entered form, and explain the failed responsibility. Prevent
duplicate submission while pending and restore focus to the first invalid
field on validation failure.

Cancel returns to the source with its state intact. Authentication resumption
must preserve game, Pokémon/form, content scope, owning Play, and intended
action without exposing inaccessible user destinations.

## M-15 — Standalone Plan Detail

### Purpose And Difference From Play Plan

Standalone Plan Detail answers `What team do I intend to build?` It owns the
reusable Plan. The focused comparison inside a Play's Team tab answers `What
happened to that intention in this particular Play?` without owning a second
relationship model.

Do not copy the Play comparison list wholesale into standalone Detail. The
standalone surface shows target authoring and aggregate Play usage, not one
selected Play's actual Pokémon beside every target.

### Information Hierarchy

Use this stable order:

1. **Plan header:** reuse the responsive Play Header structure with cover at
   left, Plan identity/lifecycle/context in the center, and high-value actions
   at right; stack in the same order on narrow screens.
2. **Plan checks:** only actionable game availability, persistent-form,
   optional-content, reuse, or Rule conflicts. Omit the section
   when there are none.
3. **Planned Team:** one to six stable equal-height rows in slot order, with
   intentional empty capacity up to six.
4. **Plan setup:** notes, optional content, Rules, and Tags as clearly separated
   editable groups.
5. **Used in Plays:** compact links to every Play currently using this Plan.

Do not add an overall Plan score, Team analysis, completion percentage,
adherence grade, recent Plan activity feed, or permanent selected-Pokémon
inspector in V1.

### Header And Lifecycle

The header's primary action is `Create Play from Plan` for Draft or Active
Plans. Draft Plans may create Plays; a user does not need to declare a Plan
finished before starting an adventure. Lower-emphasis actions include `Edit
details`, `Link to existing Play`, and lifecycle actions in an appropriate
menu.

Lifecycle means:

- **Draft:** being authored or explored;
- **Active:** deliberately kept as a current, ready, or reusable Plan;
- **Archived:** removed from normal current work while preserving its targets,
  setup, and existing Play links.

Draft and Active remain editable. Archived is read-only and cannot create new
Play links or normal edits until the user explicitly
reactivates it. Lifecycle does not measure team completion and does not require
all six target slots to be filled.

Archive preserves every linked Play and its readable comparison. Delete is a
separate guarded action that names the Plan-owned targets, setup, and
Play links that will be removed. It must make clear that Plays, actual Team
members, Progress, and History are not deleted. If deletion cannot safely
preserve an understandable Play state, it fails without partial detachment.

### Planned Member Rows

Every occupied target row keeps these stable regions:

- slot;
- target species/form artwork and identity;
- optional role;
- compact nature, ability, held-item, gender, and planned-move cues;
- concise availability, optional-content, reuse, or Rule warning when present;
- one primary row action and a lower-frequency actions menu.

Selecting `Add target` or `Edit member` opens the accepted Plan-member sheet.
It owns exact target species/form, optional role, nature, ability, held item,
gender, four ordered moves, and notes. Selectors are restricted by
the Plan's game and content scope and preserve explicit warning context.

Member actions include:

- add or edit target;
- move or swap slots;
- remove target.

Reordering has a keyboard-accessible alternative to drag and drop. A move,
swap, member-and-moves save, or removal is atomic and stale-safe. If the Plan
is used by one or more Plays, a reusable edit previews how many comparisons may
change before saving; it never edits any actual Team member.

### Plan Checks

Checks help the user notice consequences without grading or blocking creative
planning. They may identify:

- a target unavailable in the selected game/content scope;
- a fixed, temporary, cosmetic, or otherwise invalid planned form;
- a target requiring optional content not enabled for the Plan;
- a species, form, or evolution-family reuse conflict;
- a supported Rule conflict such as monotype or no legendary Pokémon.

Summarize multiple issues above the list and repeat a concise non-color cue on
the affected row. Warning resolution routes to the owning member, scope, or
Rule editor. V1 warnings do not hard-block saving or creating a Play unless the
underlying identity or ownership would be invalid.

### Plan Setup

Keep four separate responsibilities rather than one large metadata form:

- **Notes:** durable freeform intent for the reusable Plan.
- **Optional content:** scopes that affect planning availability. Disabling a
  scope previews affected targets and preserves them with warnings rather than
  silently deleting them.
- **Rules:** reusable predefined or custom challenge context. Supported rules
  drive warnings; custom rules remain recorded only.
- **Tags:** user-owned organization labels. Tags never affect validation or get
  copied automatically to a Play.

Each group uses an explicit local save or one clearly bounded Plan-details
save. Never mutate a shared Rule or Tag definition as a side effect of editing
one Plan. Global Rule and Tag administration remains deferred.

### Used In Plays

Show every owner-accessible Play linked to this Plan with:

- Play name, game, and lifecycle;
- a plain computed summary such as `4 of 6 planned Pokémon found` when
  trustworthy;
- the Plan link time or Plan update time when useful;
- a route into that Play's Team comparison context.

This section explains reuse and makes cross-Play edit consequences concrete. It
does not embed full actual Team rows or expose manual pairing, skip, or restore
actions. When there are no links, show a compact
`Not used in a Play yet` state without another large creation card.

`Link to existing Play` lists only owner-scoped Plays with the exact game and
version group, no other focused Plan, and a compatible lifecycle. Linking
changes no Team member and creates no inferred member association.

### Create Play From Plan

`Create Play from Plan` opens the accepted two-step Create Play flow with the
game fixed and the source Plan visibly retained. The flow keeps its concise
Play Details and Completion Goal responsibilities; it does not become a team
import wizard.

Before confirmation, show one concise source summary:

- this Plan will remain independently editable and will be linked to the Play;
- the Plan's optional-content scopes prefill enabled Play content, while the
  normal game-aware recommendation owns completion contribution defaults;
- attached Plan Rules are copied as initial Play Rules;
- Plan Tags remain on the Plan and are not copied;
- planned Pokémon do not populate Active or Reserve Team slots.

The Play may later change its own settings without rewriting the Plan. Later
Plan scope, Rule, Tag, or target edits do not silently synchronize into the
created Play; the persistent link supports comparison, not hidden shared
settings.

Creation is one coherent operation across Play metadata and settings, copied
scope and Rule links, and the focused Plan link. On any failure, no partial Play
or link remains. Success
opens the normal Play Overview with an empty actual roster and the existing
Plan context available from its Team Plan section and canonical Plan Detail.

### Responsive And Interaction Behavior

On narrow screens:

- stack Plan identity before actions;
- keep the primary action visible without making every secondary action a full
  button row;
- stack target identity, setup cues, warnings, and action in that order;
- use full-screen or bottom-sheet member editing where appropriate;
- keep Used in Plays as a vertical list;
- never force horizontal scrolling for the target list.

After a sheet, selector, or confirmation closes, return focus to the
originating row or control. Warnings and lifecycle states use text or icons in
addition to color. Pending actions keep unaffected content visible and disable
only the responsibility being saved.

### Detail States And Recovery

Cover these states explicitly:

- new empty Draft Plan;
- partial planned team;
- complete six-target planned team;
- archived read-only Plan;
- Plan used by no Plays, one Play, or several Plays;
- unavailable or invalid target context;
- optional-content and reuse conflicts;
- partial member/setup/usage reads;
- stale member or slot edit;
- failed lifecycle, link, unlink, or delete action;
- unauthorized, deleted, or unavailable Plan.

Preserve the Plan header and unaffected valid sections when one read fails.
Recoverable forms retain user input. Never imply that a Plan edit, Play link,
or Play creation succeeded when only part of the intended operation completed.

## Shared Component Candidates

The visual pass should evaluate these reusable patterns together:

- game identity and cover treatment shared with Plays Browse;
- six-position target preview shared between Hub and Detail;
- one ordered Plan-member row;
- Plan-member editor sheet reused by standalone authoring and any future
  clone-before-edit Play context;
- Rule and Tag editing patterns shared with Play Settings while preserving
  different owners;
- non-color check summary and affected-row warning;
- Play-usage row that links into Play Plan comparison;
- Game List row and status editor that preserve independent intent;
- shared page Spinner, partial-state, and recovery treatments.

Reuse must follow responsibility. A shared visual row does not give Team,
Codex, or a Play comparison permission to mutate reusable Plan facts.

## Data And Database Impact

The planning schema represents Plan metadata and lifecycle, optional content,
one to six ordered members, ordered moves, Rules, Tags, and one focused Plan
link per Play. The retired alternate-member groups, preferred-start fields,
manual Play-member links, and stored member statuses no longer exist. Existing
security-invoker summary and detail views expose authored Plan facts; the
application derives comparison from those facts, Play Pokémon, and evolution
edges. The owner-scoped game-library table and seeded statuses represent the
accepted independent Game List without a new V1 schema concept.

The current schema does not yet provide the complete stale-safe and atomic V1
commands required for creation, member-and-move authoring, safe slot swaps,
guarded lifecycle/delete behavior, or creation of a Play from a Plan with copied
settings and a focused link. The detailed evidence and smallest later database
work are recorded in [Data Requirements And Database Gaps](./database-gaps.md).
This design phase does not authorize schema changes.

No dedicated Hub cache or enlarged convenience summary is required for V1.
Compose target previews, Rules, Tags, and usage from owner-scoped sources first;
consider a convenience projection only after measured query evidence.

## Questions For Visual Validation

1. Validate the clearest compact treatment for switching between Team Plans and
   Game List without making either feel like a hidden secondary feature.
2. Validate the density of the accepted one-column Plan row while preserving
   the same scan rhythm as Plays Browse.
3. Validate the amount of setup detail that belongs in an occupied target row
   before the list becomes harder to scan than the member sheet.
4. Validate whether Plan checks should appear as a compact summary strip or a
   small dedicated section when several targets are affected.
5. Validate the desktop placement of Plan setup and Used in Plays without
   weakening the target list or creating an overly long form page.
