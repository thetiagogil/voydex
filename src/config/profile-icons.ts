/*
 * The Pokémon a trainer can pick as their icon: the starters that have a
 * Legends: Z-A icon, in the order the picker shows them (generation, then
 * grass, fire and water). Each is a form slug (`reference.pokemon_forms.slug`);
 * the icon is `pokemon/icons/<slug>.webp` on the voydex-assets site.
 * Pikachu and Eevee are the Yellow and Let's Go partners. The rest of the
 * starters join when an icon set that has them does.
 */
export const profileIconSlugs = [
  "bulbasaur",
  "charmander",
  "squirtle",
  "pikachu",
  "eevee",
  "chikorita",
  "totodile",
  "treecko",
  "torchic",
  "mudkip",
  "tepig",
  "chespin",
  "fennekin",
  "froakie",
] as const;

export type ProfileIconSlug = (typeof profileIconSlugs)[number];

export const isProfileIconSlug = (value: unknown): value is ProfileIconSlug =>
  typeof value === "string" &&
  (profileIconSlugs as readonly string[]).includes(value);

/* Where an icon sits on the assets site. */
export const getProfileIconPath = (slug: ProfileIconSlug) =>
  `pokemon/icons/${slug}.webp`;
