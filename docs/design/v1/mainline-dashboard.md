# V1 Mainline Dashboard

This document derives the authenticated Mainline landing view from the accepted
Play Hub and Plays Browse contracts. It defines what the Dashboard should help
the user understand before its exact visual composition is explored.

## Current Status

**Status: V1 functional contract accepted; visual validation pending**

The current `/mainline` route redirects to Plays and does not provide an
implemented Dashboard or a visual reference that must be preserved. The V1
Dashboard is therefore being specified from accepted product behavior rather
than reverse-engineered from an existing screen.

## Purpose And User Goal

The Dashboard is the Mainline module's authenticated home and resume surface.
It should help the user answer, in order:

1. Which adventure changed most recently?
2. What is the next trustworthy action inside that Play?
3. Which other Plays have been relevant recently?
4. What meaningful moments happened across those Plays?

It is not a smaller Plays library, a global cross-module home, a replacement for
the Play Overview, or a generic analytics wall. Mainline remains the V1 fallback
module when no last-active-module preference exists, but future modules own
their own default landing views.

## Access And Entry

- `/mainline` becomes the authenticated Mainline Dashboard rather than
  redirecting permanently to `/mainline/plays`.
- Normal signed-in app entry may resolve here through the accepted last-active
  module behavior. Explicit deep links and validated post-login destinations
  continue to take precedence.
- The Dashboard reads only the current owner's data. It offers navigation into
  Play-owned actions rather than duplicating their mutations.

## Loading State

**Status: Accepted**

During the initial Dashboard read, keep the shared application shell visible and
show one accessible page-level Spinner in the content region. Do not render
latest-Play, compact-Play, or activity Skeletons. Section-level refreshes keep
valid content in place and use a local pending Spinner or retry state without
blocking the rest of the Dashboard.

## Accepted Page Hierarchy

Use the shared centered application canvas and this working order:

1. a plain Dashboard heading with one primary `Create Play` action and one
   lower-emphasis `Create Plan` action;
2. one visually dominant latest-adventure section with status-aware language;
3. a compact preview of other recent Plays with `View all Plays`;
4. a short cross-Play `Recent meaningful activity` section.

Do not add a separate Quick Actions card that repeats the page-heading actions
or persistent Mainline navigation.

### Latest Adventure Focus

**Status: Accepted; visual validation pending**

This is the Dashboard's dominant responsibility. Select the most recently
updated non-archived Play regardless of lifecycle. `Updated` means the latest
accepted Play-owned write across the Play, Team, Progress, linked-Plan
relationship, History, Settings, or lifecycle data; opening or viewing a page
does not change the result. Reuse the same derived meaningful-activity timestamp
as Plays Browse rather than relying only on the parent Play row's `updated_at`.

Adapt the section language and primary navigation to the selected lifecycle:

- Playing or Paused: `Continue your adventure`;
- Not started: `Start your adventure`;
- Completed or Abandoned: `Revisit your adventure`.

Keep this stable information order:

1. **Play identity:** medium game cover, Play name, game/version, lifecycle
   badge, and a quiet `Updated ...` fact explaining why the Play is featured.
2. **Journey:** current or furthest recorded Story milestone plus the next
   objective only when applicable; otherwise use the honest
   `Story position not recorded` state.
3. **Active Team:** all six equal current-form sprite slots using the accepted
   occupied, confirmed-empty, and not-recorded states. Exclude Reserve, names,
   types, moves, and controls.
4. **Progress:** one concise overall completion-goal percentage only when it is
   trustworthy; otherwise show `Progress not recorded`. Do not repeat the
   Story, Pokédex, and Collectibles group rows from Play Overview.
5. **Next Step:** a short title, one explanatory sentence, one primary route to
   the owning Play area, and at most one quiet `Open overview` alternative.

Reuse the Play Header's accepted Next Step resolver. A Team, Story, Progress,
Plan, or History recommendation may route directly to that owning context and
invoke only its canonical workflow. A lifecycle recommendation navigates to the
Play Header, where Start, Resume, Reopen, date, and confirmation behavior remains
owned. Dashboard never implements or executes a second mutation path. When no
strong recommendation exists, use `Open Play`.

Do not add trainer name, lifecycle dates beyond the `Updated ...` fact, Tags,
Rules, Plan comparison, Reserve count, recent History, progress-group
breakdowns, or utility menus. If no non-archived Play exists, replace the focus
summary with the concise new-adventure starting state. Exact layout and density
remain visual-validation questions.

### Other Recent Plays

**Status: Accepted; visual validation pending**

Show up to three compact single-column Play rows beneath the focus. Use the same
meaningful-activity ordering as the featured Play, then exclude the featured
Play and every archived Play. Completed and Abandoned Plays remain eligible
when they are genuinely the next most recent results.

Each row contains only:

- a small game cover;
- Play name and game/version;
- lifecycle badge;
- one current or furthest Journey line;
- a quiet `Updated ...` fact;
- a low-emphasis open cue.

The whole row opens that Play's Overview. The section heading provides one
`View all Plays` route to the complete library. Do not add Team sprites,
Progress, Tags, Rules, trainer details, another Next Step, Browse filters,
lifecycle mutations, `Load more`, or a carousel. Those facts and controls
already have stronger homes and would make this preview compete with the
featured Play or full Browse row.

Render only the available results without placeholders. Omit the whole section
when no other current Play exists. Mobile preserves the same compact vertical
list rather than introducing horizontal scrolling.

### Recent Meaningful Activity

**Status: Accepted; visual validation pending**

Show up to four compact cross-Play rows using the same deliberately meaningful
History eligibility as Play Overview and the full History timeline. Each row
contains:

- the shared event-type icon and one concise title;
- the owning Play and game/version;
- an exact, approximate, or explicitly unrecorded effective date;
- event-time Pokémon identity or a small Team-snapshot preview only when it
  materially improves recognition;
- a quiet open cue.

The complete row opens that event in its owning Play History context. Preserve
effective event ordering and date uncertainty rather than presenting database
creation time as journey chronology. Do not substitute a Pokémon's current
identity for its event-time identity.

Routine Pokédex or Collectible updates, ordinary Story completion, roster
placement and reorder, Pokémon-detail edits, corrections, Settings changes,
failed actions, and technical audit writes remain excluded. Do not add a global
`View all activity` action while V1 has no global History surface.

When no qualifying events exist, keep the section and show one small
explanatory state: `No meaningful activity recorded yet`, with supporting copy
that memories and major milestones from the user's Plays will appear here. Do
not add another major action; the featured Play and its owning History workflow
already provide the next route. A failed or unavailable History read uses an
explicit retry state rather than this empty message.

## Empty, Partial, And Recovery States

**Status: Accepted; visual validation pending**

- **No Plays:** replace the normal Dashboard summaries with one welcoming
  first-adventure state. Move `Create first Play` into that state as its only
  primary action and suppress duplicate Create actions in the page heading.
- **Only archived Plays:** do not promote an archived Play into the focus or
  recent summaries. Show `No current adventures` with `Create Play` primary and
  `View archived Plays` secondary, without duplicate heading actions.
- **Partial featured Play:** keep the summary openable and preserve its normal
  hierarchy. Label unavailable Journey, Team, or Progress facts explicitly. If
  the recommendation cannot be resolved safely, use `Open Play` rather than
  guessing a Next Step.
- **Supporting-section failure:** keep the valid latest-adventure content and
  isolate a failed Other Recent Plays or Recent Meaningful Activity read to its
  own compact retry state.
- **Complete Dashboard failure:** keep the application shell visible and show
  one focused retry state. Never present a read failure as though the user has
  no Plays.
- **Stale focus:** when the candidate becomes archived, deleted, or inaccessible
  while resolving the page, select the next eligible Play. If none remains, use
  the matching no-current-adventure state.

Empty and failure states must remain visually distinct from the accepted
page-level Spinner. Retrying one supporting section must not block or clear
other valid content.

## No Dedicated Quick-Stat Cards

Do not add a permanent row of Dashboard cards for total Plays, completions,
games explored, Pokémon companions, memories, or similar aggregates in V1.
Those numbers are not as actionable as continuing a Play, often duplicate the
Plays, Collection, or Stats surfaces, and would push the page toward a generic
SaaS-dashboard composition.

The dedicated Stats surface will own richer derived patterns after its contract
is defined. A quiet journey sentence may be tested as nonessential visual copy
only if the later coherent Dashboard draft needs it; it is not a required
section or data contract.

## Data And Database Impact

Record the Dashboard read as DR-030. The accepted surface reuses the existing
Play, Journey, Team-slot, Progress, History, lifecycle, Archive, and meaningful
activity requirements already recorded for the Play Hub and Browse.

No new database gap is created by omitting stat cards or selecting the latest
Play from existing meaningful activity. Do not add a V1 last-viewed or favorite
field. A dedicated Dashboard projection or cache remains the existing later
read-optimization backlog item unless realistic profiling proves it necessary
for correct V1 behavior.

## Next Review

The Dashboard V1 functional contract is complete. Validate its hierarchy,
density, responsive composition, and shared-component candidates through the
accepted three-direction visual checkpoint before implementation.
