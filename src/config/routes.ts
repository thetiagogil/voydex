/* Mainline's parameter that opens New Play: a game slug, or `1` for none. */
export const NEW_PLAY_PARAM = "new";
/* With `?new=<game>`, the first partner New Play opens with picked. */
export const NEW_PLAY_PARTNER_PARAM = "partner";

/* Where a Play's pages live; the Play's id goes in the query. */
export const PLAY_PATH = "/app/plays/play";
/* Where a Plan opens in the Team Planner; the Plan's id goes in the query. */
export const PLAN_PATH = "/app/plans/plan";

const playHref = (
  view: string,
  playId: string,
  query: Record<string, string> = {},
) => `${PLAY_PATH}${view}?${new URLSearchParams({ id: playId, ...query })}`;

/* The front page's parts, by the id each one carries. */
export const frontPageSections = {
  howItWorks: "how-it-works",
  install: "install",
} as const;

/*
 * Every address. The website is `/` (with Privacy, Terms and the log-in
 * pages beside it); the app is everything under `/app`, the Codex included.
 */
export const appRoutes = {
  authCallback: "/auth/callback",
  codex: "/app/codex",
  codexGames: "/app/codex/games",
  codexPokemon: "/app/codex/pokemon",
  /*
   * A Pokémon's entry read in one version group, with a special form as
   * `&form=`: `/app/codex/pokemon/arcanine?game=swsh`. One page per species, so
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

    return `/app/codex/pokemon/${speciesSlug}?${query.toString()}`;
  },
  /* A Pokémon's entry in the version group it was introduced in. */
  codexPokemonSpecies: (speciesSlug: string) =>
    `/app/codex/pokemon/${speciesSlug}`,
  /* A version group's page, with one of its games picked in the version switch. */
  codexVersionGroup: (versionGroupSlug: string, gameSlug?: string) =>
    gameSlug
      ? `/app/codex/games/${versionGroupSlug}?version=${encodeURIComponent(gameSlug)}`
      : `/app/codex/games/${versionGroupSlug}`,
  codexVersionGroupPokedex: (versionGroupSlug: string, pokedexSlug: string) =>
    `/app/codex/games/${versionGroupSlug}/pokedexes/${pokedexSlug}`,
  /* Runs the device database with Sword / Shield and times it (local data). */
  deviceCheck: "/device-check",
  /* Ask for a password reset link. */
  forgotPassword: "/forgot-password",
  home: "/",
  /* How it works and Install: parts of the front page, linked by name. */
  howItWorks: `/#${frontPageSections.howItWorks}`,
  install: `/#${frontPageSections.install}`,
  login: "/login",
  /* Log in, then back to the app page that offered it. */
  loginFrom: (next: string) => `/login?${new URLSearchParams({ next })}`,
  /* Home, where the app opens: your Plays shelf, the team, latest moments. */
  mainline: "/app",
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

    return `/app?${query.toString()}`;
  },
  /* Mainline Home with one of your Plays on the meadow. */
  mainlineHomePlay: (playId: string) =>
    `/app?play=${encodeURIComponent(playId)}`,
  mainlineCollection: "/app/collection",
  /* The Collection's Games: every game, the ones you've played stamped. */
  /* The Collection's Favourites: every Pokémon you hearted in the Codex. */
  mainlineCollectionFavourites: "/app/collection?view=favourites",
  mainlineCollectionGames: "/app/collection?view=games",
  /* The Collection with one species' sheet open. */
  mainlineCollectionSpecies: (speciesSlug: string) =>
    `/app/collection?species=${encodeURIComponent(speciesSlug)}`,
  /* Your challenge rules and tags, kept for every Play and Plan. */
  mainlineLibrary: "/app/library",
  mainlineLibraryTab: (tab: "presets" | "rules" | "tags") =>
    `/app/library?tab=${tab}`,
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
      ? `/app/planner?vg=${encodeURIComponent(versionGroupSlug)}`
      : "/app/planner",
  mainlinePlans: "/app/plans",
  mainlinePlansArchived: "/app/plans?view=archived",
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
  mainlinePlays: "/app/plays",
  /* The Plays you archived, each with Restore. */
  mainlinePlaysArchived: "/app/plays?view=archived",
  mainlineStats: "/app/statistics",
  privacy: "/privacy",
  /* Choose a new password, from the reset link. */
  resetPassword: "/reset-password",
  settings: "/app/settings",
  terms: "/terms",
  /* The You page on phones: trainer card, Statistics, Collection, Settings. */
  you: "/app/you",
} as const;

/* The app's own pages: open to everyone, with your data on this device. */
export const isAppRoute = (pathname: string) =>
  pathname === appRoutes.mainline ||
  pathname.startsWith(`${appRoutes.mainline}/`);
