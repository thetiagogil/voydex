import type {
  PublicGame,
  PublicPokemon,
  PublicTypeSlug,
} from "@/config/public-art";

/* One Play, told by its partner: Grookey on day one, Thwackey along the way, Rillaboom months later. */
export const introChapterPartners = {
  dayOne: { name: "Grookey", sprite_slug: "grookey", type: "grass" },
  alongTheWay: { name: "Thwackey", sprite_slug: "thwackey", type: "grass" },
  monthsLater: { name: "Rillaboom", sprite_slug: "rillaboom", type: "grass" },
} as const satisfies Record<string, PublicPokemon>;

/* The games on the "Pick a game" shelf; the example Play's game is the one picked. */
export const introGamePicks: readonly PublicGame[] = [
  { name: "Pokémon Red", slug: "red" },
  { name: "Pokémon HeartGold", slug: "heartgold" },
  { name: "Pokémon X", slug: "x" },
  { name: "Pokémon Sword", slug: "sword" },
  { name: "Pokémon Violet", slug: "violet" },
];

/* A Plan in the making: four picks and two open slots. */
export const introPlan: {
  name: string;
  picks: readonly PublicPokemon[];
  slots: number;
} = {
  name: "Galar sweep",
  picks: [
    { name: "Dragapult", sprite_slug: "dragapult", type: "dragon" },
    { name: "Corviknight", sprite_slug: "corviknight", type: "flying" },
    { name: "Grimmsnarl", sprite_slug: "grimmsnarl", type: "dark" },
    { name: "Rillaboom", sprite_slug: "rillaboom", type: "grass" },
  ],
  slots: 6,
};

export const introCodexEntries: readonly (PublicPokemon & {
  number: string;
  types: readonly PublicTypeSlug[];
})[] = [
  {
    name: "Arcanine",
    number: "#0059",
    sprite_slug: "arcanine",
    type: "fire",
    types: ["fire"],
  },
  {
    name: "Lapras",
    number: "#0131",
    sprite_slug: "lapras",
    type: "water",
    types: ["water", "ice"],
  },
  {
    name: "Gengar",
    number: "#0094",
    sprite_slug: "gengar",
    type: "ghost",
    types: ["ghost", "poison"],
  },
];
