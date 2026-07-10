# ADR 0003: Keep App-Wide Visual Primitives In Shared

- Status: Accepted
- Date: 2026-07-10

## Context

Voydex uses a small visual vocabulary across the site, global features, Codex,
and Mainline: the `AppIcon` wrapper, the semantic `appIcons` catalog, the
Pokeball icon, and the brand components. These files are presentation
primitives, not Pokemon/game domain rules or module-owned workflows.

The consumers cross the application boundaries. The app shell, site, system,
settings, Codex, and Mainline all use the same primitives. Moving them under a
single global feature would make product modules depend on that feature, while
duplicating the catalog would create competing visual contracts.

## Decision

Keep the app-wide icon catalog, icon wrapper, Pokeball icon, and brand
components under `src/shared` as shared visual primitives.

This is a deliberately narrow exception to the rule that product behavior
belongs under `src/modules` or `src/features`:

- shared visual primitives may define presentation tokens and reusable UI
  wrappers;
- they must not own database access, product state, or domain workflows;
- new domain-specific behavior must remain in its module or feature owner;
- adding a new icon to the catalog is acceptable when it represents a stable
  app-wide visual token rather than a feature's data model.

## Consequences

- Global and product surfaces can share one icon and brand vocabulary without
  a forbidden dependency on another feature or module.
- The root shared boundary is slightly broader than domain-neutral utilities,
  so the exception is documented here and enforced by review rather than used
  as a general product-code bucket.
- The semantic catalog remains a presentation concern; callers still own the
  meaning and behavior associated with each icon.
