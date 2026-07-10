# Voydex Data Inconsistencies

This file tracks suspected source-data issues found while building Voydex. Each entry should include the observed app behavior, the checked database rows, and the expected correction to verify later.

## Pok�mon Availability

### Arcanine - Scarlet / Violet base availability

- **Status:** Open
- **Observed in Voydex:** Arcanine base form shows `Evolution` as the only Scarlet / Violet availability method.
- **Expected:** Arcanine base form should also have `Native Encounter` if it appears directly in the wild in Pok�mon Scarlet / Violet.
- **Checked data:** `reference.pokemon_availability` for species `arcanine`, version group `Scarlet / Violet` currently has:
  - Base Arcanine: `Evolution`
  - Hisuian Arcanine: `Transfer Only`
- **Related check:** Growlithe base form in the same version group has `Native Encounter`, so Arcanine appears to be derived only through evolution in the current seed.
- **Likely fix:** Confirm source data, then add a `Native Encounter` row for base Arcanine in Scarlet / Violet if valid. Use `game_id = null` if valid for both Scarlet and Violet, or a game-specific id if only valid in one version.

## Pokemon Detail Data Gaps

### Pokedex entry text

- **Status:** Open
- **Observed in Voydex:** Pokemon detail has a Pokedex section with an `Entry` column reserved for future text, but the app currently has no loaded Pokedex flavor/entry text.
- **Expected:** Add game/version scoped Pokedex entry data, including form-specific entries where games differ by form.
- **Likely fix:** Add reference seed coverage and app loaders/mappers for Pokedex entry text after the source-data model is defined.

### Breeding and training metadata

- **Status:** Open
- **Observed in Voydex:** Pokemon detail can load egg groups through attributes, but the page intentionally does not render a breeding section yet because the surrounding breeding/training data is incomplete.
- **Expected:** Support a complete enough section before rendering it, including gender ratio, hatch cycles, catch rate, growth rate, base friendship, and base EXP.
- **Likely fix:** Add the missing fields/tables to the reference model, then render egg groups together with the rest of the breeding/training data.

### Structured availability details

- **Status:** Open
- **Observed in Voydex:** Availability currently renders content scope, method, and notes. This is useful, but not enough for richer encounter/source explanations.
- **Expected:** Support structured encounter/location/source data where available, including DLC/content-scope differences.
- **Likely fix:** Add structured availability detail seed data instead of relying only on free-text notes.

### Reference detail and description coverage audit

- **Status:** Open
- **Observed in Voydex:** Several UI areas rely on short labels, free-text notes, or placeholder copy because the database does not consistently expose rich detail text for every reference concept.
- **Expected:** Audit and improve detail/notes/description coverage for reference data that needs user-facing explanation.
- **Areas to check:**
  - Pokedex entry text.
  - Evolution requirements, including item/method/location/time/condition explanations.
  - Availability methods, encounter/source notes, and DLC/content-scope explanations.
  - Move descriptions, move effects, and method-specific learnset notes.
  - Ability descriptions and effect summaries.
- **Likely fix:** Prefer database-backed descriptions or structured detail fields for durable reference explanations, then keep frontend copy focused on presentation rather than source-data meaning.
