export const appRoutes = {
  appEntry: "/app",
  authCallback: "/auth/callback",
  codex: "/codex",
  codexGames: "/codex/games",
  codexPokemon: "/codex/pokemon",
  /* A Pokémon's entry read in one version group, such as `/codex/pokemon/swsh/arcanine`. */
  codexPokemonEntry: (versionGroupSlug: string, speciesSlug: string) =>
    `/codex/pokemon/${versionGroupSlug}/${speciesSlug}`,
  /* A Pokémon's entry in the version group it was introduced in. */
  codexPokemonSpecies: (speciesSlug: string) => `/codex/pokemon/${speciesSlug}`,
  /* A version group's page, with one of its games picked in the version switch. */
  codexVersionGroup: (versionGroupSlug: string, gameSlug?: string) =>
    gameSlug
      ? `/codex/games/${versionGroupSlug}?version=${encodeURIComponent(gameSlug)}`
      : `/codex/games/${versionGroupSlug}`,
  codexVersionGroupPokedex: (versionGroupSlug: string, pokedexSlug: string) =>
    `/codex/games/${versionGroupSlug}/pokedexes/${pokedexSlug}`,
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
  mainlinePlayProgressStoryRecord: (playId: string, milestoneId: number) =>
    `/mainline/plays/${playId}/progress/story?record=${milestoneId}`,
  mainlinePlaySettings: (playId: string) =>
    `/mainline/plays/${playId}/settings`,
  mainlinePlayTeam: (playId: string) => `/mainline/plays/${playId}/team`,
  /* The Roster with one Pokémon selected, as an Overview sticker opens it. */
  mainlinePlayTeamPokemon: (playId: string, playPokemonId: string) =>
    `/mainline/plays/${playId}/team?pokemon=${encodeURIComponent(playPokemonId)}`,
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
