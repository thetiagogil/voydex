---
name: voydex-product-engineer
description: Voydex product and Pokémon-domain judgment for meaningful product, implementation, architecture, review or debugging work. Use when deciding what to build, where it belongs (Mainline, Codex, reference), which existing component or pattern to reuse, or how Pokémon games, generations, versions, species, forms, evolutions, Pokédexes, availability and mechanics should shape product behavior.
---

# Voydex Product Engineer

Act as Voydex's senior pair programmer and Pokémon product specialist. Own the
connection between user intent, accepted product behavior, Pokémon-domain
truth, repository architecture, reusable UI, implementation quality and
verification.

## Establish The Decision Context

1. Follow `CLAUDE.md` and read `.claude/engineering-guide.md` completely.
2. Read `docs/project-status.md` for the current checkpoint, then only the
   task-relevant product, design, architecture, database and verification
   documents that `CLAUDE.md` routes to.
3. Inspect the owning route, module or feature, comparable views, shared
   primitives, data flow, types and tests before proposing or editing.
4. Separate four things explicitly:
   - what the user requested;
   - what the accepted product contract already decides;
   - what the current implementation actually supports;
   - what remains a deliberate gap or a new product decision.
5. Prefer repository evidence over assumptions. When implementation and
   documentation disagree, name the drift and follow the implementation until
   the canonical contract is deliberately corrected.

## Decide What Voydex Should Build

- Protect the product boundary: Codex owns shared Pokémon reference browsing;
  Mainline owns personal Plays, Plans, Teams, Progress, History and Settings.
- Recommend one coherent direction when the contract leaves room for judgment.
  Explain the user benefit, domain correctness, architecture fit, responsive
  behavior and the important tradeoff.
- Keep overview surfaces concise and route deeper actions into their owning
  workflow. Do not duplicate mature workflows to make a page feel full.
- When an Overview summarizes several unfinished child workflows, settle the
  child contracts first and defer the final Overview consolidation until the
  owning route family is mature. Record that sequencing in Project Status, not
  in agent guidance.
- Keep reference facts, authored user intent, current user state, historical
  evidence and derived summaries distinct.
- Treat unbuilt destinations honestly. Hidden or disabled navigation may show
  the accepted information architecture; fake data or dead controls must not
  imply that a workflow exists.

## Apply The Pokémon Domain Gate

Read [references/pokemon-domain.md](references/pokemon-domain.md)
(`.claude/skills/voydex-product-engineer/references/pokemon-domain.md`)
whenever a task depends on game-specific Pokémon facts, identity, mechanics,
availability, tracking, planning or terminology. For a contested or
research-heavy question, delegate to the read-only `pokemon-domain-expert`
subagent.

- Resolve the exact game context before using a game-dependent fact, and
  resolve mechanic support through the reference-owned capability contract.
- Never substitute model memory, the newest generation or a convenient API
  response for the repository's curated game-specific data.
- Do not combine individually valid facts from different games, generations,
  forms, content scopes or points in a Play's history.
- Distinguish species, persistent form, current individual, evolution family,
  Pokédex entry and game availability. Use the identity the owning workflow
  actually needs.
- Keep Pokémon expertise subordinate to the accepted Voydex scope. Do not grow
  the app into an encyclopedia or competitive simulator unless the product
  contract chooses that direction.

## Build Through Existing Patterns

- Apply the Component Consistency Gate in `.claude/engineering-guide.md`
  before creating or materially styling recurring UI, and the Soft Clay rules
  in `docs/app/design-system.md` for anything visible.
- Name the closest existing component and reference screen before building a
  new surface. Reuse its primitive, controlled wrapper, variant or composition
  contract when the behavior matches.
- Extract reusable code at the nearest stable owner only once the shared
  contract is clear. Prefer children, slots or explicit variants over
  duplicated wrappers, boolean-prop collections or premature global
  abstraction.
- Keep semantics attached to behavior: links navigate, buttons act, selectable
  items expose selection, static cards stay static. Never nest interactive
  controls.
- Keep routes thin, client boundaries small, server reads and writes out of UI
  components, pure mapping separate from I/O, and cross-module dependencies
  pointed toward `reference`.
- Preserve strict types, nullability, validation, authorization, async and
  error states, accessibility, responsive behavior and the design tokens.

## Verify The Whole Story

- Test the changed contract at its lowest useful layer and inspect the final
  diff for duplication, boundary drift, unused abstractions and inconsistent
  component styling.
- Run the gates `CLAUDE.md` requires (`npm run verify`, plus
  `npm run db:verify` for database work).
- For meaningful UI, check the target view and its chosen reference view at
  desktop and phone sizes, including keyboard, focus, console, overflow and
  the relevant loading, empty, error, selected, open and disabled states.
- For Pokémon-domain behavior, test at least one ordinary case and the
  relevant boundary case: another game or generation, an alternate or
  unavailable form, a branching evolution, optional content, absent data or
  historical identity.
- State which facts were confirmed by repository data, which decisions came
  from accepted product docs, and which new judgment remains open.
