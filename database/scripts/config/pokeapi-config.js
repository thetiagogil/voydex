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

// Mapping of PokeAPI version slugs -> meta.games.id (useful for ETL targeting specific games)
// This list intentionally covers Generation I - IV (red..soulsilver) as numeric ids defined in
// database/seed/curated/001_meta_data.sql. Extend if you want to support more versions.
export const VERSION_TO_GAME_ID = {
  red: 1,
  blue: 2,
  yellow: 3,
  gold: 4,
  silver: 5,
  crystal: 6,
  ruby: 7,
  sapphire: 8,
  firered: 9,
  leafgreen: 10,
  emerald: 11,
  diamond: 12,
  pearl: 13,
  platinum: 14,
  heartgold: 15,
  soulsilver: 16,
};

// Mapping of meta.games.id -> meta.version_groups.id for games 1..16 (Gen I - IV)
// Derived from database/seed/curated/001_meta_data.sql to keep ETL consistent with seed data.
export const GAME_TO_VERSION_GROUP = {
  1: 1,
  2: 1,
  3: 2,
  4: 3,
  5: 3,
  6: 4,
  7: 5,
  8: 5,
  9: 6,
  10: 6,
  11: 7,
  12: 8,
  13: 8,
  14: 9,
  15: 10,
  16: 10,
};

// Mapping of meta.games.id -> generation id (useful to split outputs per generation)
// Sourced from database/seed/curated/001_meta_data.sql for games 1..16 (Gen I - IV)
export const GAME_TO_GENERATION = {
  1: 1,
  2: 1,
  3: 1,
  4: 2,
  5: 2,
  6: 2,
  7: 3,
  8: 3,
  9: 3,
  10: 3,
  11: 3,
  12: 4,
  13: 4,
  14: 4,
  15: 4,
  16: 4,
};

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
