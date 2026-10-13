/* Mainline's parameter that opens New Play: a game slug, or `1` for none. */
export const NEW_PLAY_PARAM = "new";
/* With `?new=<game>`, the first partner New Play opens with picked. */
export const NEW_PLAY_PARTNER_PARAM = "partner";

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
  /*
   * Mainline Home with New Play open over it, optionally with its game (and
   * that game's partner) already picked. The dialog drops both parameters
   * from the address once open.
   */
  mainlineNewPlay: (gameSlug?: string, partnerSpeciesSlug?: string) => {
    const query = new URLSearchParams({ [NEW_PLAY_PARAM]: gameSlug || "1" });

    if (gameSlug && partnerSpeciesSlug) {
      query.set(NEW_PLAY_PARTNER_PARAM, partnerSpeciesSlug);
    }

    return `/mainline?${query.toString()}`;
  },
  /* Mainline Home with one of your Plays on the meadow. */
  mainlineHomePlay: (playId: string) =>
    `/mainline?play=${encodeURIComponent(playId)}`,
  mainlineCollection: "/mainline/collection",
  /* The Collection with one species' sheet open. */
  mainlineCollectionSpecies: (speciesSlug: string) =>
    `/mainline/collection?species=${encodeURIComponent(speciesSlug)}`,
  /* A Plan in the Team Planner, optionally read in another version group. */
  mainlinePlan: (planId: string, versionGroupSlug?: string) =>
    versionGroupSlug
      ? `/mainline/plans/${planId}?vg=${encodeURIComponent(versionGroupSlug)}`
      : `/mainline/plans/${planId}`,
  /* The Team Planner on a blank Plan, optionally for one version group. */
  mainlinePlanNew: (versionGroupSlug?: string) =>
    versionGroupSlug
      ? `/mainline/plans/new?vg=${encodeURIComponent(versionGroupSlug)}`
      : "/mainline/plans/new",
  mainlinePlans: "/mainline/plans",
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
  /* Team analysis, on its Overall reading unless Story matchups is asked for. */
  mainlinePlayTeamAnalysis: (playId: string, reading?: "story") =>
    reading
      ? `/mainline/plays/${playId}/team/analysis?reading=${reading}`
      : `/mainline/plays/${playId}/team/analysis`,
  mainlinePlayTeamPlan: (playId: string) =>
    `/mainline/plays/${playId}/team/plan`,
  mainlinePlays: "/mainline/plays",
  /* The Plays you archived, each with Restore. */
  mainlinePlaysArchived: "/mainline/plays?view=archived",
  mainlineStats: "/mainline/stats",
  privacy: "/privacy",
  /* Choose a new password, from the reset link. */
  resetPassword: "/reset-password",
  settings: "/settings",
  /* Your own rows as JSON, for Settings' Download. */
  settingsExport: "/settings/export",
  /* Start a Play: pick a game and a partner before signing up. */
  start: "/start",
  terms: "/terms",
  /* First run after sign-up: name and icon. */
  welcome: "/welcome",
  /* The You page on phones: trainer card, Statistics, Collection, Settings. */
  you: "/you",
} as const;

const protectedRoutePrefixes = [
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
