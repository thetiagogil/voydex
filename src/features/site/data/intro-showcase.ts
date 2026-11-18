import type { PublicGame, PublicPokemon } from "@/config/public-art";

/*
 * One Play, told by its partner, one for each step of How it works:
 * Charmander on day one, Charmeleon along the way, Charizard months later.
 */
export const stepPartners = {
  dayOne: { name: "Charmander", slug: "charmander", type: "fire" },
  alongTheWay: { name: "Charmeleon", slug: "charmeleon", type: "fire" },
  monthsLater: { name: "Charizard", slug: "charizard", type: "fire" },
} as const satisfies Record<string, PublicPokemon>;

/* The games on the "Pick a game" shelf; the example Play's game is the one picked. */
export const introGamePicks: readonly PublicGame[] = [
  { name: "Pokémon Red", slug: "red" },
  { name: "Pokémon HeartGold", slug: "heartgold" },
  { name: "Pokémon X", slug: "x" },
  { name: "Pokémon Sword", slug: "sword" },
  { name: "Pokémon Violet", slug: "violet" },
];

/* A Plan in the making: three picks and two open slots. */
export const introPlan: {
  name: string;
  picks: readonly PublicPokemon[];
  slots: number;
} = {
  name: "Kanto sweep",
  picks: [
    { name: "Gengar", slug: "gengar", type: "ghost" },
    { name: "Lapras", slug: "lapras", type: "water" },
    { name: "Dragonite", slug: "dragonite", type: "dragon" },
  ],
  slots: 5,
};

/* A few Codex entries, as its list draws them. */
export const introCodexEntries: readonly PublicPokemon[] = [
  { name: "Arcanine", slug: "arcanine", type: "fire" },
  { name: "Eevee", slug: "eevee", type: "normal" },
  { name: "Mewtwo", slug: "mewtwo", type: "psychic" },
  { name: "Bulbasaur", slug: "bulbasaur", type: "grass" },
];
