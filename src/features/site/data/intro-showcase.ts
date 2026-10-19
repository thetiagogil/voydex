import type {
  PublicGame,
  PublicPokemon,
  PublicTypeSlug,
} from "@/config/public-art";

/* One Play, told by its partner: Grookey on day one, Thwackey along the way, Rillaboom months later. */
export const introChapterPartners = {
  dayOne: { name: "Grookey", slug: "grookey", type: "grass" },
  alongTheWay: { name: "Thwackey", slug: "thwackey", type: "grass" },
  monthsLater: { name: "Rillaboom", slug: "rillaboom", type: "grass" },
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
    { name: "Dragapult", slug: "dragapult", type: "dragon" },
    { name: "Corviknight", slug: "corviknight", type: "flying" },
    { name: "Grimmsnarl", slug: "grimmsnarl", type: "dark" },
    { name: "Rillaboom", slug: "rillaboom", type: "grass" },
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
    slug: "arcanine",
    type: "fire",
    types: ["fire"],
  },
  {
    name: "Lapras",
    number: "#0131",
    slug: "lapras",
    type: "water",
    types: ["water", "ice"],
  },
  {
    name: "Gengar",
    number: "#0094",
    slug: "gengar",
    type: "ghost",
    types: ["ghost", "poison"],
  },
  {
    name: "Pikachu",
    number: "#0025",
    slug: "pikachu",
    type: "electric",
    types: ["electric"],
  },
  {
    name: "Eevee",
    number: "#0133",
    slug: "eevee",
    type: "normal",
    types: ["normal"],
  },
  {
    name: "Dragonite",
    number: "#0149",
    slug: "dragonite",
    type: "dragon",
    types: ["dragon", "flying"],
  },
];
