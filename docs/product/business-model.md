# Business Model

> **Status:** Product-strategy research draft
> **Last reviewed:** July 29, 2026

No pricing, entitlement model, subscription, purchase, advertisement, or
paywall is currently accepted or implemented. This document preserves the
market evidence and decision principles that must guide a later commercial
product pass.

## Product Position

Voydex is a Pokémon journey companion rather than only a reference Pokédex. Its
distinctive value comes from preserving and connecting a player's Plays, Teams,
Plans, Progress, decisions, notes, snapshots, comparisons, analysis, and
History.

A future commercial model should therefore monetize durable personal value,
planning depth, and ongoing service—not access to basic Pokémon facts or the
essential playthrough-tracking experience.

## Commercial Principles

- Keep the core Pokémon journey useful without payment. Creating a Play,
  recording its Team, and tracking its essential Progress should remain a
  coherent free experience.
- Keep shared Codex reference data broadly accessible. Do not turn individual
  Pokémon facts into premium content.
- Do not divide ordinary exact-game support into separately purchased game or
  generation packs. Exact-game behavior is part of Voydex's product promise.
- Prefer premium capabilities that create ongoing user or service value:
  additional journey capacity, deeper planning, long-term records, cloud
  preservation, export, comparison, and advanced analysis.
- Avoid advertising in the current direction. Ads would work against Voydex's
  calm, focused adventure-journal experience.
- Never delete premium data because an entitlement expires. Existing records
  should remain readable, exportable where supported, and recoverable; only
  premium creation or mutation may become restricted.
- Explain limits before users reach them and distinguish clearly between free,
  premium, unavailable, and temporarily inaccessible states.
- Treat billing infrastructure, remote entitlement changes, data retention,
  commercial release, and Pokémon intellectual-property review as separate
  authority and readiness gates.

## Market Evidence

This is a dated, non-exhaustive snapshot of adjacent Pokémon companion products.
Offerings may change; review the linked primary pages before relying on a
specific current feature or price.

| Product                                                                                      | Observed model                                                                | Paywall pattern                                                                             |
| -------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [PartyDex](https://www.partydex.dev/about)                                                   | Free, local browser storage, no accounts or subscriptions                     | No product paywall stated                                                                   |
| [Trainer Ledger](https://trainerledger.com/about)                                            | Voluntary Patreon support                                                     | No feature paywall stated                                                                   |
| [Living Pokédex Tracker](https://pokedexapp.net/donate/)                                     | Donations and supporter memberships                                           | Core tracker remains free and ad-free; supporter benefits focus on community and previews   |
| [Nuzlocke Chart](https://play.google.com/store/apps/details?id=com.pseudocode.nuzlockechart) | Optional one-time in-app purchase                                             | Basic use remains free; optional functionality is paid                                      |
| [ProDex](https://apps.apple.com/es/app/prodex-gen-1-a-la-9/id1485409731)                     | Advertising, individual game purchases, complete bundle, and support purchase | Reference content is divided into purchasable game access                                   |
| [PikaDex](https://apps.apple.com/ie/app/pikadex-dex-for-every-game/id1509561856)             | Platform packs, complete bundle, and tips                                     | One-time content bundles extend the free application                                        |
| [dataDex](https://play.google.com/store/apps/details?id=com.talzz.datadex)                   | Advertising and PRO functionality                                             | Basic Pokédex access is free while advanced tools such as Team Builder are presented as PRO |

The recurring market patterns are:

- basic reference and tracking remain free;
- independent web tools commonly use donations or Patreon;
- mobile tools commonly use advertising and one-time purchases;
- advanced team-building or convenience tools are common premium boundaries;
- individual-game and all-games bundles exist, but conflict with Voydex's
  integrated exact-game direction;
- recurring subscriptions are less common for static reference tools and need
  continuing service value to be credible.

Competitor monetization demonstrates market practice, not permission to use
Pokémon intellectual property commercially.

## Draft Voydex Direction

The likely fit is a generous free product with an optional `Voydex Plus`
entitlement. The exact limits and included capabilities remain open.

### Free Experience Candidates

- Codex Pokémon and game reference browsing.
- A meaningful allowance of active Plays.
- Team roster recording.
- Story, Pokédex, and Collectibles progress.
- Basic Team Analysis.
- Enough History, Plan, and snapshot access to understand those workflows
  before deciding whether deeper use is valuable.

Prefer a total active-Play allowance over one Play per generation. A
generation-based limit is harder to understand, rewards some playing habits
over others, and couples commercial policy to Pokémon taxonomy.

### Plus Candidates

- Additional or unlimited active Plays.
- Multiple Plans, linked-Plan comparison, and deeper planning tools.
- Full Team and Play History.
- Expanded milestone snapshots, decisions, notes, and long-term records.
- Advanced analysis and future opponent-specific comparisons.
- Export, backup, restoration, synchronization, sharing, and cross-Play
  insights where those services exist.

These are candidates, not accepted entitlements. The free contract must be
decided as a complete product experience before premium boundaries are added.

## Purchase-Model Direction

One-time purchases align with the expectations established by many companion
apps, but they do not naturally fund recurring authentication, database,
storage, backup, and synchronization costs.

A later validation pass should compare:

- annual and optional monthly `Voydex Plus`;
- a limited launch-time Founder or lifetime purchase;
- voluntary supporter funding;
- a hybrid where durable cloud services recur but a smaller local feature
  upgrade is one-time.

A subscription is defensible only when Voydex delivers continuing service
value. Static reference information alone is not sufficient justification.

## Open Decisions

- The exact free active-Play allowance.
- Which advanced workflows receive limited free usage versus full free access.
- Subscription, one-time, Founder, supporter, or hybrid purchase structure.
- Regional pricing, taxes, refunds, trials, grace periods, and failed-payment
  behavior.
- Read-only and export behavior after entitlement expiry.
- Household, sharing, and future collaboration entitlements.
- Billing provider and entitlement source of truth.
- Privacy, analytics, support, and account-deletion consequences.
- Commercial trademark, copyright, store-policy, and legal review.

## Implementation Gate

Do not add billing tables, entitlement checks, premium navigation, pricing UI,
or feature restrictions from this draft alone. Implementation requires:

1. an accepted free and premium product contract;
2. commercial and Pokémon intellectual-property review;
3. entitlement ownership, authorization, RLS, and failure-state design;
4. billing-provider and operational decisions;
5. upgrade, downgrade, cancellation, export, and account-deletion UX;
6. explicit implementation status in [Project Status](../project-status.md).
