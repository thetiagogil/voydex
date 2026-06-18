export const appRoutes = {
  authCallback: "/auth/callback",
  collection: "/collection",
  collectionEntry: (playPokemonId: string) => `/collection/${playPokemonId}`,
  dashboard: "/dashboard",
  game: (gameSlug: string) => `/games/${gameSlug}`,
  games: "/games",
  generation: (generationId: number | string) => `/generations/${generationId}`,
  generations: "/generations",
  home: "/",
  intro: "/intro",
  login: "/login",
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
  pokedex: "/pokedex",
  pokedexSpecies: (speciesSlug: string) => `/pokedex/${speciesSlug}`,
  settings: "/settings",
  stats: "/stats",
} as const;

export const protectedRoutePrefixes = [
  appRoutes.collection,
  appRoutes.dashboard,
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
