# Product Vision

Voydex is a Pokemon companion for tracking, remembering, and planning Pokemon playthroughs.

The product is not trying to replace Bulbapedia, Serebii, PokemonDB, or Pokemon HOME. Those tools are encyclopedias or official storage services. Voydex should be a personal adventure hub: a place where the user records what they played, which Pokemon they used, what happened in the play, what they completed, and what they want to play next.

## Core Problem

Pokemon players often have many saves across many games and consoles. Remembering progress requires opening each game, checking boxes manually, or keeping scattered notes.

Voydex should provide one central place to answer questions like:

- Which games have I played?
- Where am I in this playthrough?
- What team did I use?
- Which Pokemon have I already used across my plays?
- What did my team look like when I beat this major fight?
- Which collectibles, story steps, and Pokedex entries are still missing?
- What team should I plan for the next run?

## Product Pillars

### Track Plays

A play is the central adventure record. It stores the game, lifecycle status, metadata, settings, selected optional content, team, story progress, collectibles, Pokedex progress, rules, tags, and timeline.

The app must support both active plays and historical imports. A user can log an old completed game without being forced through every detailed snapshot.

### Remember Pokemon History

Voydex should preserve the user's Pokemon history across plays.

Collection is not just the current team. It must include Pokemon that were used earlier, evolved, retired, replaced, or recorded in important snapshots. If a Charmander became Charizard, the app should understand that the user used Charmander, Charmeleon, and Charizard.

### Plan Future Runs

Plans can exist before a play. Users usually plan final evolutions but start in-game with earlier stages, so Voydex should connect planned targets to actual obtained Pokemon over time.

Planning should include reuse warnings, availability context, optional content scope, and future evolution conflicts before the user reaches a blocked state.

### Search Reference Data

The Pokedex/search experience exists to support planning and tracking. It should be filtered by game, generation, availability, type, forms, and used-before state.

Reference data must be curated and historically accurate, especially for older generations.

## First-Class User Loops

1. Continue a play from the Dashboard.
2. Create a play directly from a game selector.
3. Build or update the current team.
4. Complete story steps, collectibles, and Pokedex progress.
5. Record meaningful timeline moments.
6. Plan a future team and create a play from it later.
7. Search Pokemon availability and history before choosing a team member.

## Scope Philosophy

Build for the full product direction, not only the first screen. The database should be able to support long-term features such as optional Pokedexes, timeline snapshots, team planning, rules, modules, and future HOME/living-dex workflows.

At the same time, each UI surface should stay focused. Voydex should feel like a clean companion app with adventure character, not a dense generic wiki or a corporate SaaS dashboard.
