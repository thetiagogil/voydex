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
  mainlinePlayCollectibles: (playId: string) =>
    `/mainline/plays/${playId}/collectibles`,
  mainlinePlayPokedex: (playId: string) => `/mainline/plays/${playId}/pokedex`,
  mainlinePlayProgress: (playId: string) =>
    `/mainline/plays/${playId}/progress`,
  mainlinePlaySettings: (playId: string) =>
    `/mainline/plays/${playId}/settings`,
  mainlinePlayStory: (playId: string) => `/mainline/plays/${playId}/story`,
  mainlinePlayTeam: (playId: string) => `/mainline/plays/${playId}/team`,
  mainlinePlayTimeline: (playId: string) =>
    `/mainline/plays/${playId}/timeline`,
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
