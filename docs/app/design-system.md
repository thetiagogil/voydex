# Design System

Voydex should feel like a clean adventure companion: warm, playful, polished, and Pokémon-adjacent without becoming loud or toy-like.

Avoid a corporate SaaS hero, a generic wiki look, and overly game-ish UI chrome.

The canonical V1 art-direction brief is
[Voydex V1 Visual Language](../design/v1/visual-language.md). Exact visual
tokens and component treatments remain provisional until one of the three
representative shared-shell and Plays Browse directions is selected.

## Design Direction

The desired mix:

- Adventure.
- Clean companion app.
- Pokémon-related, but not a direct Pokémon brand copy.
- Soft illustrated scenic imagery.
- Clear data surfaces for repeated use.
- Subtle personality through assets, icons, color, and state.

## UI Stack

- Tailwind CSS.
- shadcn-style primitives in `src/shared/components/ui`.
- Base UI-backed shadcn primitives where installed.
- Lucide icons for interface actions.
- Custom visual assets for hero/background/brand moments.

## Component Rules

- Use `src/shared/components/ui` primitives for buttons, inputs, selects, sheets, dialogs, dropdowns, tabs, accordions, fields, and similar controls.
- Use Base UI `render` composition when a primitive supports custom rendering. Do not use Radix `asChild` unless the local primitive explicitly supports it.
- Keep `src/app` route files thin. Put real UI in `src/modules`, `src/features`,
  or `src/shared` components.
- Prefer reusable product components for repeated play surfaces such as play headers, tab shells, progress summaries, Pokémon cards, type badges, and empty states.
- Generated screenshots are design references, not exact code specs. Implement the intent with real data, responsive behavior, accessibility, and existing app primitives.
- Avoid overcomplicated Tailwind strings. If styling repeats, extract a small component or variant.
- Standard cards, panels, tables, filters, and repeated data surfaces should use
  solid semantic surfaces such as `bg-card`, `bg-background`, and `bg-popover`.
  Do not create feature-local glass/opacity/backdrop recipes for normal data
  surfaces. If a surface behavior repeats across modules, put it in a shared
  primitive, variant, or helper.
- Reserve alpha and backdrop effects for intentional visual layers: artwork
  overlays, hero/media treatments, modal scrims, disabled states, and semantic
  status tints.

## Loading Pattern

V1 uses the shared page-level spinner for an initial asynchronous page load. Keep
the persistent application shell visible, then center one accessible Spinner in
the page content region with a concise loading label. Do not build screen-shaped,
card-shaped, row-shaped, or field-shaped Skeleton placeholders in V1.

When an in-place operation already has valid content to preserve, keep that
content visible and use a localized pending Spinner on the responsible control
or section instead of replacing the whole page. Loading, empty, partial, and
error states remain semantically distinct. Skeleton loading may return only as
a later design-system enhancement after the real layouts are stable and its
perceived-performance value is validated.

## Color Tokens

`src/app/globals.css` is the stylesheet entry point and owns the base shadcn
tokens. App, Pokemon, and game token groups are split under
`src/shared/styles` and imported from that entry point.

The current production tokens still reflect the previous blue-primary visual
grammar and are implementation evidence, not the new target. The accepted V1
direction uses forest/field green and leather/earth brown as the identity,
warm beige as the working canvas, sky blue as atmosphere or information, and
muted gold for selected discoveries and milestones. Exact values wait for the
representative visual selection. Avoid turning the whole app into one
flat-color theme.

Existing token groups:

- Base UI tokens: background, foreground, card, primary, secondary, muted, accent, destructive, border, input, ring.
- App semantic tokens: success, info, warning, rare, legendary, mythic, seen, battle, milestone, decision.
- Pokémon type tokens: normal, fire, water, electric, grass, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dragon, dark, steel, fairy.
- Pokémon game tokens: cover/accent colors for seeded games such as red, blue,
  yellow, emerald, scarlet, violet, and Legends entries. These live in
  `src/modules/reference/features/games/styles/game-tokens.css`, are exposed
  through `src/modules/reference/styles.css`, and are used by Codex game cards
  and game detail accents.

## Layout Rules

- App pages use the shared `AppShell`. Protected routes provide an authenticated
  account state; public Codex routes use `PublicAppShell` and can render for
  anonymous users.
- Align the navbar and main app content to a centered responsive canvas of
  roughly 1200–1280 pixels at large viewports.
- Treat that canvas as a maximum working width rather than stretching every
  section. Reading content and forms may be narrower; browse grids, tables, and
  workspaces can use the available width.
- Keep the background image visible in the side gutters and, where appropriate,
  subtly behind page context so the app retains its scenic sense of place.
- Avoid nested cards unless the inner card is a true repeated item or modal.
- Prefer dense but clear operational surfaces for logged-in app workflows.

## Global Authentication Direction

Keep the current scenic, centered authentication composition, but simplify its
shell to Voydex identity rather than an unrelated remembered module selector.
Use a visible semantic heading for Log in, Sign up, Recover account, Check your
email, or Choose a new password. The card remains focused and readable; it does
not become an onboarding or account-profile form.

When authentication interrupted a meaningful task, place one compact intent
summary between the description and form. Identify the protected destination
or exact Game/Pokémon Mainline action without turning the summary into a second
hero. Provide one clear cancel/return path to the public origin.

Keep persistent labels, useful autocomplete, an accessible password visibility
control, and stable field geometry. Error states preserve Email, clear
passwords, associate feedback with fields, and move focus deliberately.
Pending state uses the localized Spinner already established by the button.
The same single-column structure should fit common phone widths and short
viewports without hiding the primary action.

## Global Settings Direction

Use one calm, readable vertical column for Profile, Preferences, and Account.
Three sections do not need local tabs, nested routes, or a side
rail. Reuse the plain Page Header and semantic Card/surface grammar, but avoid a
stack of visually identical boxes when a clear section heading and divider is
enough.

Profile and Pokémon Reuse preferences save independently and expose actions
only while dirty. V1 does not expose an Appearance choice: it uses the
canonical light-first presentation until a deliberate night-expedition theme
is designed. Account separates read-only identity, password recovery, Sign out,
and a consequence-led Danger zone. Destructive meaning comes from hierarchy and
copy as well as color.

Keep the same vertical order on mobile. Controls should not be compressed into
horizontal tabs, and action rows must stack without reversing the meaning of
primary, secondary, and destructive choices.

## Shared System-State Direction

Build one shared state grammar rather than separate decorative cards per
feature. Initial loading keeps the shell and centers the shared labelled
Spinner. Local pending and section errors preserve useful content. Empty,
filtered empty, unrecorded, unavailable, permission, not-found, expired
session, and service failure each use distinct language and recovery actions.

Page errors use a real heading, concise explanation, Try again, and one
owner-appropriate exit. Public Not Found favors Home and Codex; protected
resource states return to the owning library without leaking inaccessible
existence. Broad connection trouble uses a persistent banner below navigation
with impact and retry, never a tooltip-only floating database icon.

Keep status surfaces visually quiet enough to fit Voydex's scenic shell while
remaining unmistakable. Use semantic foreground/background tokens, real text,
visible focus, and non-color meaning. Do not add Skeletons, large error
illustrations, or different layouts for every feature before the shared state
geometry is validated.

## Mainline Dashboard Direction

Treat Dashboard as a play-led resume surface rather than a generic analytics
layout. Give the most recently updated non-archived Play visual priority, with
Continue, Start, or Revisit language adapted to its lifecycle, then show lighter
previews of other recent Plays and meaningful activity. Keep Create Play primary
and Create Plan lower emphasis in the page heading; do not repeat them in a
Quick Actions card.

Within the featured Play, keep a stable reading order of cover-led identity,
Journey, six equal Active-Team sprite states, one overall Progress summary, and
one routed Next Step. Reuse the Play Header recommendation without placing
mutation logic on Dashboard. Exclude the detailed metadata, group summaries,
Plan comparison, and History content already owned by Play Overview.

Render Other Recent Plays as no more than three compact, cover-led rows in one
vertical list. Each row carries only identity, lifecycle, one Journey line, and
update context, and opens Play Overview. Keep the same pattern on mobile without
a carousel or horizontal scroll. Do not repeat Team, Progress, or another Next
Step in these subordinate summaries.

Use no more than four compact rows for Recent Meaningful Activity. Lead with the
event type and title, keep the owning Play and honest date legible, and include
event-time Pokémon imagery only when it aids recognition. The entire row opens
the owning Play History event. Keep the empty explanation small, and do not add
a global activity action or turn these moments into large cards.

Let Dashboard system states reshape only the affected content. A first-adventure
or only-archived state replaces the normal summaries and owns its actions so the
heading does not duplicate them. Partial summaries retain the same geometry and
use explicit unavailable labels. Supporting-section errors stay local, while a
complete read failure uses one focused recovery state.

Do not add a permanent equal-card quick-stat strip in V1. Rich personal patterns
belong to Stats, while Recent Meaningful Activity should show actual moments
rather than reducing them to an event count. Exact Dashboard composition remains
pending the three-direction visual checkpoint.

## Mainline Play Hub Direction

The Play Hub top section should be contextual page information, not a Card. It
can sit directly on the scenic background so the user can focus on the tabbed
workspace below.

Use one coherent Play Header above the tabs. At large viewports, place game
cover art on the left, Play identity and high-value context in the center, and
an adaptive Play-wide action region on the right. The action region holds one
primary Next Step and at most two lower-emphasis alternatives; utility links do
not compete with it. At smaller viewports, stack that action region within the
same header before the tabs. Do not create a second setup banner in the Overview
workspace.

Keep the center information hierarchy consistent: title, game/lifecycle
metadata, meaningful personal or time facts, then compact completion and
challenge context. Omit unknown optional facts rather than showing placeholder
labels. Do not repeat Team and detailed Pokedex summaries here; those belong to
Overview and their owning workflows.

Make the displayed Play status a compact, keyboard-operable control with
contextual verb actions rather than a raw select. Start and Resume may receive
primary emphasis when they are the adaptive Next Step; reuse that shared action
instead of rendering two identical CTAs. Playing exposes Pause, Complete, and
Abandon without turning the Header into a toolbar. Completed and Abandoned keep
their stable label with a lower-emphasis Reopen action. Use a focused bottom
sheet on narrow screens.

After a Completed Play is normally reopened, keep the current Playing status
visually primary and show a recorded prior completion only as the compact
secondary fact `Previously completed on ...`. Do not style historical completion
as a warning or make it compete with the current status.

Use focused compact sheets for Start, Mark completed, and historical Record as
completed because they establish date knowledge. Start and Mark completed
preselect editable Exact Today values; historical completion preselects `Not
recorded`. Keep Exact, Approximate, and `Not recorded` choices visible without
turning the interaction into a full Settings form. Pause, Resume, and Reopen
remain immediate actions with clear success or failure feedback. Abandon uses a
short confirmation that emphasizes preservation and reversibility.

The main Play Hub workspace should be one Card containing tabs. The current tab
set is Overview, Team, Progress, Plan, History, and Settings. Only build rich
tab content when the underlying workflow is ready.

Overview should stay high-signal and avoid filler:

- Left column: Journey Status and Recent History.
- Right column: Current Team and Progress Summary.
- Show linked-Plan context compactly inside Current Team when present; do not
  add a permanent fifth Plan card or a large empty state when absent.
- Keep Journey Status qualitative: current or furthest Story position and the
  next applicable objective. Numeric Story completion belongs in Progress
  Summary and should not be duplicated with a second path-progress visual.
- Keep all six Current Team slots identical in dimensions and internal layout
  across occupied, confirmed-empty, and not-recorded states. Use the shared icon
  system plus explicit labels for placeholders; never resize or collapse a slot
  because no Pokémon portrait is available.
- Plays Browse reuses this semantic component as a denser read-only variant.
  Always render six equal Active positions: occupied slots use the Pokémon's
  actual current-form sprite, confirmed-empty and not-recorded slots keep
  distinct shared placeholders, and Reserve members or Team controls stay out
  of the preview. Preserve an accessible group label without adding a visible
  `Active Team` heading inside the compact row.
- Use one full-width, cover-led Play row per result across the desktop canvas;
  do not add a V1 grid/list switch. Preserve the same information order when
  each result becomes a stacked vertical card on narrow screens, and avoid
  turning the row into either a dashboard or a data table.
- On phones, keep only the cover and Play information in the top row. Move the
  six-slot Team preview and then Overall plus the directional arrow into their
  own full-width rows beneath that section. Reduce the cover's visual weight and
  enlarge the Team slots so sprites remain immediately recognizable.
- At tablet widths, use one compact horizontal row with a smaller cover instead
  of stretching the phone stack across the canvas. Give Team the largest share
  of the middle canvas. Reduce the cover one further step on desktop so it stays
  subordinate to Play identity and Team while retaining the established
  horizontal proportions.
- Keep each Browse row deliberately compact: a proportional cover that fills
  the padded content height and respects the row's shared outer inset, Play
  name, exact game name, quiet update date, the six-slot Active Team, one
  overall completion percentage, and one unlabelled directional arrow. Do not
  put the cover inside another box. Give inset covers the same subtle radius on
  all four corners instead of inheriting the Card's top-only edge-to-edge media
  treatment. Do not repeat lifecycle, Journey, trainer details, Tags, or
  category-level progress inside every result.
- Use spacing rather than vertical separator lines between the information,
  Team, overall progress, and arrow sections.
- Overall completion is the normalized configured goal across required Story
  milestones, Pokédex species, and Collectibles. Preserve concise not-recorded
  or unavailable states instead of treating missing knowledge as zero.
- Keep Browse controls compact: visible Search, Status, Game, Sort, and one
  `More filters` disclosure on desktop, followed by removable active-filter
  chips only when needed. On narrow screens, keep Search visible and present
  Filters and Sort as separate actions rather than one ambiguous menu.
- Keep archived Play rows openable and show Archive independently from
  lifecycle. Place Restore outside the row link as the only Browse mutation,
  with separate focus and accessible naming.
- Show the active lineup only in Overview. Reserve is a compact positive count,
  not a second roster or Active/Reserve toggle; linked-Plan context remains a
  short row beneath the slots when present.
- Do not add Team Health to Overview until the Team tab has a real analysis
  model.
- Keep Recent History to three to five concise meaningful events with one route
  into History. Label approximate or unknown dates explicitly and use compact,
  distinct empty language for new versus imported Plays.
- Do not add extra right-column cards just to fill vertical space.
- Overview cards should use the shared detail section card pattern and avoid
  feature-local card styling.

Progress Summary should preserve stable Story, Pokédex, and Collectibles rows.
Story is always present; omit optional groups when they are disabled or do not
apply to the game. Each visible group uses one progress bar and visible rounded
normalized percentage, with compact `Tracked only`, `Not recorded`, or
`Partially recorded` context when needed. Keep named child tracks and native
counts in Progress rather than expanding the Overview card.

## Mainline Team Tab Direction

Use a two-column list-detail workspace at large viewports. Keep one compact
roster list on the left with all six Active and six Reserve positions grouped
and labelled; use the wider right side for the selected Play Pokémon's larger
artwork, identity, recorded detail, moves, and actions. Quick Team Analysis and
Recent Team Events remain supporting sections beneath the selected detail.

Roster rows should use small portraits, equal geometry, lightweight separators,
and a clear selected state. The selected-member panel should use materially
larger artwork and stronger hierarchy so it reads as the result of choosing a
roster row. Do not use a large-card roster board for V1 because similar artwork
scale across roster and detail weakens that relationship.

Treat rows as compact selectors and slot actions rather than miniature cards.
Keep slot, portrait, identity, level, types, selection, and overflow regions in
stable positions across occupied, confirmed-empty, not-recorded, pending, and
unavailable states. Selected styling needs a visible cue beyond color and must
not replace the persistent overflow action. Empty and unknown rows retain the
same dimensions as occupied rows and use different language and iconography so
missing knowledge is never presented as confirmed capacity.

Place one quiet `Past members (N)` route beneath the fixed current roster. The
Past Members state replaces the twelve-slot list with a compact uncapped member
list and a clear return to Current Team; do not mix historical rows into the
Active or Reserve groups or turn History into the member browser.

Within the selected-member panel, use an identity-first hierarchy: large
correct-form artwork and concise identity lead, current setup and personal
record form the middle layer, and the four-position moveset and contextual
actions follow. Use grouped facts and progressive disclosure instead of one
dense undifferentiated grid. Keep `Add Pokémon` as the screen's canonical
primary action; `Edit details` remains clear but lower emphasis, while replace,
retire, and Codex routes remain secondary. Do not visually promote transient
battle values or generic reference content into this Play-owned surface.

Use focused dialogs on wider screens and sheets on narrow screens for Move,
Change form, Replace, Retire, Return, and Correct record. Move uses one explicit
twelve-destination surface where an empty slot means move and an occupied slot
means swap; drag and drop only supplements it. Evolution and persistent form
change use a strong before-and-after identity preview. Replace keeps outgoing
and incoming members visible together. Reserve destructive styling for the
final Delete Pokémon record confirmation, not Retire.

Treat a displayed form as identity, not evidence that it is mutable. Show
`Change form` only when the selected member has a valid outgoing form transition
in the Play's game; fixed regional or otherwise inherent forms keep their form
label but expose no change action.

Quick Team Analysis uses three compact, equally weighted visual regions for
defensive pressure, move coverage, and a short watchlist, followed by one
evidence line and one canonical route to the focused analysis. Each region uses
an icon, explicit label, plain-language evidence, and counts where useful.
Color supports meaning but never carries warning or confidence state alone.
Partial-data treatment must be as visually deliberate as complete analysis and
must not resemble a negative score.

The focused Team Analysis view keeps the Play shell and Team context, then uses
full-width vertically stacked analysis sections. Do not place the defensive and
move-coverage matrices side by side. On narrow screens, replace each wide
matrix with type-grouped expandable rows that expose affected members, moves,
and exact multipliers. Keep the view read-only, use one clear return to Team,
and do not add a composite Team Score in V1.

Recent Team Events uses no more than three compact, consistent rows beneath
Quick Team Analysis. Each row combines a recognizable event icon, one concise
Pokémon-first sentence, explicit date certainty, and restrained event-time
artwork. Use one portrait for an addition or retirement, a small
before-and-after pair for an evolution or replacement, and a compact member
stack for a Team snapshot. A returned member also uses one portrait. Keep one
`View Team history` section action; do not turn events into large cards or add
row overflow menus.

When a Team Plan is linked, use one restrained comparison strip below the
roster toolbar rather than a separate card. Keep the Plan name, reached/target
summary, exceptional skipped context, and `Compare with Plan` action readable
without a large progress bar. Omit the entire strip when no Plan is linked.

The `Record Team moment` surface is a compact dialog on wider screens and a
sheet on narrow screens. Lead with the read-only six-position Active-Team
preview, then title, date certainty, and optional note. Reuse the established
occupied, confirmed-empty, and not-recorded slot visuals; make the Active-only
snapshot scope explicit and do not add per-member controls.

At narrow viewports, show the roster first and open the selected member in a
focused Team detail view or sheet with a clear return path. Preserve explicit
keyboard selection, focus movement, and non-drag move or reorder controls.

## Mainline Progress Tab Direction

Use one calm full-width completion summary followed by three consistent,
generous tracking-area rows for Story, Pokédex, and Collectibles. Prefer this
scannable hierarchy over a dense dashboard of small cards. Keep each row's icon,
label, percentage or recording state, native context, next step, and `Open`
action in stable regions so the areas feel related without pretending their
underlying units are interchangeable.

Show completion scope as one compact strip near the summary. Optional content
and completion rules are context with one Settings route, not another colorful
tracking card. Do not add three update buttons beside the page title or repeat
row content in separate Next-up, Completion Rules, and Recent Activity cards.

Use `Not recorded`, `Partially recorded`, and `Not tracked` as first-class
states. Do not render them as empty progress bars or zero-percent failures.
Unsupported areas are omitted; supported disabled areas may sit in a quieter
secondary group. On narrow screens, each tracking row stacks its summary before
the next step and action without changing the stable Story, Pokédex,
Collectibles order.

Focused Story, Pokédex, and Collectible views keep Progress selected in the Play
Hub. Progress itself always opens the Overview. Do not add persistent local
sub-tabs or turn the Hub tab into a dropdown. Use a plain local return or
breadcrumb and, only when useful, a compact area switcher that cannot be
mistaken for another top-level tab bar. Keep Story-path, named-Pokédex, and
Collectible-group selectors inside their focused views.

Within Story, keep the ordered milestone list and selected milestone visually
distinct. The list is the compact selection source; the larger detail region
owns description, prerequisites, decision, snapshot context, notes, and
actions. A game-aware track switcher may separate Main Story, Postgame, DLC, or
parallel paths without becoming another global navigation layer. Milestone
ordering communicates reading order, not dependency. On narrow screens, open
the selected milestone in a focused view or sheet and return focus to its row
when closing.

Keep ordinary `Mark complete` visually direct. Add a contextual sheet only when
prerequisites, a decision, optional record details, or a deliberate `Record
story moment` path requires attention. Treat `Bulk complete` as a separate
review flow with a clearly grouped change preview and a sticky confirmation
action on narrow screens. Do not use History, snapshot, date, or optional-content
checkboxes as a wall of settings in the routine completion path.

Within Pokédex, keep named-scope selection visually prominent above the species
browser. Prototype a horizontal card rail with clear active treatment and
concise progress. Show small scope sets together on desktop; use a horizontally
scrollable and snapping tablist with a visible next-card edge on narrow screens.
Keep one static identity card when there is no alternative. The rail is subject
to visual validation and may change if it consumes too much space or competes
with the results. Use a compact Caught-first active-scope summary, then stable
search/filter/sort and Grid/List controls. Grid cards share one size; List rows
preserve the same information order at higher density.

Use one explicit three-state species control rather than unrelated Seen and
Caught toggles. Keep the control operable and labelled in both Grid and List.
Batch sheets may use checkboxes for temporary species selection, followed by a
grouped state-change preview and a sticky confirmation action on narrow screens.

Within Collectibles, use a family-grouped navigator and selected-group detail
when multiple groups apply. Keep native counts and completion context on the
group, not repeated across every entry. Collapse to a full-width tracker when
there is only one group. Narrow screens move from group list to focused detail
instead of compressing a two-column workspace.

Identifiable entries use dense rows suited to location and hint text. Keep
search, status/location filters, and sorting in stable regions; avoid card grids
for long location-aware lists. Count-only groups use a clear native count
control and explain that identity-level missing locations are unavailable.
Batch actions use a reviewed sheet rather than a filter-dependent one-click
`Mark visible` action.

## Mainline Play Plan Tab Direction

Use a full-width comparison list whose rows read `planned target → relationship
state → actual result`. Borrow Team's compact, equal-row rhythm without reusing
its persistent selected-Pokémon detail panel. The Plan list is the workspace;
member editing opens a focused sheet only when requested.

Lead with one restrained Plan identity area, plain Primary-target counts, and
only actionable Plan checks. Keep six Primary rows stable and equal in height.
Empty positions use an intentional `Add target` state rather than an unknown
Team slot. Alternates reuse the same row but stay compact or collapsed when
empty. When actual members have no explicit Plan relationship, show them below
as a concise, non-judgmental `Team outside this Plan` list.

Each occupied row keeps target identity and optional role, preferred start,
compact setup cues, explicit relationship label, linked actual identity and
placement, and one state-appropriate action in stable regions. Do not show an
adherence percentage, progress bar, score, duplicate Team analysis, recent
activity feed, or expanded move and notes content in every row.

Use non-color labels for `Not used yet`, `Not used`, `In progress`, `Reached`,
`Diverged`, `Skipped`, and `Off-plan`. Never visually pair an unlinked actual
member to a target merely because their slots or species look related. On
narrow screens, stack target, relationship, actual result, and action in that
order instead of horizontally scrolling the list. Reordering must always have
a non-drag keyboard path.

## Mainline Standalone Plans Direction

Treat Plans Hub, Create Plan, and Plan Detail as one visual family, while
preserving their different jobs. Hub is a reusable-plan library, Create is a
short contextual beginning, and Detail is the target-authoring workspace. Do
not make all three look like the same dense form.

Plans Hub should feel related to Plays Browse through game cover treatment,
search/filter rhythm, explicit Archive visibility, and single-destination
results. Give Team Plans and Game List one obvious compact local switch because
they are sibling kinds of future intent with different controls and rows; do
not merge them into one feed. On narrow screens the switch may adapt, but
neither view should become hidden in an overflow menu.

Use the same one-column, cover-led library rhythm as Plays Browse rather than a
Plan grid, table, or grid/list toggle. Keep Search, Status, Game, and Sort
visible on desktop, put lower-frequency criteria in one More filters surface,
and preserve active criteria through URL state and removable chips. On mobile,
keep Search visible and expose Filters and Sort separately.

Each Plan summary preserves six equal Primary target positions in slot order.
Open positions are intentional Plan capacity and need an add/open target
treatment, not Team's unknown question mark. Alternates remain a count on the
summary. Game List rows instead emphasize cover, explicit intent status, note,
and quiet Plan/Play context. Avoid inline Plan editing, scores, completion
bars, and rows of secondary actions.

Create Plan uses one focused form with game, editable suggested name, and only
applicable optional content. Context from Codex or a Play appears as retained
source information, not as a growing set of generic selectors. A prefilled
Pokémon target should be visually confirmable without turning the form into a
six-member builder. Reuse Create Play's modal/sheet, validation, pending, cancel,
and success grammar, but keep Plan creation to one step because it has no
Completion Goal decision. Success moves into Plan Detail for real authoring.

Standalone Plan Detail gives the Primary target list the strongest visual
weight. Reuse the Play Header's responsive cover-left, identity-center,
actions-right structure, but do not add Play Hub tabs to this single authoring
workspace. Use six equal full-width rows, with existing Alternates below in the
same row language and a compact empty Alternate state. Occupied rows keep target
identity, preferred start, role, concise setup cues, warnings, and one clear
action in stable regions. Member editing belongs in the shared focused
Plan-member sheet; do not add Team's persistent selected-Pokémon panel.

Keep actionable Plan checks near the target list and repeat concise non-color
cues on affected rows. Notes, optional content, Rules, Tags, and Used in Plays
are supporting sections. They should remain clearly separated and scannable
without competing with target authoring. Used in Plays uses compact linked-Play
rows and routes to each Play's Plan comparison; it is not another embedded
Team or comparison table.

On narrow screens, preserve the same target order and stack identity, setup,
warning, and action. Keep lifecycle and the primary Create Play action visible
without expanding every secondary action. Use the shared page Spinner for
initial reads, localized pending feedback for mutations, and no Skeletons.

## Mainline Collection Direction

Use the shared centered application canvas and Mainline browse-control rhythm,
but let Collection be an image-led responsive Pokémon grid rather than forcing
it into the cover-led Plays/Plans list. Borrow species artwork, National number,
and form identity language from Codex while replacing encyclopedia facts with
personal evidence.

Keep one equal-geometry card per species. Lead with artwork and identity, then
form context, distinct companion and Play counts, honest latest-appearance
knowledge, and explicit Shiny or MVP evidence when recorded. Do not style one
species as Shiny merely because one of several companions was Shiny, and do not
label repeated event or snapshot evidence as times used.

Use visible Search, Game, Type, and Sort with one More filters disclosure and
URL-backed chips. Collection has no Create action. Keep the grid responsive
without a V1 Grid/List toggle, preserve browse context on detail return, and use
Load more rather than endless scrolling.

Collection Pokémon Detail uses a personal identity header rather than cloning
Codex Detail. Make used-form scope prominent, then prioritize distinct
companions, Play-grouped meaningful moments, and compact evolution-family usage
context. Companion rows may show `Recorded as Charmander · now Charizard` when
the same individual evolved. Historical appearances without a surviving member
link remain explicit evidence, not invented companions.

Do not add generic stats, learnsets, abilities, availability, or editable
biography forms to Collection Detail. Route those responsibilities to Codex or
the owning Play Team/History. On narrow screens, stack header, form scope,
companions, moments, and family context in that order.

## Mainline Stats Direction

Use one vertically ordered Stats page with one shared All Mainline,
Generation, or Game scope. Keep a compact orientation set followed by
Adventures, Pokémon, Progress, and Challenges. Do not require category sub-tabs
in V1; a quiet section navigator may be tested only if the visual page becomes
difficult to scan.

Prefer labelled horizontal bars, distribution rows, ranked lists, and visible
numbers over decorative dashboards or pie-heavy chart walls. Every
visualization must expose its denominator and supporting-record route, retain a
textual reading order, and adapt to vertical labelled rows on narrow screens.
Color supports Game, type, lifecycle, and progress identity but never owns the
meaning.

Stats may use compact metrics because this is their dedicated home, but only
when the facts are trustworthy. Playtime needs recording coverage, Progress
must distinguish unknown from zero, and Rule counts describe participation
rather than success. Use `Most used` instead of `Favorite`; never add composite
scores, opaque correlations, or inferred best Teams in V1.

Initial reads use the shared page Spinner. Sparse or partial data keeps valid
sections and explains unavailable analysis rather than filling the page with
zero cards or Skeletons.

## Codex Pokémon Direction

Codex Pokémon should feel like the information-rich sibling of Mainline, not a
generic wiki and not a second personal Collection. Reuse the centered shell,
plain page-heading rhythm, semantic surfaces, Pokémon type language, and browse
controls while giving artwork and game context more visual authority.

Pokémon Browse uses a compact image-led species grid. Keep the exact active
Game context visibly stronger than an ordinary filter because it changes card
type, form, artwork, availability, and destination. Keep Search, Game, Type, and
Sort visible; place secondary criteria in one `More filters` surface. Cards are
equal, whole-card links with no inline Mainline actions. Target several columns
on desktop and two useful columns on common phone widths instead of one
near-viewport-height square card. Use explicit `Load more`, URL-backed state,
and the shared initial Spinner rather than infinite preloading or Skeletons.

Pokémon Detail keeps the current searchable species-switcher, generation-
grouped game choices, artwork/Shiny treatment, and game-aware reference-section
foundation. Add a stable semantic identity heading independent from the
selector. Make the exact active game unambiguous on every viewport; a mobile
control that shows only a generation numeral is insufficient. Treat persistent
form as a real scope selector and Shiny as a visual toggle.

The Detail composition should lead with identity, exact game, form, artwork,
types, and one `Use in Mainline` entry, then organize overview, evolution and
forms, selected-game availability, matchups, learnset, and Pokédex placement in
a clear reading order. Omit unseeded optional facts instead of creating large
`Unknown` cells. Use semantic section headings and a real learnset table on
wide screens with labelled stacked rows on narrow screens. Test a compact
in-page section navigator only if the complete realistic page proves difficult
to scan; do not introduce stateful detail sub-tabs in V1.

## Codex Games Direction

Codex Games should reuse the information-rich Codex character while giving
game cover art and named content scope more authority than a generic card
directory. Games Browse uses equal cover-led cards in deterministic generation
and release order. Keep Search, Generation, and Game style visible, move Region
and Platform behind one secondary filter surface, and preserve every criterion
in the URL. Target several desktop columns and two useful phone columns rather
than near-viewport-width mobile covers.

Game Detail leads with exact game identity and one primary `Start a Play`
action. `Create a Plan` and `Add to Game List` remain visible supporting
actions, while Browse Pokémon and named Pokédexes read as reference navigation.
Follow identity with base and optional-content scopes, Pokédexes grouped under
those scopes, truthful availability, and only explainable related releases.
Avoid generic game-type paragraphs, false availability totals, and unrelated
generation-neighbor cards.

Game Pokédex gives its exact game and named Pokédex a real heading region. The
named-Pokédex selector is a primary scope control, grouped by Base game and
optional content, rather than a small utility menu. Keep Search and Type easy
to reach. Use a semantic comparison table on wide screens and compact labelled
species rows on narrow screens; never require horizontal scrolling to identify
or open a Pokémon. Large Pokédexes use explicit `Load more`, and all initial
loading uses the shared Spinner rather than Skeletons.

Game-origin handoffs preserve the originating cover and exact game identity so
the transition from public reference to personal Mainline work remains
understandable. Focused confirmation may use a dialog on wide screens and a
full-screen sheet on narrow screens, with equivalent ordering, cancellation,
pending, validation, and focus behavior.

## Mainline Play History Tab Direction

Use one full-width journey timeline with a compact toolbar for search,
category, Highlights, and reading order. Do not add History sub-tabs, summary
stat cards, or a persistent selected-event panel. The timeline itself is the
workspace; selecting an entry opens a contextual event-detail sheet.

Keep every timeline row on one shared visual rhythm while allowing its evidence
area to adapt to the event. Lead with event type, exact, approximate, or
unrecorded date, title, and note preview. Show event-time Pokémon context and
before/after identity only when relevant. A six-position Team snapshot must
preserve occupied, confirmed-empty, and not-recorded slots with equal slot
geometry; do not collapse unknown positions or imply they were empty.

Use a wide sheet on desktop and a full-screen sheet on narrow screens for full
narrative, related Pokémon, snapshots, milestone context, Highlight state, and
permitted actions. Keep manual editing, guarded structural correction, and
consequence-aware deletion visually distinct. Highlights are a non-color pinned
state and never move or duplicate their event.

On narrow screens, stack row metadata, narrative preview, Pokémon context, and
snapshot in that order without horizontal page scrolling. Filters may wrap or
open from a compact control, but search and the active category remain easy to
find. Timeline arrangement must provide move-up, move-down, and keyboard
controls rather than requiring drag gestures.

## Mainline Play Settings Tab Direction

Use one calm Settings workspace with a compact local section rail and one
focused content panel on desktop. On narrow screens, replace the rail with an
accessible section selector rather than compressing it into a horizontal tab
strip. General, Completion & Tracking, Rules & Tags, and Play Status & Management
are local sections, not additional Play Hub tabs.

Keep form width readable inside the broader Play workspace. Use clear section
headings, short explanatory copy only where consequences are non-obvious, and
stable label, control, validation, and help-text alignment. Rules and Tags may
share a section but must remain visually distinct concepts.

General starts with a compact read-only game identity row, then groups Play
identity, platform, dates, playtime, and one durable notes field in a readable
form column. Exact, Approximate, and `Not recorded` dates need explicit labels
and precision-aware inputs; never make an approximate year look like an exact
calendar day. Use hours and minutes for playtime while keeping the resulting
duration legible.

When a section is dirty, use a restrained sticky action region for `Cancel` and
`Save changes`. Do not keep a permanent global save bar when nothing changed.
Lifecycle and destructive actions use focused confirmations rather than the
section save pattern.

Completion and scope controls must communicate `Counts toward completion`,
`Track only`, and `Not tracked` without relying on color or a wall of
checkboxes. Show a concise current-goal summary and an impact preview before a
change recalculates completion. Preserve the user's recorded data when a scope
is disabled and say so explicitly.

Render optional-content choices as a small set of content cards. Use stable
rows for Main Story, applicable Postgame or optional-content Story paths, named
Pokédexes, and Collectible groups. Main Story reads as an intentional locked
baseline rather than a disabled control. Browse-only Pokédex subsections do not
become duplicate settings rows. Optional-entry requirements remain nested under
their named Pokédex instead of becoming a flat species checklist.

Use segmented or radio-group state controls where space supports them and an
accessible single-choice control on narrow screens. The save preview keeps the
goal before and after, changed tracker states, content dependencies, and
completion impact together rather than scattering warnings across rows.

Within Rules & Tags, stack two visibly separate areas rather than mixing rules
and labels in one chip cloud. Rule rows keep name, description, category,
configured value, capability label, and actions in a stable scanning rhythm.
Use explicit `Voydex can check this` and `Recorded only` text with supporting
icons; do not imply hard enforcement through lock or error styling. `Add rule`
uses a focused categorized and searchable sheet, revealing configuration only
after rule selection.

Tags use a searchable multi-select and wrapping text-labelled chips. Optional
color supports recognition but never replaces the label. On narrow screens,
stack rule metadata and actions and allow chips to wrap without horizontal
scrolling. V1 exposes local detach actions but not shared-definition rename or
delete administration in Play Settings.

Play Status & Management does not repeat routine status actions already visible
in the persistent Header. Use one calm current-status explanation followed by
`Correct recorded status`, then a clearly separate reversible Archive area and
permanent Delete danger area. Correction uses a focused flow rather than a raw
status select. When correcting a completion recorded by mistake, name the
preserved completion date that will be cleared; normal Reopen never uses this
destructive correction treatment.

Separate reversible Archive styling from destructive Delete styling. Delete
confirmation must name the Play-owned data affected and the reusable Plan data
that remains. Do not include a next-session note in the V1 Settings UI; that
bookmark concept is deferred until a later Overview or Journey Status design
proves a distinct frequent use.

## Home Page Hero Direction

The home page hero should use layered assets:

- A clean daylight adventure landscape viewed toward a distant destination such
  as a village. A matched night composition may inform a later dark-theme pass,
  but it is not part of V1.
- Separate brand mark image.
- Separate Voydex title image.
- Native text subtitle.
- Native buttons.

This keeps the home page close to the selected visual reference while preserving responsive layout, accessibility, and clickable controls.

Keep the identity, concise description, and actions centered in a visually
quiet part of the scene. Preserve the background as the emotional focus rather
than hiding it behind a large opaque card. The current artwork may be improved,
but the daylight adventurous overlook is the accepted V1 direction. Define
intentional crops for desktop, mobile, and short
viewports instead of assuming one `cover` crop works everywhere.

Keep Landing extremely concise. Do not add feature grids, product tours,
onboarding steps, module explanations, screenshots, statistics, or long copy.
Intro owns product explanation and onboarding for users who choose to learn
more.

## Buttons And Controls

- Use icons for clear actions.
- Use text buttons for primary commands where labels matter.
- Keep ordinary actions visually distinct from destination navigation. Major
  destination links may use the restrained signpost treatment defined in the
  V1 visual-language brief; Add, Save, Edit, Filter, Sort, Retry, Restore, and
  destructive actions remain familiar product controls.
- Keep button styling clean. The button shape can be slightly curved, but avoid
  heavy decorative borders or exposing the default shadcn appearance as the
  product identity.
- Primary buttons should not use a mismatched border color.
- Treat selectors as real selectors when the underlying choice changes data,
  scope, availability, or stats. For example, Pokemon forms should not live as a
  tiny thumbnail rail inside the portrait. The current Pokemon detail pattern is
  a dedicated Forms card with image, number, name, and type identity per option.
  Use popovers, command menus, sheets, search, or grouping only when the option
  count and viewport make that clearer. Shiny can remain a direct toggle because
  it is only a visual alternate of the selected form.

## Icons And Pokémon Type Assets

Pokémon type SVGs live under:

```txt
public/icons/types
```

Use them for Pokémon-specific surfaces where type identity matters. Use Lucide icons for general app actions and navigation.

## Accessibility

- Image-only brand text must have an accessible text equivalent, usually an `sr-only` heading.
- Buttons and links need visible labels or accessible names.
- Do not rely on color alone for completion, warnings, or disabled states.
- Check mobile layouts for text overflow and overlapping controls.
