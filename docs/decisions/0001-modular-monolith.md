# ADR 0001: Organize The App As A Modular Monolith

- Status: Accepted
- Date: 2026-07-10

## Context

Voydex is early enough to change structure without maintaining a large legacy
surface. Its modules contain multiple views, and complex views such as the
Mainline Play Hub contain sections that have substantial internal structure.
The current application already benefits from feature ownership, but
infrastructure, global features, catalogue semantics, and shared primitives are
not separated consistently. Some server reads also follow a mandatory-looking
query/loader/mapper template even when the work is either much simpler or more
complex than that template suggests.

The architecture must prioritize findability, clear ownership, focused files,
and separation between database I/O, workflow decisions, mapping, and UI.

## Decision

Use a modular monolith with hierarchical, feature-owned vertical slices.

- Keep `src/app` as thin Next.js route adapters.
- Use `src/platform` for environment, Supabase, framework, and service
  infrastructure.
- Use root `src/features` for application-wide capabilities such as app shell,
  auth, settings, site, and system states.
- Keep product code in `src/modules/<module>/features`, allowing views and
  sections to own nested feature folders.
- Allow `shared`, `domain`, `application`, and `infrastructure` at a module root
  only when a real cross-feature responsibility exists.
- Introduce an internal `reference` module for Pokemon/game catalogue semantics
  reused by Codex and Mainline. It is a dependency, not a navbar destination.
- Restrict root `src/shared` to domain-neutral primitives.
- Replace `src/lib` gradually by moving each concern to its real owner.
- Co-locate files by endpoint or use case, then split I/O, orchestration, pure
  mapping, and presentation when complexity warrants it. Do not require three
  files for every read.
- Keep Server Components as the default and Client Component boundaries narrow.

## Consequences

### Benefits

- Product work is discoverable by module, view, and section.
- Complex views can grow without one giant components folder.
- Infrastructure and catalogue semantics have explicit owners.
- Most changes remain local to one vertical slice.
- File splitting follows responsibility instead of arbitrary size or layer
  templates.
- The architecture can be enforced incrementally with import checks.

### Costs

- Some concepts appear at more than one depth, so naming and public entry
  points must stay disciplined.
- Moving the current code requires temporary transition rules.
- The internal `reference` module creates one intentional directed
  inter-module dependency that boundary tooling must understand.
- Developers must use judgment about when a simple read needs to be split.

## Alternatives Considered

### Horizontal technical layers

A single global controller/service/repository/component hierarchy would make
technical roles obvious, but feature work would span many distant folders and
large shared services would accumulate unrelated behavior.

### Completely flat feature folders

This is simple initially, but it does not fit modules with several views and
views with substantial sections. It would recreate the oversized components
folders the refactor is intended to avoid.

### Microservices or separate packages per module

The current product and team size do not justify deployment, versioning, and
cross-package overhead. Explicit in-repo boundaries provide the useful part of
modularity without distributed-system cost.

## Guardrails

- No direct dependency between `mainline` and `codex`.
- Consumers may depend on `reference`; `reference` may not depend on them.
- No database client creation or raw schema reads in component folders.
- No empty ceremonial architecture folders.
- New boundary rules are enabled only after the migrated repository passes
  them.
