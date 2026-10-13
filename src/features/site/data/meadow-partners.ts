import type { SitePokemonForm } from "@/features/site/types";

type MeadowPartner = SitePokemonForm & {
  /* Each render sits differently in its square; a nudge makes them read the same size on the hill. */
  scale?: number;
};

/*
 * One first partner per generation, standing along the hill: a grass, a fire
 * and a water in each run of three generations. A fixed, curated set.
 */
export const meadowPartners: readonly MeadowPartner[] = [
  { name: "Charmander", sprite_slug: "charmander" },
  { name: "Chikorita", sprite_slug: "chikorita" },
  { name: "Mudkip", sprite_slug: "mudkip", scale: 0.98 },
  { name: "Turtwig", sprite_slug: "turtwig", scale: 0.96 },
  { name: "Oshawott", sprite_slug: "oshawott" },
  { name: "Fennekin", sprite_slug: "fennekin" },
  { name: "Rowlet", sprite_slug: "rowlet", scale: 0.9 },
  { name: "Scorbunny", sprite_slug: "scorbunny", scale: 1.08 },
  { name: "Quaxly", sprite_slug: "quaxly", scale: 0.98 },
];
