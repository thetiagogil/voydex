// Mock data for Adventures page

export interface AdventureStats {
  totalPlaythroughs: number;
  activePlaythroughs: number;
  completedPlaythroughs: number;
  totalBadges: number;
  totalPokemonCaught: number;
  completionRate: number; // percentage
}

export interface GenerationPlayData {
  genId: number;
  genSlug: string;
  genName: string;
  region: string;
  years: string;
  pokemonCount: number;
  gamesCount: number;
  playthroughsCount: number;
  activePlays: number;
  completedPlays: number;
  averageCompletion: number; // Average completion % across tracked plays
  isEnabled: boolean; // false for gen 5+
}

export interface RecentActivity {
  id: string;
  playthroughId: string;
  playthroughName: string;
  gameName: string;
  genSlug: string;
  gameSlug: string;
  message: string; // e.g., "Defeated Brock and earned the Boulder Badge"
  category: "badge" | "elite-four" | "legendary" | "pokedex" | "story";
  location?: string;
  completedAt: string;
}

// Mock stats
export const mockAdventureStats: AdventureStats = {
  totalPlaythroughs: 8,
  activePlaythroughs: 3,
  completedPlaythroughs: 2,
  totalBadges: 45,
  totalPokemonCaught: 387,
  completionRate: 62.5,
};

// Mock generation play data
export const mockGenerationPlayData: GenerationPlayData[] = [
  {
    genId: 1,
    genSlug: "1",
    genName: "Generation I",
    region: "Kanto",
    years: "1996-1999",
    pokemonCount: 151,
    gamesCount: 3,
    playthroughsCount: 3,
    activePlays: 2,
    completedPlays: 1,
    averageCompletion: 67, // Average of 3 plays: 100% (completed) + 65% + 35%
    isEnabled: true,
  },
  {
    genId: 2,
    genSlug: "2",
    genName: "Generation II",
    region: "Johto",
    years: "1999-2002",
    pokemonCount: 100,
    gamesCount: 3,
    playthroughsCount: 2,
    activePlays: 1,
    completedPlays: 1,
    averageCompletion: 78, // Average of 2 plays: 100% (completed) + 56%
    isEnabled: true,
  },
  {
    genId: 3,
    genSlug: "3",
    genName: "Generation III",
    region: "Hoenn",
    years: "2002-2006",
    pokemonCount: 135,
    gamesCount: 5,
    playthroughsCount: 2,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 42, // Average of 2 plays: 45% + 38%
    isEnabled: true,
  },
  {
    genId: 4,
    genSlug: "4",
    genName: "Generation IV",
    region: "Sinnoh",
    years: "2006-2010",
    pokemonCount: 107,
    gamesCount: 5,
    playthroughsCount: 1,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 28, // Single play at 28%
    isEnabled: true,
  },
  {
    genId: 5,
    genSlug: "5",
    genName: "Generation V",
    region: "Unova",
    years: "2010-2013",
    pokemonCount: 156,
    gamesCount: 4,
    playthroughsCount: 0,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 0,
    isEnabled: false,
  },
  {
    genId: 6,
    genSlug: "6",
    genName: "Generation VI",
    region: "Kalos",
    years: "2013-2016",
    pokemonCount: 72,
    gamesCount: 4,
    playthroughsCount: 0,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 0,
    isEnabled: false,
  },
  {
    genId: 7,
    genSlug: "7",
    genName: "Generation VII",
    region: "Alola",
    years: "2016-2019",
    pokemonCount: 88,
    gamesCount: 4,
    playthroughsCount: 0,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 0,
    isEnabled: false,
  },
  {
    genId: 8,
    genSlug: "8",
    genName: "Generation VIII",
    region: "Galar",
    years: "2019-2022",
    pokemonCount: 96,
    gamesCount: 4,
    playthroughsCount: 0,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 0,
    isEnabled: false,
  },
  {
    genId: 9,
    genSlug: "9",
    genName: "Generation IX",
    region: "Paldea",
    years: "2022-Present",
    pokemonCount: 120,
    gamesCount: 2,
    playthroughsCount: 0,
    activePlays: 0,
    completedPlays: 0,
    averageCompletion: 0,
    isEnabled: false,
  },
];

// Mock recent activity
export const mockRecentActivity: RecentActivity[] = [
  {
    id: "1",
    playthroughId: "1",
    playthroughName: "Red Nuzlocke Run",
    gameName: "Pokémon Red",
    genSlug: "1",
    gameSlug: "red",
    message: "Defeated Giovanni and earned the Earth Badge",
    category: "badge",
    location: "Viridian City Gym",
    completedAt: "2025-11-01T14:30:00Z",
  },
  {
    id: "2",
    playthroughId: "2",
    playthroughName: "Crystal Master Quest",
    gameName: "Pokémon Crystal",
    genSlug: "2",
    gameSlug: "crystal",
    message: "Caught Articuno",
    category: "legendary",
    location: "Seafoam Islands",
    completedAt: "2025-10-31T09:15:00Z",
  },
  {
    id: "3",
    playthroughId: "1",
    playthroughName: "Red Nuzlocke Run",
    gameName: "Pokémon Red",
    genSlug: "1",
    gameSlug: "red",
    message: "Defeated Blaine and earned the Volcano Badge",
    category: "badge",
    location: "Cinnabar Island Gym",
    completedAt: "2025-10-30T16:45:00Z",
  },
  {
    id: "4",
    playthroughId: "3",
    playthroughName: "Yellow Solo Challenge",
    gameName: "Pokémon Yellow",
    genSlug: "1",
    gameSlug: "yellow",
    message: "Defeated Lance of the Elite Four",
    category: "elite-four",
    location: "Indigo Plateau",
    completedAt: "2025-10-29T20:00:00Z",
  },
  {
    id: "5",
    playthroughId: "2",
    playthroughName: "Crystal Master Quest",
    gameName: "Pokémon Crystal",
    genSlug: "2",
    gameSlug: "crystal",
    message: "Defeated Pryce and earned the Glacier Badge",
    category: "badge",
    location: "Mahogany Town Gym",
    completedAt: "2025-10-28T11:30:00Z",
  },
];
