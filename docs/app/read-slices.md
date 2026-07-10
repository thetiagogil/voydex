# Representative Read Slices

Phase 7 establishes three concrete read shapes. They are examples of how to
choose boundaries, not a mandatory query/loader/mapper template for every
feature.

| Slice                       | Access        | Shape                                                                                              | Evidence                                                                                                                                                       |
| --------------------------- | ------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Default Pokemon detail game | Public        | Simple query and loader; the query returns one derived slug and does not need a mapper             | `src/modules/codex/features/pokemon/detail/server/pokemon-detail-default-game-query.ts` and `pokemon-detail-default-game-loaders.ts`                           |
| Games browse                | Public        | Complex query, parallel reference loaders, and a pure page mapper for filters, cards, and ordering | `src/modules/codex/features/games/browse/server/games-page-query.ts`, `games-page-loaders.ts`, and `data/games-page-mappers.ts`                                |
| Mainline Play Hub           | Authenticated | Claims check, user-scoped orchestration, focused raw readers, and pure Hub/Overview mappers        | `src/modules/mainline/features/plays/hub/server/play-hub-query.ts`, `play-hub-context-reader.ts`, `tabs/overview/server/play-overview-reader.ts`, and `data/*` |

## Boundary Rules

- Route files and UI components call a feature entry point; they do not create
  Supabase clients or issue raw schema reads.
- A simple read may keep its orchestration and raw read close together when
  that makes the flow clearer.
- A complex read should separate external I/O, orchestration, and pure mapping
  when those responsibilities can change independently.
- Authenticated reads establish the user identity before loading user-owned
  rows and keep authorization in the server boundary.
- Shared reference helpers expose stable contracts through
  `src/modules/reference`; consumers do not reach into `reference/shared`.

These slices are intentionally behavior-preserving. New reads should start
with the smallest cohesive boundary and split only when a responsibility or
feature section becomes independently understandable and testable.
