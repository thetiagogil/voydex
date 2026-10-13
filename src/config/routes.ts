export const appRoutes = {
  appEntry: "/app",
  authCallback: "/auth/callback",
  /* After sign-up without a session: confirm the email, resend or change it. */
  checkEmail: "/check-email",
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
  /* Ask for a password reset link. */
  forgotPassword: "/forgot-password",
  health: "/api/health",
  home: "/",
  intro: "/intro",
  login: "/login",
  /* Mainline Home: your Plays shelf, the team on the meadow, latest moments. */
  mainline: "/mainline",
  mainlineCollection: "/mainline/collection",
  mainlinePlan: (planId: string) => `/mainline/plans/${planId}`,
  /* The Team Planner on a blank Plan, optionally for one version group. */
  mainlinePlanNew: (versionGroupSlug?: string) =>
    versionGroupSlug
      ? `/mainline/plans/new?vg=${encodeURIComponent(versionGroupSlug)}`
      : "/mainline/plans/new",
  mainlinePlans: "/mainline/plans",
  mainlinePlay: (playId: string) => `/mainline/plays/${playId}`,
  mainlinePlayHistory: (playId: string) => `/mainline/plays/${playId}/history`,
  /* New Play, optionally with its game already picked. */
  mainlinePlayNew: (gameSlug?: string) =>
    gameSlug
      ? `/mainline/plays/new?game=${encodeURIComponent(gameSlug)}`
      : "/mainline/plays/new",
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
  /*
   * The Roster with the Add Pokémon sheet open, optionally on one species
   * (and form) already picked, as the Codex's "Add to a Play" opens it.
   */
  mainlinePlayTeamAdd: (
    playId: string,
    speciesSlug?: string,
    formSlug?: string,
  ) => {
    const query = new URLSearchParams({ add: speciesSlug ?? "" });

    if (formSlug) {
      query.set("form", formSlug);
    }

    return `/mainline/plays/${playId}/team?${query.toString()}`;
  },
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
  mainlineStats: "/mainline/stats",
  privacy: "/privacy",
  /* Choose a new password, from the reset link. */
  resetPassword: "/reset-password",
  settings: "/settings",
  /* Start a Play: pick a game and a partner before signing up. */
  start: "/start",
  terms: "/terms",
  /* First run after sign-up: name and icon. */
  welcome: "/welcome",
  /* The You page on phones: trainer card, Statistics, Collection, Settings. */
  you: "/you",
} as const;

export const protectedRoutePrefixes = [
  appRoutes.mainline,
  appRoutes.settings,
  appRoutes.welcome,
  appRoutes.you,
] as const;

export const isProtectedRoute = (pathname: string) => {
  return protectedRoutePrefixes.some(
    (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
  );
};
