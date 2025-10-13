import { GenerationData } from "./types";

export const generationData: Record<string, GenerationData> = {
  "1": {
    slug: "1",
    name: "Generation I",
    region: "Kanto",
    years: "1996-1999",
    pokemonCount: 151,
    description:
      "The original Pokémon adventure that started it all. Explore the Kanto region, catch the original 151 Pokémon, and become the Champion!",
    games: [
      {
        slug: "red",
        name: "Pokémon Red",
        version: "Red Version",
        color: "bg-red-500",
        year: 1996,
        description:
          "The classic red version with exclusive Pokémon like Arcanine and Scyther.",
        features: [
          "Original 151 Pokémon",
          "Classic gameplay",
          "Trade evolution",
        ],
      },
      {
        slug: "blue",
        name: "Pokémon Blue",
        version: "Blue Version",
        color: "bg-blue-500",
        year: 1996,
        description:
          "The blue counterpart featuring exclusives like Blastoise and Pinsir.",
        features: [
          "Original 151 Pokémon",
          "Version exclusives",
          "Link cable trading",
        ],
      },
      {
        slug: "yellow",
        name: "Pokémon Yellow",
        version: "Special Pikachu Edition",
        color: "bg-yellow-500",
        year: 1998,
        description:
          "Follow in Ash's footsteps with Pikachu as your starter Pokémon.",
        features: [
          "Pikachu starter",
          "Anime-inspired",
          "All starters available",
        ],
      },
    ],
  },
  "2": {
    slug: "2",
    name: "Generation II",
    region: "Johto",
    years: "1999-2002",
    pokemonCount: 100,
    description:
      "Journey through the Johto region and discover 100 new Pokémon, then return to Kanto for the ultimate challenge.",
    games: [
      {
        slug: "gold",
        name: "Pokémon Gold",
        version: "Gold Version",
        color: "bg-yellow-600",
        year: 1999,
        description:
          "Catch Ho-Oh and explore Johto with day/night cycles and breeding.",
        features: ["Day/night cycle", "Breeding system", "100 new Pokémon"],
      },
      {
        slug: "silver",
        name: "Pokémon Silver",
        version: "Silver Version",
        color: "bg-gray-400",
        year: 1999,
        description:
          "Team up with Lugia in this silver adventure through Johto.",
        features: ["Real-time clock", "Two regions", "Steel and Dark types"],
      },
      {
        slug: "crystal",
        name: "Pokémon Crystal",
        version: "Crystal Version",
        color: "bg-cyan-500",
        year: 2000,
        description:
          "The enhanced version with animated sprites and Battle Tower.",
        features: ["Animated sprites", "Female protagonist", "Battle Tower"],
      },
    ],
  },
};
