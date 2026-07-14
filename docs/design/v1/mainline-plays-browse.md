# V1 Mainline Plays Browse

This document defines the functional direction for the authenticated Plays
library before Dashboard summaries and detailed visual composition are
designed. It derives each repeated Play summary from the accepted Play Hub
contract instead of inventing a second interpretation of Play state.

## Current Status

**Status: V1 functional contract accepted; visual validation pending**

The current implementation proves the protected `/mainline/plays` route,
owner-scoped reads, and a simple interactive summary-card list. Its testing
copy, raw Pokédex counts, lack of filters, and current card composition are
implementation evidence rather than accepted V1 design.

## Purpose And User Goal

Plays Browse is the user's complete adventure library. It should answer:

1. Which Play am I looking for?
2. What is its current lifecycle and journey state?
3. How much trustworthy progress has been recorded?
4. What does its current Active Team look like?
5. How do I open it or restore it if archived?

It is not the Dashboard. It does not choose the user's one best next action,
summarize cross-app activity, or show account-level statistics. It is also not
a reduced Play Hub: edits and routine status transitions remain inside the
owning Play.

## Page Hierarchy

Use the shared centered application canvas and this stable order:

1. plain page title, short description, and one primary `Create Play` action;
2. search and primary filter controls;
3. active-filter summary, result count, and sort;
4. one responsive Play library list;
5. explicit loading, empty, filtered-empty, error, and incremental-load states.

Do not add dashboard statistics, promotional cards, or another persistent
navigation layer above the library.

## Recommended Browse Composition

Use one compact, cover-led Play row per result rather than a square artwork
grid, table, or V1 grid/list toggle. Plays carry too much meaningful state for
small equal cards, while a data table would suppress the personal adventure
identity. One column also keeps status, journey, progress, and Team summaries
easy to compare in the accepted 1200–1280 pixel canvas.

Every row remains openable as one accessible link to the Play Hub, including an
archived Play. A visible `Open Play` affordance may reinforce clickability, but
it must not compete with or duplicate the row link. Browse never exposes Start,
Pause, Resume, Complete, Abandon, or Reopen mutations; the persistent Play
Header owns those actions.

### Play Library Row

Keep the information hierarchy stable across every result:

1. **Game identity:** compact cover art with a game-aware fallback, plus game
   and version context.
2. **Play identity:** Play name first; optional trainer name and dates appear
   only when known.
3. **Lifecycle:** one clear status badge. Lifecycle and completion remain
   visually distinct facts.
4. **Journey:** current or furthest known Story position, or the explicit
   `Story position not recorded` state.
5. **Active Team:** six equal compact slots using the shared Team-slot language
   for occupied, confirmed-empty, and not-recorded positions. This is a
   recognition preview, not a Team editor.
6. **Progress:** one concise accepted completion-goal summary with a normalized
   percentage only when contributing progress is trustworthy; otherwise show
   `Progress not recorded`.
7. **Organization and recency:** up to two text-labelled Tags plus `+N` when
   useful, followed by the last meaningful activity date when known.
8. **Open affordance:** a restrained directional cue that leaves the entire row
   as the primary target.

Treat those facts as three levels of visual priority:

1. **Primary identity:** cover art, Play name, game/version context, and the
   lifecycle badge establish which adventure this is before anything else.
2. **Current state:** Journey, the six-position Active Team, and trustworthy
   Progress receive the main scanning space. They should be clearly grouped but
   must not compete with the Play name as separate card headlines.
3. **Supporting context:** trainer/date details, Tags, recent activity, and the
   open cue remain quieter and may wrap or move below the current-state summary
   at narrower widths.

Missing or unrecorded current-state facts keep their place and honest label
rather than causing the row hierarchy to shift between Plays.

Do not show raw Pokédex counts without their named scope, every applied rule,
all completion groups, notes, platform, playtime, or current Team actions.
Rules remain searchable filter criteria; defining challenge rules already have
a better contextual home in the Play Header.

The Active-Team preview always renders all six positions. Occupied slots use
the actual current-form Pokémon sprite; confirmed-empty and not-recorded slots
use different shared placeholder iconography and accessible text. Reserve
members, Pokémon names, types, moves, and controls are excluded. The preview is
part of the containing row link rather than another nested destination.

## Search, Filters, And Sort

**Status: Accepted; visual validation pending**

### Primary Controls

Keep the most common controls visible:

- search Play name, game name, trainer name, and Tag label;
- lifecycle Status;
- Game;
- Sort.

Search updates after a short debounce and every accepted filter/sort value is
represented in URL query parameters so refresh, browser Back, and copied local
URLs preserve the same library view.

### More Filters

Use one `More filters` popover on desktop and a focused sheet on narrow screens
for lower-frequency criteria:

- Generation;
- Tags;
- Rules;
- completion state: `Goal met`, `In progress`, or `Progress not recorded`;
- archive visibility: `Current` by default, `Archived`, or `All`.

Status and completion state must remain separate. A Play may be Completed while
its configured completion goal is unfinished, or Playing while its current goal
is already met.

Show removable active-filter chips and one `Clear all` action beneath the
controls. Do not render a dense permanent row of every available selector.

### Sort Options

Use `Recent activity` as the default, derived from meaningful Play-owned writes
rather than page visits. V1 also supports:

- Recently created;
- Play name;
- Game;
- Started date;
- Completion progress, with unknown progress grouped honestly rather than
  treated as zero.

An explicit `Load more` control is preferred over endless scrolling so focus,
result position, and footer access remain predictable. Filtering and sorting
apply to the complete owner-scoped result set, not only the already loaded
slice.

## Archived Plays

Archived Plays are hidden from the normal library. In the Archived or All
views, mark them clearly without using lifecycle styling because Archive is a
separate visibility state.

An archived row remains openable so the user can revisit its Team, Progress,
Plan, and History without restoring it. `Restore Play` is a separate control and
the only mutation offered directly from that Browse row. Restoration is a quiet
reversible action with clear success or failure feedback. It reappears in the
Current library under the active sort, and no lifecycle, date, Progress, Team,
Plan, or History data changes.

## Responsive Behavior

On desktop, keep one horizontal row with cover, identity/journey, compact Team,
progress, and open affordance in a stable scanning rhythm. Avoid stretching
small facts into isolated dashboard columns.

On narrow screens, keep the same hierarchy in one vertical card:

- cover, Play identity, and Status first;
- Journey and Progress next;
- the six-slot Active Team preview in one equal-slot row;
- Tags, activity, and open affordance last.

Search remains full width. Filters move into one sheet with an applied-count
badge; Sort stays directly accessible. Long names and Tags wrap without
horizontal page scrolling.

## States And Recovery

- **No Plays:** explain the library briefly and make `Create first Play` the
  only primary action.
- **No filtered results:** preserve the query, explain that nothing matches,
  and offer `Clear filters`.
- **No current Plays but archived Plays exist:** keep the empty state concise
  and provide a route to the Archived filter.
- **Partial summary:** keep the row openable and label unavailable Journey,
  Team, or Progress facts honestly rather than dropping the entire Play.
- **Load failure:** preserve filter state and offer a focused retry.
- **Incremental-load failure:** keep loaded results and retry only the failed
  next slice.
- **Restore conflict or failure:** keep the archived row in place and explain
  that no Play data changed.

The initial library read uses the shared accessible page-level Spinner while
keeping the application shell visible. Do not render Play-row Skeletons in V1.
Incremental loading preserves the existing rows and shows pending feedback on
the `Load more` control rather than replacing the page.

## Accessibility And Interaction

- Every row has one unambiguous accessible link name such as
  `Open {Play name}`.
- Nested controls must not be placed inside the row link. Archived Restore uses
  a valid sibling-control structure with distinct focus and accessible naming.
- Status, Progress, Archive, and Team-slot knowledge never rely on color alone.
- Search, filters, chips, sort, load more, and Restore are fully keyboard
  operable with visible focus and restored focus after sheets close.
- Result-count changes use a polite live region without announcing on every
  search keystroke.

## Shared Pattern Candidates

- `PlayLibraryRow` for the full Plays surface.
- `CompactActiveTeamPreview`, accepted as a read-only six-position current-form
  sprite variant using the same semantic slot states as Play Overview; exact
  visual density remains pending.
- `PlayProgressSummary` with known, zero, and not-recorded variants.
- `MainlineBrowseFilters` for URL-backed search, filters, chips, and sort.
- Smaller read-only Play-summary variants may later serve Dashboard, but the
  Dashboard should not embed the full library row unchanged.

Accept shared patterns only after Plays Browse and Dashboard are reviewed
together.

## Data And Database Impact

The Browse read needs owner-scoped Play identity, game/version and cover
context, lifecycle, started/completed date knowledge, archive state, last
meaningful activity, Story position, six Active-slot knowledge states,
completion goal and trustworthy progress, Tags, and Rules for filtering.

Most facts already exist or can be derived from current owner-scoped sources;
explicit current-slot knowledge still depends on DG-020, and honest Progress
knowledge depends on DG-010. The existing `mainline_play_summary` proves the
base read but is not yet the final Browse contract: its Play-row `updated_at` is
not necessarily the latest child activity, its raw Pokédex counts lack the
accepted named/knowledge context, and it does not project Story, Team-slot, Tag,
Rule, or normalized completion summaries.

Record this as DR-029 and reuse DG-020 for Team-slot knowledge, DG-010 for
progress knowledge, and DG-017/DG-018 for lifecycle, archive, and date behavior.
Browse does not add a separate summary-storage gap: after the already-required
knowledge and lifecycle corrections, the facts can be composed from existing
owner-scoped sources. A dedicated convenience projection or cache should remain
a later performance improvement unless profiling proves it necessary for
correct V1 behavior.

## Visual Validation Questions

1. Validate the smallest six-slot sprite size that remains recognizable without
   making each row too tall at desktop and mobile widths.
2. Validate the balance between atmospheric cover art and operational summary
   density before accepting exact measurements.
