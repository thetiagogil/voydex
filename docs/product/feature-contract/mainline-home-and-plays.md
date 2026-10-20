# Mainline Home And Plays

This is the Mainline Home And Plays part of the [Feature Contract](../feature-contract.md).

## Mainline Home

Mainline Home (`/mainline`) is where a signed-in trainer lands and what the
"V" tile opens. It is for resuming an adventure, not for figures (those belong
to Statistics), and it owns no mutation of its own.

- **With Plays:** a meadow band with the greeting, the shelf of your latest
  Plays (covers in recent order, each with its lead Pokémon: six on desktop,
  four on tablets, two on phones; the dashed tile starts a new Play, and All
  Plays leads to the Plays list when some are left off), the current Play's
  team standing on the meadow in its game's colour, one line on where it
  stands, and Continue. Every shelf Play loads with the page, so picking
  another cover switches the meadow, the line and the latest moments at once
  and only updates `?play=`; a link to an older Play puts it first on the
  shelf. Latest moments list the current Play's last five records as History
  draws them; a Play with nothing recorded shows where it began.
- **With one brand-new Play:** its first partners wait on the meadow; tapping
  one is the Play's own partner choice, with Undo in the toast.
- **With no Plays:** the game picker is the page. Pick a game, tap a partner
  and Start creates the Play at once (named "New Journey" with your trainer
  name; Play Settings change the rest).
- A game and partner picked on Start a Play before signing up are offered
  once, to start straight away or put aside.

The shelf reads as "last opened first" in v3; until Plays record when they
were last opened, it uses the latest update.

## Plays

Plays are user-owned playthroughs.

The Plays area should support:

- Listing all plays, with Search, Game, Generation, and Sort kept in the URL;
  status, tags, rules, and completion-state filters are later additions.
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
(Start a Play signed in) a link to `/mainline?new=<game>` (`?new=1` for no game) opens it over Home on
that game, with `&partner=<species>` (Start a Play's pick) already choosing
its first partner when the game offers it, and the parameters leave the
address once it is open. Either way: the game on the cover shelf, the partner on the meadow (or
choose later), then, under the game's cover and the partner side by side on
the meadow, the Play's name (required), trainer name and what it tracks
(expansions you own; Story, the Pokédex mode and Collectibles show where
their settings will go), with its challenge rules in view under it. Start
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
