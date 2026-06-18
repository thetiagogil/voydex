export const appRoutes = {
  appEntry: "/app",
  authCallback: "/auth/callback",
  collection: "/collection",
  collectionEntry: (playPokemonId: string) => `/collection/${playPokemonId}`,
  codex: "/codex",
  codexGame: (gameSlug: string) => `/codex/games/${gameSlug}`,
  codexGames: "/codex/games",
  codexGeneration: (generationId: number | string) =>
    `/codex/generations/${generationId}`,
  codexGenerations: "/codex/generations",
  codexPokemon: "/codex/pokemon",
  codexPokemonSpecies: (speciesSlug: string) => `/codex/pokemon/${speciesSlug}`,
  home: "/",
  intro: "/intro",
  login: "/login",
  mainline: "/adventures",
  mainlineDashboard: "/adventures/dashboard",
  newPlan: "/plans/new",
  newPlay: "/plays/new",
  plan: (planId: string) => `/plans/${planId}`,
  plans: "/plans",
  play: (playId: string) => `/plays/${playId}`,
  playCollectibles: (playId: string) => `/plays/${playId}/collectibles`,
  playPokedex: (playId: string) => `/plays/${playId}/pokedex`,
  playSettings: (playId: string) => `/plays/${playId}/settings`,
  playStory: (playId: string) => `/plays/${playId}/story`,
  playTeam: (playId: string) => `/plays/${playId}/team`,
  playTimeline: (playId: string) => `/plays/${playId}/timeline`,
  plays: "/plays",
  settings: "/settings",
  stats: "/stats",
} as const;

export const protectedRoutePrefixes = [
  appRoutes.collection,
  appRoutes.mainline,
  appRoutes.plans,
  appRoutes.plays,
  appRoutes.settings,
  appRoutes.stats,
] as const;

export function isProtectedRoute(pathname: string) {
  return protectedRoutePrefixes.some(
    (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
  );
}
