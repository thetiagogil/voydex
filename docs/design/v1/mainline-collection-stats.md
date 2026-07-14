# V1 Mainline Collection And Stats Functional Blueprint

This document defines the V1 Collection, Collection Pokémon Detail, and Stats
experience. These surfaces turn recorded Plays, Team members, History, and
Progress into personal memory and explainable patterns. They are read models;
they do not create a second owner for gameplay data.

## Current Status

**Status: V1 functional contract accepted; visual validation pending**

The three surfaces are designed together:

1. **Collection** answers which Pokémon identities the user has genuinely
   recorded using.
2. **Collection Pokémon Detail** explains the companions, forms, Plays, and
   moments behind one species.
3. **Stats** summarizes trustworthy patterns and always links back to supporting
   records.

Exact card density, chart treatment, section placement, and illustration scale
remain visual-validation questions. The identity model, evidence rules,
filters, actions, states, and data boundaries below are V1 requirements.

## Shared Evidence Boundary

Collection and Stats derive from:

- actual Play Pokémon, including Active, Reserve, Retired, and Replaced;
- recorded lifecycle events with event-time Pokémon identities;
- meaningful Team snapshots and Hall of Fame evidence;
- Play lifecycle, rules, and game context;
- initialized, trustworthy Story, Pokédex, and Collectible progress.

They do not derive usage from:

- planned targets that never became actual Team members;
- Pokédex Seen or Caught state by itself;
- current Active slots alone;
- inferred evolution-family similarity without recorded evidence;
- raw event or snapshot row counts that repeat the same companion;
- database creation time presented as an in-game date.

Collection and Stats are read-only in V1. Corrections and biography edits route
to the owning Play Team or History workflow. Removing a member from a current
slot does not erase preserved usage evidence.

## Relationship To Other Mainline Patterns

Reuse established Mainline grammar only where the task matches:

| Pattern              | Collection and Stats direction                                                                                                                                                       |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Page shell           | Reuse the centered scenic application canvas, plain heading, compact controls, page Spinner, and explicit recovery states.                                                           |
| Search and filtering | Reuse visible high-frequency controls, one More filters disclosure, URL-backed state, removable chips, Load more, and mobile filter sheets.                                          |
| Collection browsing  | Borrow Pokémon identity and artwork language from Codex, but show personal usage rather than encyclopedia facts. Use an image-led responsive grid instead of forcing the Plays list. |
| Collection detail    | Reuse the responsive identity-header grammar, then prioritize companions and recorded history instead of reference sections.                                                         |
| Stats                | Use purpose-built summary values, ranked bars, and supporting lists. Do not force browse cards or Play rows into analytical sections.                                                |

The surfaces should feel like Mainline siblings without pretending that every
screen needs the same list, tabs, or card proportions.

## M-16 — Collection

### Purpose And Browse Unit

Collection is the user's personal history of Pokémon species recorded across
Mainline Plays. It answers:

- Which species and forms have I actually used?
- In how many Plays and as how many recorded companions?
- Which games, generations, types, states, or Tags are represented?
- Where can I revisit the companion or moment that proves that history?

Use one browse result per **species**, not one card per current Team member and
not one duplicate card per form. A species card may represent several exact
forms and several distinct companions. Form-level evidence remains visible,
filterable, and selectable inside Collection Pokémon Detail.

This keeps regional and changeable forms meaningful without fragmenting the
library into repeated species cards. It also gives a stable destination for the
Codex action `View my history with this Pokémon`.

### Page Hierarchy

Use this stable order:

1. **Heading:** `Collection`, a short personal-history description, and one
   quiet evidence summary such as `84 species across 6 Plays` when trustworthy.
   Do not add a permanent row of generic stat cards.
2. **Browse controls:** Search, Game, Type, Sort, More filters, active-filter
   chips, and result count.
3. **Species grid:** one image-led responsive grid with consistent card
   geometry.
4. **Incremental loading:** explicit `Load more`; no endless scroll and no
   Skeletons.

Collection has no Create action. When the account has no recorded Pokémon, its
empty state may route to `Create Play` or `Open Plays`, but ordinary Collection
does not promote mutations that belong to Team.

### Search, Filters, And Sort

Keep these controls visible:

- Search species, form, nickname, Play name, or game;
- Game;
- Type;
- Sort.

Use one `More filters` popover on desktop and focused sheet on narrow screens
for:

- Generation;
- exact Form;
- companion state: Active, Reserve, Past, or historical evidence only;
- Shiny evidence: Shiny recorded, no recorded Shiny evidence, or unknown;
- MVP;
- Play-Pokémon Tag;
- lifecycle of the supporting Play.

Type filtering is game-aware. When a Game is selected, evaluate the recorded
form in that game's generation context. Across all games, a species matches if
supported evidence used that type in at least one relevant Play; the result
must not present a modern type as though it applied to every historical game.

Collection already represents recorded use, so it does not need a meaningless
`Used / Not used` toggle. Exact-form, species, and evolution-family usage remain
available to Codex, Plan checks, and reuse-policy consumers through the shared
read model.

Sort options are:

- most recently recorded, default, with unknown chronology grouped honestly;
- National Pokédex number;
- species name;
- most supporting Plays;
- most distinct companions.

Preserve search, filters, sort, and load position in the URL. Filters apply to
the complete owner-scoped evidence set, including archived Plays, because
Archive must not erase personal history. Show active chips and one `Clear all`
action.

### Species Card

Each card preserves these regions:

1. artwork for the only used form, or the most recently evidenced exact form
   when trustworthy;
2. National number and species name;
3. concise form context such as `2 forms recorded` when more than one applies;
4. `N companions · M Plays`, keeping the two counts distinct;
5. latest trustworthy appearance, or `Date not recorded`;
6. compact Shiny or MVP evidence only when recorded;
7. a quiet open affordance while the whole card opens Collection Pokémon
   Detail.

If several forms exist but chronology is unknown, use a stable species-default
portrait and state the number of recorded forms rather than arbitrarily
claiming one was latest. A Shiny companion does not silently change the whole
species card to Shiny artwork; use explicit evidence text or an accessible cue.

Do not show raw evidence-row count as `times used`. Events and snapshots may
repeat the same individual. Do not add inline Team editing, notes, moves,
abilities, nature, held items, or generic Codex reference data to the card.

### Responsive And Interaction Behavior

Use a responsive image-led grid: several columns at the full desktop canvas and
fewer columns as width decreases, ending in a readable narrow-screen layout
without horizontal scrolling. Every card keeps the same information order and
minimum touch target.

Search stays full width on narrow screens. Filters and Sort remain separate
actions. Returning from Collection Pokémon Detail restores the browse state and
focuses the originating species card. The grid and result-count update remain
keyboard accessible and do not announce every search keystroke.

### Collection States

- **No recorded Pokémon:** explain that Collection grows from actual Play Team
  and meaningful History evidence; offer one route to Plays.
- **Filtered empty:** retain controls and offer `Clear filters`.
- **Historical-only species:** keep the card and label that no current companion
  record remains; do not erase snapshot or event evidence.
- **Partial evidence:** keep the card openable and distinguish unknown date,
  form, Shiny, companion link, or supporting count.
- **Initial loading:** shared page Spinner with the shell visible.
- **Incremental failure:** keep loaded cards and retry only the next slice.
- **Unavailable evidence source:** preserve results supported by other sources
  and identify the unavailable part rather than returning a false empty grid.

## M-17 — Collection Pokémon Detail

### Species-Level Identity

Collection Pokémon Detail is a species-level personal-history page. It may show
several exact forms and several distinct Play Pokémon. It is not:

- the generic Codex encyclopedia page;
- one editable Play-Pokémon biography;
- an evolution-family page pretending related species are the same identity;
- a cross-Play mutation surface.

Use `/mainline/collection/[speciesSlug]` as the stable destination. `All used
forms` is the default. A form selection is URL-backed and filters the personal
evidence without changing the species destination.

### Information Hierarchy

Use this stable order:

1. **Personal identity header:** species artwork, National number, species
   name, selected used-form context, distinct companion count, supporting Play
   count, trustworthy first/latest appearance, and a secondary `Open in Codex`
   route.
2. **Used forms:** a prominent compact selector showing only forms with recorded
   evidence. Keep `All used forms` explicit. Adapt to a searchable selector when
   the species has too many forms for a small visible set.
3. **Your companions:** distinct actual Play-Pokémon records associated with
   this species or a recorded historical stage of this species.
4. **Recorded moments:** meaningful event and snapshot evidence grouped by
   supporting Play.
5. **Evolution-family context:** a compact read-only strip showing which related
   species have their own recorded Collection evidence.

Do not add generic base stats, complete learnsets, type matchups, abilities, or
availability. Those belong to Codex. Do not add Collection summary stat cards,
a global favorite control, or an edit form.

### Personal Identity Header

When one exact form is selected, show its artwork and recorded form label. With
All used forms selected, use the only form when there is one; otherwise use the
most recently evidenced form only when chronology is trustworthy, falling back
to stable species artwork when it is not.

Summary language must distinguish:

- **companions:** distinct actual Play-Pokémon individuals;
- **Plays:** distinct supporting Play records;
- **recorded moments:** event or snapshot evidence, not another companion;
- **first/latest appearance:** only when effective time is known with honest
  precision.

Do not label a species `Favorite` because it ranks highly. `Most used` is a
derived fact; MVP remains an explicit companion property inside its owning
Play.

### Your Companions

Use one compact, consistent row per distinct Play-Pokémon individual. Preserve:

- selected-species evidence and current or last recorded identity;
- nickname when known;
- exact form and Shiny state when recorded;
- owning Play and game;
- current Active/Reserve or Past state;
- MVP and Play-Pokémon Tags when present;
- met location, met level, or final status only when recorded and useful;
- one route to the member's owning Team context.

A companion may currently be Charizard while the Charmander Collection page
includes it because a recorded event proves the Charmander stage. Show that
relationship plainly—for example `Recorded as Charmander · now Charizard`—and
never manufacture a second companion.

If event or snapshot evidence cannot be linked to a surviving Play-Pokémon row,
do not invent an individual. Keep it in Recorded moments as `Historical
appearance` with its known identity and Play.

### Recorded Moments

Group moments by Play rather than forcing approximate and unknown dates from
different Plays into one false global chronology. Each Play group shows:

- cover-led Play identity and lifecycle;
- exact species/form evidence represented in that Play;
- meaningful additions, evolution stages, persistent form changes,
  replacements, retirements, Hall of Fame entries, or deliberate Team moments;
- event-time nickname, level, Shiny state, and Team placement only when
  preserved;
- exact, approximate, or `Not recorded` date language;
- routes to the relevant Play Team member or History event.

Within one Play, preserve the accepted History `timeline_order` and date
certainty. Deduplicate the same underlying event across its subject reference
and Team snapshot. Routine snapshots may prove usage but should not flood the
default moments list; emphasize meaningful events and offer a compact
`N additional appearances` disclosure only when useful.

### Evolution-Family Context

Show the canonical related species as a compact identity strip. Each item is:

- `Used` with forms/Play count and a route to its Collection detail;
- `Not recorded` with an optional quiet Codex route;
- unavailable only when reference data cannot be loaded.

This section supports recognition and reuse context. It does not merge related
species counts, infer that every stage was used, or turn Collection into an
evolution planner.

### Detail States And Recovery

- one form and one companion;
- several forms or several companions across Plays;
- historical stage whose companion has since evolved;
- historical-only event/snapshot evidence;
- unknown first/latest date;
- missing optional biography fields;
- partial companion, moment, or family read;
- deleted or unauthorized supporting Play;
- no trustworthy evidence after stale routing.

Keep valid header identity and unaffected sections when one source fails. A
species whose last evidence was corrected away returns to Collection with an
honest explanation rather than displaying stale personal history.

## M-18 — Stats

### Purpose And Trust Rule

Stats is the home for explainable personal patterns across Mainline. It answers:

- What have I played and completed?
- Which Pokémon and types appear most often in my recorded history?
- Which progress goals and challenges are represented?
- Which Plays or companions support each result?

Every result must state or expose its denominator and route to supporting
records. Unknown or uninitialized data is never silently treated as zero. Raw
database row counts are not automatically user-facing achievements.

### Page Hierarchy

Use one vertically ordered Stats page rather than category sub-tabs in V1:

1. **Heading:** `Stats` and one sentence explaining that results come from
   recorded Mainline history. There is no primary mutation action.
2. **Scope control:** All Mainline by default, with Generation and Game filters
   that apply consistently to every section.
3. **Overview values:** a compact set of trustworthy orientation metrics.
4. **Adventures.**
5. **Pokémon.**
6. **Progress.**
7. **Challenges.**

The visual pass may use section anchors or a compact local navigator for a long
desktop page, but it must not hide categories behind independent stateful tabs
or make users reapply scope filters.

Do not add an arbitrary date-range filter in V1. Historical Plays and events
may have approximate or unrecorded dates, so a precise time slice would exclude
them deceptively. Generation and Game are the stable scope controls.

### Overview Values

Use no more than four compact values selected from:

- total Plays;
- Completed Plays, explicitly lifecycle rather than goal completion;
- distinct games;
- distinct recorded species.

Recorded playtime may replace one value only when coverage is shown, for
example `126h recorded · 4 of 6 Plays`. Omit it when no Play has a recorded
value. Do not include total Plans, raw History events, or completed milestone
rows merely because the current summary view exposes them.

These values belong on Stats, unlike the action-led Dashboard. They should
orient the page without dominating the richer sections below.

### Adventures Section

Show:

- lifecycle distribution across Plays;
- Plays by generation;
- Plays by game;
- lifecycle Completed count and completion-goal-met count as distinct facts
  when the latter is trustworthy;
- recorded playtime with coverage, when available.

Use ranked horizontal bars or labelled rows rather than relying on pie slices.
Selecting a row opens Plays Browse with the equivalent Game, Generation,
Status, or completion filter. Archived Plays remain part of historical totals,
with Archive disclosed only when a filtered destination needs it.

### Pokémon Section

Show explainable personal usage:

- most used species by distinct supporting Plays, then distinct companions;
- most used forms when form-level evidence is meaningful;
- most represented types using the recorded form in each Play's generation
  context;
- species used in more than one Play;
- recorded Shiny companions and explicit MVP companions.

Call these `Most used`, never `Favorite`, unless a later explicit favorite
feature exists. Do not count event references or repeated snapshots as new
companions. Each species/form/type result opens Collection with matching
filters; a specific species opens Collection Pokémon Detail.

V1 does not calculate a Pokémon score, rank companions by quality, or infer a
best Team. Type frequency is descriptive, not a judgment about balance.

### Progress Section

Show only initialized and explainable progress:

- Plays whose configured completion goal is met;
- completed named Pokédex scopes;
- completed named Collectible groups;
- completed Story paths or Main Story when the accepted progress contract can
  establish them;
- coverage such as `Progress recorded for 4 of 6 Plays`.

Do not average unknown Plays as zero or omit them from an unlabeled average. If
an average is ever shown, name the initialized denominator next to it. Prefer
counts of completed named scopes and distributions over one misleading global
completion percentage.

Each result routes to supporting Plays or directly to the relevant Play
Progress area. Stats never edits Progress.

### Challenges Section

Show:

- Plays using each attached Rule;
- Rules represented across completed versus current Plays;
- custom Rules as recorded participation only.

Do not claim challenge success, failure, compliance rate, or difficulty unless
the owning Rule has explicit checkable evidence for that result. V1 Rule checks
produce warnings, not a complete adjudication system. Selecting a Rule opens
Plays Browse with the matching filter.

### Visualization And Accessibility

Prefer labelled ranked bars, distribution rows, compact matrices only when they
remain understandable, and visible numeric values. Every visualization has an
equivalent textual or tabular reading order. Tooltips supplement rather than
contain the only value.

Color supports Game, type, lifecycle, and progress recognition but never
carries meaning alone. On narrow screens, charts become or remain vertically
stacked labelled rows rather than horizontally scrolling canvases. Keyboard
focus, screen-reader names, selected scope, and supporting-record links remain
explicit.

### Stats States And Recovery

- **No Plays:** explain that Stats grows from recorded Plays and offer one
  route to create or browse Plays.
- **Sparse history:** show supported values and quiet explanations for sections
  that need more evidence; do not fill the page with zero cards.
- **Unknown coverage:** display the known numerator and denominator explicitly.
- **Filtered empty scope:** preserve the scope control and offer `Clear scope`.
- **Partial section failure:** keep other sections and retry only the affected
  analysis.
- **Initial failure:** focused page retry; never present as an empty account.
- **Initial loading:** shared page Spinner; no chart or card Skeletons.

## Shared Component Candidates

- Mainline URL-backed Search/Filter/Sort controls adapted to Collection fields;
- species Collection card derived from Codex identity artwork without reference
  overload;
- used-form selector shared with species-level Collection context;
- companion row linking back to Play Team;
- evidence moment row aligned with History event language;
- supporting-Play group shared across Collection Detail and Stats drill-downs;
- accessible ranked-bar and distribution-row patterns;
- compact metric value with explicit coverage;
- shared page Spinner and localized partial-recovery treatment.

Shared visuals do not change ownership. Collection and Stats remain read-only,
and every correction routes to Team, History, Progress, or Settings.

## Data And Database Impact

The existing database has a strong base:

- Play Pokémon preserve distinct companion records, current/Past state, Shiny,
  MVP, biography fields, and Tags;
- event Pokémon references and Team snapshots preserve historical identities;
- species preserve evolution-family identity;
- generation-aware Pokémon attributes support game-context type calculations;
- Plays, Rules, Progress, and lifecycle data support scoped Stats;
- security-invoker Collection and Stats views prove the intended read-model
  direction.

The current Collection views are not yet a truthful final V1 contract. They
aggregate by species/form rather than the accepted species browse and companion
detail, count repeated evidence rows as usage events, omit individual companion
links and most filtering facts, and treat row creation time as usage time when
effective history is unknown. The later database pass must correct that
read-model behavior without introducing a mutable Collection source table.

The current Stats summary is a starter aggregate, not the V1 page projection.
Most accepted Stats can be composed from existing owner-scoped tables and the
corrected Collection/progress contracts. Do not add a new aggregate schema or
cache merely for convenience. A dedicated projection or cached aggregate is a
future performance improvement unless profiling proves it necessary.

Detailed evidence and the smallest later corrections are recorded in
[Data Requirements And Database Gaps](./database-gaps.md). This design phase
does not authorize schema or seed changes.

## Questions For Visual Validation

1. Validate Collection card density and artwork scale with realistic libraries,
   long form names, multiple forms, and mobile widths.
2. Validate whether the used-form selector remains prominent without competing
   with the personal identity header.
3. Validate the balance between companion rows and recorded moments so Detail
   feels personal without becoming another full Play History.
4. Validate whether Stats section anchors are useful on desktop or whether the
   vertical narrative is already easy to scan.
5. Validate ranked-bar, coverage, and sparse-data treatments in both themes and
   narrow layouts before adding any richer chart type.
