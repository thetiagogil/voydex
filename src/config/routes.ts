export const appRoutes = {
  appEntry: "/app",
  authCallback: "/auth/callback",
  codex: "/codex",
  codexGame: (gameSlug: string) => `/codex/games/${gameSlug}`,
  codexGamePokedex: (gameSlug: string, pokedexSlug: string) =>
    `/codex/games/${gameSlug}/pokedexes/${pokedexSlug}`,
  codexGames: "/codex/games",
  codexPokemon: "/codex/pokemon",
  codexPokemonGameSpecies: (gameSlug: string, speciesSlug: string) =>
    `/codex/pokemon/${gameSlug}/${speciesSlug}`,
  codexPokemonSpecies: (speciesSlug: string) => `/codex/pokemon/${speciesSlug}`,
  health: "/api/health",
  home: "/",
  intro: "/intro",
  login: "/login",
  mainline: "/mainline",
  mainlinePlay: (playId: string) => `/mainline/plays/${playId}`,
  mainlinePlayHistory: (playId: string) => `/mainline/plays/${playId}/history`,
  mainlinePlayProgress: (playId: string) =>
    `/mainline/plays/${playId}/progress`,
  mainlinePlayProgressCollectibles: (playId: string) =>
    `/mainline/plays/${playId}/progress/collectibles`,
  mainlinePlayProgressPokedex: (playId: string) =>
    `/mainline/plays/${playId}/progress/pokedex`,
  mainlinePlayProgressStory: (playId: string) =>
    `/mainline/plays/${playId}/progress/story`,
  mainlinePlaySettings: (playId: string) =>
    `/mainline/plays/${playId}/settings`,
  mainlinePlayTeam: (playId: string) => `/mainline/plays/${playId}/team`,
  mainlinePlayTeamAnalysis: (playId: string) =>
    `/mainline/plays/${playId}/team/analysis`,
  mainlinePlayTeamHistory: (playId: string) =>
    `/mainline/plays/${playId}/team/history`,
  mainlinePlayTeamPlan: (playId: string) =>
    `/mainline/plays/${playId}/team/plan`,
  mainlinePlays: "/mainline/plays",
  settings: "/settings",
} as const;

export const protectedRoutePrefixes = [
  appRoutes.mainline,
  appRoutes.settings,
] as const;

export const isProtectedRoute = (pathname: string) => {
  return protectedRoutePrefixes.some(
    (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
  );
};
