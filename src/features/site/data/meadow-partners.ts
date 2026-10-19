import type { PublicPokemonForm } from "@/config/public-art";

type MeadowPartner = PublicPokemonForm & {
  /* The generation it starts; on Home it opens Start a Play there. */
  generation: number;
  /* Each render sits differently in its square; a nudge makes them read the same size on the hill. */
  scale?: number;
};

/*
 * One first partner per generation, standing along the hill: a grass, a fire
 * and a water in each run of three generations. A fixed, curated set.
 */
export const meadowPartners: readonly MeadowPartner[] = [
  { generation: 1, name: "Charmander", slug: "charmander" },
  { generation: 2, name: "Chikorita", slug: "chikorita" },
  { generation: 3, name: "Mudkip", scale: 0.98, slug: "mudkip" },
  { generation: 4, name: "Turtwig", scale: 0.96, slug: "turtwig" },
  { generation: 5, name: "Oshawott", slug: "oshawott" },
  { generation: 6, name: "Fennekin", slug: "fennekin" },
  { generation: 7, name: "Rowlet", scale: 0.9, slug: "rowlet" },
  { generation: 8, name: "Scorbunny", scale: 1.08, slug: "scorbunny" },
  { generation: 9, name: "Quaxly", scale: 0.98, slug: "quaxly" },
];
