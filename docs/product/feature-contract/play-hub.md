# Play Hub

This is the Play Hub part of the [Feature Contract](../feature-contract.md).

## Play Hub

The Play Hub is the central workspace for a play.

The Play Header owns an adaptive, Play-wide Next Step action region. On desktop
it sits to the right of cover art and Play identity; on smaller screens it
stacks within the same header before the tabs. Do not repeat it as a separate
Overview banner. It shows one primary action and no more than two secondary
actions based on lifecycle and recorded data. An imported playing or paused
Play begins with `Add current team`, then promotes Story position and configured
progress as earlier actions are completed. Once enough baseline context exists,
the region evolves into a normal Play-wide action or compact utilities. Actions
specific to one Hub area remain inside that area.

Routine Play status transitions also remain available from the persistent
Header. Use contextual actions rather than a raw status dropdown: Start or
record a historical completion from Not started; Pause, Complete, or Abandon
from Playing; Resume, Complete, or Abandon from Paused; and Reopen from
Completed or Abandoned. If the adaptive Next Step promotes the same status
action, reuse or emphasize that action rather than showing a duplicate primary
CTA. Date and confirmation behavior is shared across placements.

Reopening a Completed Play is continuation, not correction. Preserve any
recorded completion date and show it as `Previously completed on ...`; do not
rewrite Progress, completion settings, or History. A completion recorded by
mistake is handled through `Correct recorded status`, which explicitly clears
the false completion date.

Start and Mark completed use focused date confirmation. Start defaults the
started date to Exact Today; Mark completed defaults the completion date to
Exact Today. Both allow another Exact date, Approximate knowledge, or `Not
recorded`. Historical `Record as completed` defaults to `Not recorded` rather
than Today and accepts optional started-date knowledge. Pause, Resume, and
Reopen are quiet immediate actions. Abandon uses a concise confirmation and
creates no abandonment date. Every transition is atomic and leaves Progress
and History unchanged.

The Play Header center keeps a stable hierarchy: Play name; lifecycle and game;
available region and generation context; conditional trainer, date, and
playtime facts; then a concise completion goal/state and defining challenge
rules. Do not show empty metadata placeholders. Completion may show zero for a
genuinely new Play, but an imported Play with uninitialized progress must show
`Progress not recorded` instead of a misleading percentage. Team counts,
detailed Pokedex counts, general tags, notes, and platform remain in Overview or
their owning detail and Settings surfaces.

It should summarize:

- Play metadata and status.
- Pokémon team preview.
- Story progression.
- Collectibles.
- Pokedex progress.
- Completion.
- Timeline highlights.
- Selected optional content such as DLC.

The current Play Hub is a tabbed workspace. Focused deep routes may be added when
a real workflow benefits from its own URL; do not create or link empty routes
for tab shells.

Current Overview direction:

- The top play section is context, not the main workspace Card.
- The tab card is the main Play Hub workspace.
- Overview should show Journey Status, Current Team, Progress Summary, and
  Recent History in three permanent cards. Journey Status and Progress Summary
  share one card while retaining distinct qualitative and numeric regions.
- Linked Team Plan context belongs to the Team tab rather than Overview. Keep
  exactly three permanent Overview cards whether or not a Plan is linked.
- Overview remains read-first. Section actions route to or invoke the canonical
  owning workflow rather than implementing a second editor.
- Journey Status shows the current or furthest known Story milestone and the
  next applicable objective when relevant. Numeric Story completion remains in
  the adjacent Progress Summary region rather than being repeated in both.
- Current Team always preserves one fixed six-slot layout. Occupied,
  confirmed-empty, and not-recorded slots use identical component geometry and
  explicit accessible state labels; only their portrait and text content
  change.
- Current Team shows the active lineup only, with a compact positive reserve
  count. Linked-Plan comparison belongs to Team. It does not use an
  Active/Reserve toggle. Recorded members open their Play-owned Team experience
  rather than navigating directly to generic reference detail.
- Team Health belongs in the Team tab until the app has a real analysis model.
- Progress Summary uses only the stable Story, Pokédex, and Collectibles groups.
  Story is always present; Pokédex and Collectibles render only when applicable
  and enabled. Each group shows a progress bar and visible normalized
  percentage, while named child tracks and native counts remain in Progress.
  Each visible row routes directly to its owning Story, Pokédex, or
  Collectibles view; Overview is the only cross-area Progress summary.
- Normalize each child track from its native units, average contributing child
  tracks equally within a group, and average enabled goal groups equally for
  the Play-wide completion result. Tracked-only groups do not affect overall
  completion, and unknown required progress is never treated as zero.
- Recent History shows only the latest three to five meaningful events. Routine
  Pokédex or Collectible updates, corrections, settings changes, and technical
  audit entries do not create preview noise.
- Recent History preserves effective or manual ordering and explicitly labels
  approximate or unknown dates. An imported Play with no Voydex history must
  not imply that nothing happened in the original save.
- Overview previews should summarize real workflows and mature tabs. Do not add
  placeholder cards just to fill space.

As built (v3): the next objective's main button records it in place (v3's
Record): one tap, no form, the moment joins History, the current team is saved
with it where the milestone keeps snapshots, the stamp slaps once and the
toast offers Undo, which marks it incomplete again (the database refuses if
something recorded since depends on it). A choice milestone opens Story's
form instead. `Add a note` keeps a note in History. A brand-new Play
opens on its partner choice (the pick becomes your sticker, with Undo) and
three first steps: choose your partner, add the Pokémon you catch, mark your
Pokédex.
