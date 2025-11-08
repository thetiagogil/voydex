import { GameInfo } from "./types";

export const gameData: Record<string, GameInfo> = {
  "1/red": {
    slug: "red",
    name: "Pokémon Red",
    version: "Red Version",
    genSlug: "1",
    genName: "Generation I",
    region: "Kanto",
    year: 1996,
    description:
      "The classic red version that started the Pokémon phenomenon. Catch the original 151 Pokémon, defeat the Elite Four, and become the Champion of the Kanto region!",
    features: ["150 Pokémon", "Original story", "Kanto region"],
    playthroughs: [
      {
        id: "1",
        title: "My First Kanto Adventure",
        status: "active",
        createdAt: "2024-01-15",
        updatedAt: "2024-01-20",
        progress: {
          overallCompletion: 45, // General completion % across all progress items
          pokemonCaught: 68,
          totalPokemon: 151,
          badges: 3,
          totalBadges: 8,
          currentLocation: "Celadon City",
          playtime: "15h 30m",
        },
        team: [
          { name: "Charmeleon", level: 28, species: "Charmeleon" },
          { name: "Pidgeotto", level: 25, species: "Pidgeotto" },
          { name: "Pikachu", level: 22, species: "Pikachu" },
        ],
      },
      {
        id: "2",
        title: "Nuzlocke Challenge",
        status: "paused",
        createdAt: "2023-12-01",
        updatedAt: "2023-12-15",
        progress: {
          overallCompletion: 12,
          pokemonCaught: 15,
          totalPokemon: 151,
          badges: 1,
          totalBadges: 8,
          currentLocation: "Pewter City",
          playtime: "8h 45m",
        },
        team: [
          { name: "Bulbasaur", level: 18, species: "Bulbasaur" },
          { name: "Rattata", level: 12, species: "Rattata" },
        ],
      },
    ],
  },
  "1/blue": {
    slug: "blue",
    name: "Pokémon Blue",
    version: "Blue Version",
    genSlug: "1",
    genName: "Generation I",
    region: "Kanto",
    year: 1996,
    description:
      "The blue counterpart to Red Version, featuring exclusive Pokémon and the same classic adventure through the Kanto region.",
    features: ["150 Pokémon", "Original story", "Kanto region"],
    playthroughs: [],
  },
  "1/red-create": {
    slug: "red",
    name: "Pokémon Red",
    version: "Red Version",
    genSlug: "1",
    genName: "Generation I",
    region: "Kanto",
    year: 1996,
    description:
      "Start your journey through the Kanto region with Professor Oak's help.",
    features: ["150 Pokémon", "Original story", "Kanto region"],
  },
};
