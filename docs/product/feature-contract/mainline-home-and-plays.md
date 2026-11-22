# Mainline Home And Plays

This is the Mainline Home And Plays part of the [Feature Contract](../feature-contract.md).

## Mainline Home

Mainline Home (`/app`) is where a signed-in trainer lands and what the
"V" tile opens. It is for resuming an adventure, not for figures (those belong
to Statistics), and it owns no mutation of its own.

- **With Plays** (2026-11-20): your trainer profile.
  - **The trainer card** on the band (the same card as You and Settings):
    your icon and name, your trainer title and when you started, and four
    figures: Plays, hours played, Pokémon owned (the species the Collection
    counts) and regions travelled.
  - **Continue**: the Play you're on (the one `?play=` names, else the one
    opened or changed last among those still underway) as the Plays list's
    own card, a size smaller, with "Continue" over its name: cover, name,
    status and hours, team beside its overall ring. The card opens the
    Play.
  - Then, in two columns from 1024px: **activity history** (a square for
    each of the last 26 weeks' days, deeper blue for more moments, by when
    they happened; 13 weeks on phones), **your games** (one cover per game,
    the latest first) and **favourite Pokémon**, each short with a link to
    the Collection; and **latest moments**: the newest six across
    every Play, in one column, each with its Play's cover, its kind and
    Play, what happened and the milestone's own description, and how long
    ago; each opens the moment in its Play's History. Status changes and
    notes are left out. On a phone the moments come right after Continue.
    A row of other Plays, a Journal column and "Types you pick" (it
    repeated Statistics) were tried and dropped (2026-11-20); the Plays
    page lists every Play.
- **With one brand-new Play:** its first partners wait on the band; tapping
  one is the Play's own partner choice, with Undo in the toast. Once it is
  recorded, the partner stands alone; tapping it picks it, and Continue
  becomes "Continue with {name}", opening it in the Roster.
- **With no Plays:** the same Home, empty: your trainer card with its
  figures at zero, then, in the Continue row's place, the card that starts
  your first Play (`FirstPlayStart`, the same card the empty Plays list
  shows: Start a Play opens New Play over the page; Browse the Codex beside
  it), then an empty Activity history and Latest moments. The old Welcome
  page, a game shelf with the partners appearing under it once a game was
  picked, was dropped (2026-11-22): the partners arriving below read as
  odd, and New Play already asks for the game and the partner.

Home reads "last opened first": opening a Play (any of its pages)
stamps `last_opened_at`, which is not a change to the Play (`updated_at`
stays) and adds no History moment. Home orders Plays by the later of when a
Play was last opened and last changed.

## Plays

Plays are user-owned playthroughs.

The Plays area should support:

- Listing all plays as one list, newest activity first, with Search, Game,
  Generation, Status, Tag and Sort kept in the URL; rules and completion-state
  filters are later additions. The Tag filter lists the tags your Plays carry
  and is left out when none has one.
- A List / Grid switch (`?display=grid`, list by default, kept when the
  filters are cleared). The grid is a compact overview: each Play shows its
  cover, game and Play name, status and one bar, the average of the parts it
  tracks (Story, Pokédex, Collectibles), never their raw counts added
  together; no team.
- Creating a play through New Play, from Plays, Home or a Codex game page.
- Entering a play hub.

The user should not be forced through Codex browsing to create or continue a
play.

## Play Model

A play is a concrete playthrough record for one user and one `mainline` product-family game.

Play lifecycle statuses:

- `not_started`: created as a future or imported play, but not actively underway.
- `playing`: currently in progress.
- `paused`: temporarily stopped.
- `completed`: the user considers the main playthrough complete.
- `abandoned`: stopped with no intent to continue.

Archive should be separate from lifecycle status. A completed or abandoned play can be archived without changing what happened in the play.

As built, an archived Play is hidden from Home and the Plays list. Plays
shows `Archived · N` when there are any, opening an Archived list where each
Play has Restore; an archived Play still opens (from that list or
Collection) with an "Archived" note and Restore over its pages, and its
Settings offers Restore in place of Archive.

Plays should support:

- User-owned name.
- Game.
- Lifecycle status.
- Trainer name.
- Platform or console.
- Started date.
- Completed date.
- Playtime.
- Notes and save notes.

Play names should be required in stored data. If the user does not provide one, the app should generate a clear default name during create flow.

New Play has three short steps on one card. Inside Mainline every New Play
button opens it as a dialog over the current page (the address and the bar's
active link don't change). Its games, first partners and expansions are
static reference data, read once on the server through a cached reader and
handed to Mainline with its layout, so it always opens complete. The Codex's
game page and Pokémon entry host it too (their Your Plays and In your Plays
sections), so "Start a {Version} Play" and "Start a new Play" open it over the
page and only starting the Play moves on. From elsewhere outside Mainline
a link to `/app?new=<game>` (`?new=1` for no game) opens it over Home on
that game, with `&partner=<species>` already choosing
its first partner when the game offers it, and the parameters leave the
address once it is open. Either way: the game on the cover shelf, the partner in a row on the band (or
choose later), then, under the game's cover and the partner side by side on
the band, the Play's name (required), trainer name, the expansions you
own (a game with DLC only, its own field), what it tracks (Story, the
Pokédex mode and Collectibles show where their settings will go) and its
challenge rules. Start
writes the Play, its expansions and its rules in one step and opens it. The
partner must be one the game offers; it joins slot 1 and is recorded as the
game's first partner-choice milestone. Games that hand you your partner
(Yellow, the Let's Go games) have no such choice. Exact Team members, Story
position, Pokédex and Collectible progress, and History belong inside the
created Play rather than in the creation flow.

The accepted game-aware completion-goal step (counts, track only, not
tracked per scope) is not built yet.

Play-specific settings should control:

- which optional-content scopes, such as DLC, are enabled;
- whether applicable Postgame and optional-content Story paths count, are
  track-only, or are not tracked;
- whether each meaningful named Pokédex counts, is track-only, or is not
  tracked;
- whether supported optional Pokédex entries or groups count within a tracked
  scope;
- whether each supported Collectible group counts, is track-only, or is not
  tracked.

Main Story remains part of the base Play. Completion percentages are derived
from Play settings, selected optional content, and recorded progress instead of
stored as source-of-truth values. Disabling a scope preserves its existing
progress.
