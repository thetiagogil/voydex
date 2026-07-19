# V1 Mainline Plays Browse

This document defines the functional direction for the authenticated Plays
library before Dashboard summaries and detailed visual composition are
designed. It derives each repeated Play summary from the accepted Play Hub
contract instead of inventing a second interpretation of Play state.

## Current Status

The accepted information hierarchy, behavior, and responsive composition remain
binding. [V1-D120](./decisions.md) selects and implements the explorer's
simplified single-journal treatment from the canonical
[V1 Visual Language](./visual-language.md).

**Status: Selected V1 journey-log treatment implemented and visually verified**

The current implementation proves the protected `/mainline/plays` route,
owner-scoped reads, URL-backed primary controls, and a compact interactive Play
library. Realistic occupied and partial fixture states were checked at desktop,
tablet, and phone widths. The remaining product work is the accepted archive,
secondary-filter, explicit recovery, and incremental-loading states.

## Purpose And User Goal

Plays Browse is the user's complete adventure library. It should answer:

1. Which Play am I looking for?
2. What does its current Active Team look like?
3. How much trustworthy overall progress has been recorded?
4. When was it last updated?
5. How do I open it or restore it if archived?

It is not the Dashboard. It does not choose the user's one best next action,
summarize cross-app activity, or show account-level statistics. It is also not
a reduced Play Hub: edits and routine status transitions remain inside the
owning Play.

## Page Hierarchy

Use the shared centered application canvas and this stable order:

1. one lightly textured journal page with a compact title and short description;
2. search and primary filter controls continuing on that same page;
3. active-filter summary, result count, and sort separated by spacing and thin
   rules;
4. one responsive Play library list continuing on the same surface;
5. explicit loading, empty, filtered-empty, error, and incremental-load states.

Do not add dashboard statistics, promotional cards, or another persistent
navigation layer above the library.

The accepted `Create Play` action returns when its route and workflow are
mounted. Until then, omit it rather than presenting a decorative or broken
control copied from the visual reference.

## Recommended Browse Composition

Use one compact, cover-led journey-log row per result rather than a square
artwork grid, table, or V1 grid/list toggle. Plays carry too much meaningful
state for small equal cards, while a data table would suppress the personal
adventure identity. One column keeps Play identity, Team, overall progress, and
recency easy to compare in the accepted journal canvas, which reaches roughly
1376 pixels at wide viewports. One continuous warm paper surface, thin journal
rules, and whitespace provide character without nesting the controls or each
row inside another decorative Card.

Every row remains openable as one accessible link to the Play Hub, including an
archived Play. A visible `Open Play` affordance may reinforce clickability, but
it must not compete with or duplicate the row link. Browse never exposes Start,
Pause, Resume, Complete, Abandon, or Reopen mutations; the persistent Play
Header owns those actions.

### Play Library Row

Keep the information hierarchy stable across every result:

1. **Game image:** render the cover itself at the full height of the card's
   padded content area with proportional width and the same outer inset as the
   remaining content. Do not place the cover inside another box. Use one subtle,
   consistent radius on all four corners rather than the top-only media radius
   intended for edge-to-edge Card artwork.
2. **Play information:** the Play name is the row's only headline, followed by
   the exact game name and one quiet `Updated ...` date.
3. **Active Team:** six equal compact slots using the shared Team-slot language
   for occupied, confirmed-empty, and not-recorded positions. This is a
   recognition preview, not a Team editor. Keep the group labelled for
   assistive technology without showing a visible `Active Team` heading.
4. **Overall progress:** one normalized percentage across the Play's configured
   required Story milestones, Pokédex species, and Collectibles. Show a concise
   not-recorded or unavailable state when the value is not trustworthy.
5. **Open cue:** one unlabelled directional arrow reinforces that the whole row
   opens the Play without adding another action.

Treat those facts as three levels of visual priority:

1. **Primary identity:** padded-content-height cover art plus the Play name,
   exact game name, and update date establish the adventure immediately.
2. **Current scan:** the six-position Active Team and one overall percentage
   receive the remaining desktop scanning space.
3. **Supporting context:** the update date and directional arrow stay quiet and
   never compete with the Play name or percentage.

Missing or unrecorded current-state facts keep their place and honest label
rather than causing the row hierarchy to shift between Plays.

Do not show lifecycle, Journey, trainer details, Tags, raw Pokédex counts,
individual completion groups, rules, notes, platform, playtime, or Team actions
inside the compact row. Use whitespace rather than vertical separator lines
between information, Team, overall progress, and the arrow.

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

Use each control's in-field placeholder or selected value instead of stacking a
persistent visible label above it. Keep an explicit accessible name on every
control. Search, Status, Game, and Sort share one compact 40-pixel control height
so the group scans as one system.

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

On desktop, keep one horizontal row with a cover that fills the padded content
height, information, compact Team, overall percentage, and arrow in a stable
scanning rhythm.

On phone-sized screens, keep the same hierarchy in one vertical card:

- the inset cover and Play name, game name, and update date form the first row;
- the six-slot Active Team preview moves into a separate full-width row below
  that cover-and-information section;
- the overall percentage and arrow form the final full-width row.

Reduce the cover one visual step on phones so it does not dominate the card,
while allowing the six Team slots to grow into the newly available horizontal
space.

At tablet widths, return to one compact horizontal scan row rather than
stretching the phone stack across the canvas. Use a smaller cover than on
phones, give Team the largest share of the middle canvas, then let identity,
Overall, and the arrow use only the width they need. Reduce the cover one
further step on desktop so it does not dominate the horizontal row; Desktop
otherwise retains the established proportions.

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
- **Partial summary:** keep the row openable and label unavailable Team or
  Progress facts honestly rather than dropping the entire Play.
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

The visible Browse row needs owner-scoped Play identity, exact game and cover
context, six Active-slot knowledge states, trustworthy overall completion, and
the best available update timestamp. Lifecycle, archive state, Tags, and Rules
remain read requirements for filtering without becoming repeated row content.

Most facts already exist or can be derived from current owner-scoped sources;
explicit current-slot knowledge still depends on DG-020, and honest Progress
knowledge depends on DG-010. The existing `mainline_play_summary` proves the
base read but its Play-row `updated_at` is not necessarily the latest child
activity. The compact card composes Team and normalized overall completion from
the existing owner-scoped views rather than exposing raw category counts.

Record this as DR-029 and reuse DG-020 for Team-slot knowledge, DG-010 for
progress knowledge, and DG-017/DG-018 for lifecycle, archive, and date behavior.
Browse does not add a separate summary-storage gap: after the already-required
knowledge and lifecycle corrections, the facts can be composed from existing
owner-scoped sources. A dedicated convenience projection or cache should remain
a later performance improvement unless profiling proves it necessary for
correct V1 behavior.

## Visual Validation Result

The shared-surface implementation was checked responsively at desktop, tablet,
and phone widths. The compact text-only header, controls, count, and rows share
one content-driven journal page with a quiet edge and restrained shadow. Long
content introduces neither horizontal overflow nor a nested vertical scroller.
Ephemeral comparison screenshots are intentionally not versioned as product
documentation.
