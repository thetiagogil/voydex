/* Mainline's parameter that opens New Play: a game slug, or `1` for none. */
export const NEW_PLAY_PARAM = "new";
/* With `?new=<game>`, the first partner New Play opens with picked. */
export const NEW_PLAY_PARTNER_PARAM = "partner";

/* Where a Play's pages live; the Play's id goes in the query. */
export const PLAY_PATH = "/mainline/plays/play";
/* Where a Plan opens in the Team Planner; the Plan's id goes in the query. */
export const PLAN_PATH = "/mainline/plans/plan";

const playHref = (
  view: string,
  playId: string,
  query: Record<string, string> = {},
) => `${PLAY_PATH}${view}?${new URLSearchParams({ id: playId, ...query })}`;

export const appRoutes = {
  appEntry: "/app",
  authCallback: "/auth/callback",
  /* After sign-up without a session: confirm the email, resend or change it. */
  checkEmail: "/check-email",
  codex: "/codex",
  codexGames: "/codex/games",
  codexPokemon: "/codex/pokemon",
  /*
   * A Pokémon's entry read in one version group, with a special form as
   * `&form=`: `/codex/pokemon/arcanine?game=swsh`. One page per species, so
   * the group is in the query.
   */
  codexPokemonEntry: (
    versionGroupSlug: string,
    speciesSlug: string,
    formSlug?: string,
  ) => {
    const query = new URLSearchParams({ game: versionGroupSlug });

    if (formSlug) {
      query.set("form", formSlug);
    }

    return `/codex/pokemon/${speciesSlug}?${query.toString()}`;
  },
  /* A Pokémon's entry in the version group it was introduced in. */
  codexPokemonSpecies: (speciesSlug: string) => `/codex/pokemon/${speciesSlug}`,
  /* A version group's page, with one of its games picked in the version switch. */
  codexVersionGroup: (versionGroupSlug: string, gameSlug?: string) =>
    gameSlug
      ? `/codex/games/${versionGroupSlug}?version=${encodeURIComponent(gameSlug)}`
      : `/codex/games/${versionGroupSlug}`,
  codexVersionGroupPokedex: (versionGroupSlug: string, pokedexSlug: string) =>
    `/codex/games/${versionGroupSlug}/pokedexes/${pokedexSlug}`,
  /* Runs the device database with Sword / Shield and times it (local data). */
  deviceCheck: "/device-check",
  /* Ask for a password reset link. */
  forgotPassword: "/forgot-password",
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
  /* The Collection's Games: every game, the ones you've played stamped. */
  /* The Collection's Favourites: every Pokémon you hearted in the Codex. */
  mainlineCollectionFavourites: "/mainline/collection?view=favourites",
  mainlineCollectionGames: "/mainline/collection?view=games",
  /* The Collection with one species' sheet open. */
  mainlineCollectionSpecies: (speciesSlug: string) =>
    `/mainline/collection?species=${encodeURIComponent(speciesSlug)}`,
  /* Your challenge rules and tags, kept for every Play and Plan. */
  mainlineLibrary: "/mainline/library",
  mainlineLibraryTab: (tab: "presets" | "rules" | "tags") =>
    `/mainline/library?tab=${tab}`,
  /*
   * A Plan in the Team Planner, optionally read in another version group.
   * Plans live on the device, so the id is in the query: one page for all.
   */
  mainlinePlan: (planId: string, versionGroupSlug?: string) =>
    versionGroupSlug
      ? `${PLAN_PATH}?id=${encodeURIComponent(planId)}&vg=${encodeURIComponent(versionGroupSlug)}`
      : `${PLAN_PATH}?id=${encodeURIComponent(planId)}`,
  /* The Team Planner on a blank Plan, optionally for one version group. */
  mainlinePlanNew: (versionGroupSlug?: string) =>
    versionGroupSlug
      ? `/mainline/plans/new?vg=${encodeURIComponent(versionGroupSlug)}`
      : "/mainline/plans/new",
  mainlinePlans: "/mainline/plans",
  mainlinePlansArchived: "/mainline/plans?view=archived",
  /*
   * A Play's pages. Plays live on the device, so the id is in the query
   * (`?id=`): one page serves every Play.
   */
  mainlinePlay: (playId: string) => playHref("", playId),
  mainlinePlayHistory: (playId: string) => playHref("/history", playId),
  /* One moment in a Play's History: the page scrolls to it and marks it. */
  mainlinePlayHistoryMoment: (playId: string, eventId: string) =>
    `${playHref("/history", playId)}#moment-${eventId}`,
  mainlinePlayProgress: (playId: string) => playHref("/progress", playId),
  mainlinePlayProgressCollectibles: (playId: string) =>
    playHref("/progress/collectibles", playId),
  mainlinePlayProgressPokedex: (playId: string) =>
    playHref("/progress/pokedex", playId),
  mainlinePlayProgressStory: (playId: string) =>
    playHref("/progress/story", playId),
  mainlinePlayProgressStoryRecord: (playId: string, milestoneId: number) =>
    playHref("/progress/story", playId, { record: String(milestoneId) }),
  mainlinePlaySettings: (playId: string) => playHref("/settings", playId),
  mainlinePlayTeam: (playId: string) => playHref("/team", playId),
  /*
   * The Roster with the Add Pokémon sheet open, optionally on one species
   * (and form) already picked.
   */
  mainlinePlayTeamAdd: (
    playId: string,
    speciesSlug?: string,
    formSlug?: string,
  ) =>
    playHref("/team", playId, {
      add: speciesSlug ?? "",
      ...(formSlug ? { form: formSlug } : {}),
    }),
  /* The Roster with one Pokémon selected, as an Overview sticker opens it. */
  mainlinePlayTeamPokemon: (playId: string, playPokemonId: string) =>
    playHref("/team", playId, { pokemon: playPokemonId }),
  mainlinePlayTeamAnalysis: (playId: string) =>
    playHref("/team/analysis", playId),
  mainlinePlayTeamPlan: (playId: string) => playHref("/team/plan", playId),
  mainlinePlays: "/mainline/plays",
  /* The Plays you archived, each with Restore. */
  mainlinePlaysArchived: "/mainline/plays?view=archived",
  mainlineStats: "/mainline/stats",
  privacy: "/privacy",
  /* Choose a new password, from the reset link. */
  resetPassword: "/reset-password",
  settings: "/settings",
  /* Start a Play: pick a game and a partner, then New Play opens on them. */
  start: "/start",
  terms: "/terms",
  /* First run after sign-up: name and icon. */
  welcome: "/welcome",
  /* The You page on phones: trainer card, Statistics, Collection, Settings. */
  you: "/you",
} as const;

/* The app's own pages: open to everyone, with your data on this device. */
const appRoutePrefixes = [
  appRoutes.mainline,
  appRoutes.settings,
  appRoutes.welcome,
  appRoutes.you,
] as const;

export const isAppRoute = (pathname: string) => {
  return appRoutePrefixes.some(
    (prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`),
  );
};
