// Configurable constants for PokeAPI ETL scripts.
// Edit this file to adjust skipped slugs, generation mapping, and other small options.

// Generic set of slugs to skip across resources. Resource-specific sets can extend this.
export const SKIP_SLUGS = new Set(["unknown", "stellar"]);

// Backwards-compatible alias for type-specific scripts that previously used SKIP_TYPES_SLUGS
export const SKIP_TYPES_SLUGS = new Set([...SKIP_SLUGS]);

export const GEN_MAP = {
  "generation-i": 1,
  "generation-ii": 2,
  "generation-iii": 3,
  "generation-iv": 4,
  "generation-v": 5,
  "generation-vi": 6,
  "generation-vii": 7,
  "generation-viii": 8,
  "generation-ix": 9,
};

export const DEFAULT_DELAY_MS = 100;

// Patterns for form slugs we want to skip (temporary / event / mega / gmax / cap / totem, etc.)
export const SKIP_FORM_PATTERNS = [
  /gmax/i,
  /mega/i,
  /gigantamax/i,
  /totem/i,
  /cap/i,
  /starter/i,
  /cosplay/i,
  /partner/i,
  /pop-?star/i,
  /rock-?star/i,
  /libre/i,
  /phd/i,
  /event/i,
  // Hisuian regional forms (e.g. "hisui", "hisuan", "hisuian")
  /hisui/i,
  /hisuan/i,
  /hisui-?/i,
];
