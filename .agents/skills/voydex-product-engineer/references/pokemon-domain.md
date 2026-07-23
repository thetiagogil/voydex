# Pokémon Domain Decision Guide

Use this guide to reason about Pokémon product behavior without turning
unstable or game-specific facts into agent folklore.

## Evidence Order

1. Use the accepted Voydex product and design contract for intended behavior.
2. Use current code and tests for implemented behavior.
3. Use the authored `reference` and `tracking` schema and seed corpus for facts
   the app currently supports.
4. Use `docs/database/reference-data.md` for source hierarchy, curation limits,
   and known gaps.
5. Research current external facts only when the requested slice exceeds the
   curated corpus. Follow the documented source hierarchy, cite the source, and
   keep research separate from implementation assumptions.

Never silently fill a reference-data gap from memory. Define the required user
behavior and evidence first, then expand authored schema or seeds through the
database workflow.

## Resolve Exact Context

Before deciding or implementing, identify the dimensions that can change the
answer:

- product family and exact game;
- version group versus individual version;
- generation and historical ruleset;
- base game versus DLC or another content scope;
- named regional, local, expansion, or National Pokédex;
- species, persistent form, cosmetic presentation, or temporary battle state;
- current individual identity versus event-time historical identity;
- availability, obtainability method, learnset, evolution method, or Pokédex
  membership.

Do not use generation as a shortcut for exact-game truth. Do not use the
largest Pokédex as an availability count. Do not treat release generation,
appearance in a game, and membership in a named Pokédex as interchangeable.

## Preserve Identity Correctly

- Treat species and form as a validated pair when form matters.
- Treat evolution family as a relationship for comparison or browsing, not as
  the identity of a recorded individual.
- Use directed, game-valid evolution or form-transition evidence for changes to
  a Play Pokémon. A family relationship alone does not authorize a transition.
- Keep selectable persistent forms distinct from temporary battle
  transformations, cosmetic differences, and unsupported forms.
- Preserve event-time species and form in History and snapshots even when the
  current individual later evolves or changes form.
- Keep one recorded individual through roster movement, retirement, return,
  evolution, and valid persistent form changes. Do not manufacture a new
  individual merely because its reference identity changed.

## Respect Ownership

- Static Pokémon, game, mechanic, availability, learnset, evolution, and
  Pokédex facts belong to `reference`.
- Story and collectible definitions belong to `tracking`.
- Plays, Teams, Progress, History, preferences, and authored planning intent
  belong to user-owned schemas.
- Summaries, type coverage, completion, comparison status, and usage views
  remain derived unless a reviewed contract explicitly makes them authored
  state.
- Codex may hand exact reference context into Mainline, but Mainline owns
  authentication, authorization, validation, capacity, lifecycle, warnings,
  and mutations.

## Make Product Decisions Like Voydex

- Optimize for a personal adventure companion, not exhaustive competitive or
  encyclopedic coverage.
- Prefer game-aware language and choices that a player can understand without
  knowing database terminology.
- Show exact form or version distinctions only when they change the user's
  decision or the truth of the record.
- Keep incomplete knowledge explicit with states such as unknown, not recorded,
  unavailable, unsupported, or confirmed empty. Do not collapse them into one
  falsy value.
- Use Pokémon imagery and recognizable terminology to aid orientation, while
  maintaining semantic labels, non-color cues, keyboard access, and readable
  text.
- When a proposed feature needs unsupported encounters, locations, story gates,
  breeding depth, or another documented reference gap, constrain the first
  slice or define the data contract before building the UI.

## Review Questions

Before completing Pokémon-dependent work, ask:

1. Is every game-dependent fact resolved from one exact game context?
2. Are species, form, individual, family, and Pokédex identity used
   intentionally?
3. Are reference facts, user-authored state, historical evidence, and derived
   values still separated?
4. Does the behavior remain truthful for alternate forms, branching
   evolutions, optional content, unavailable entries, and missing data?
5. Does the product help the player's journey without expanding beyond the
   accepted Voydex scope?
