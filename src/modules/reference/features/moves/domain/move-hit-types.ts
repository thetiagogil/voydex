/*
 * Moves that deal set damage or knock out in one hit: their type only
 * decides who they can't touch, so they never land a 2× hit.
 */
const setDamageMoveSlugs = new Set([
  "bide",
  "comeuppance",
  "counter",
  "dragon-rage",
  "endeavor",
  "final-gambit",
  "fissure",
  "guillotine",
  "horn-drill",
  "metal-burst",
  "mirror-coat",
  "natures-madness",
  "night-shade",
  "psywave",
  "ruination",
  "seismic-toss",
  "sheer-cold",
  "sonic-boom",
  "super-fang",
]);

/*
 * A move whose hit follows type effectiveness: a Physical or Special move,
 * whether its power is set or varies (Low Kick, Gyro Ball), unless it deals
 * set damage.
 */
export const isTypeEffectiveMove = ({
  damageClass,
  slug,
}: {
  damageClass: string | null | undefined;
  slug: string;
}) =>
  (damageClass === "physical" || damageClass === "special") &&
  !setDamageMoveSlugs.has(slug);

/* Moves that take the user's first type (Arceus's plate, Silvally's memory). */
const userTypeMoveSlugs = new Set([
  "judgment",
  "multi-attack",
  "revelation-dance",
]);

/* Moves that take the user's form's second type (Ogerpon's mask, Paldean Tauros's breed). */
const formTypeMoveSlugs = new Set(["ivy-cudgel", "raging-bull"]);

/*
 * The type a move hits with when a known Pokémon uses it: its own type, the
 * user's type for moves that take it, and Tera Blast's Tera Type once the
 * user Terastallizes. Null for Hidden Power, whose type isn't known.
 */
export const getMoveHitTypeSlug = ({
  moveTypeSlug,
  slug,
  teraTypeSlug,
  userTypeSlugs,
}: {
  moveTypeSlug: string | null;
  slug: string;
  /* The type it Terastallizes into, if it does. */
  teraTypeSlug: string | null;
  /* The user's own types, first type first. */
  userTypeSlugs: string[];
}) => {
  if (slug === "hidden-power") {
    return null;
  }

  if (slug === "tera-blast") {
    return teraTypeSlug ?? moveTypeSlug;
  }

  if (userTypeMoveSlugs.has(slug)) {
    return userTypeSlugs[0] ?? moveTypeSlug;
  }

  if (formTypeMoveSlugs.has(slug)) {
    return userTypeSlugs[1] ?? userTypeSlugs[0] ?? moveTypeSlug;
  }

  return moveTypeSlug;
};
