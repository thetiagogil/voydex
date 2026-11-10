import { appRoutes } from "@/config/routes";

/*
 * What a visitor picks on Start a Play: a game and, when they chose one, a
 * first partner. Start a Play keeps it in its address as `?game=` and
 * `?partner=`, and its Start button opens New Play on it.
 */
type StartIntent = {
  gameSlug: string;
  partnerSpeciesSlug?: string;
};

export const startIntentParams = {
  game: "game",
  partner: "partner",
} as const;

/*
 * Start a Play keeps its picks in the address without asking the server
 * again: `history.replaceState` (which Next.js mirrors into
 * `useSearchParams`), so a pick shows at once and a reload or a shared link
 * opens the same place.
 */
export const replaceStartAddress = (href: string) => {
  window.history.replaceState(null, "", href);
};

/*
 * Tapping one of Start a Play's first partners asks the shelf to jump to its
 * generation: the shelf (the reference module's) listens for this event, the
 * meadow (the site's) sends it, with the generation number as its detail.
 */
export const START_GENERATION_EVENT = "voydex:start-generation";

/* A generation number from the address (`?gen=`); undefined for anything else. */
export const readStartGeneration = (value: string | null | undefined) => {
  const generation = Number(value);

  return Number.isInteger(generation) && generation >= 1 && generation <= 99
    ? generation
    : undefined;
};

const slugPattern = /^[a-z0-9]+(?:-[a-z0-9]+)*$/;

const readSlug = (value: string | null | undefined): string | null =>
  typeof value === "string" && value.length <= 64 && slugPattern.test(value)
    ? value
    : null;

/* The pick in Start a Play's `game` and `partner` query; null when there is none. */
export const readStartIntentParams = (params: {
  game?: string | null;
  partner?: string | null;
}): StartIntent | null => {
  const gameSlug = readSlug(params.game);

  if (!gameSlug) {
    return null;
  }

  const partnerSpeciesSlug = readSlug(params.partner);

  return partnerSpeciesSlug ? { gameSlug, partnerSpeciesSlug } : { gameSlug };
};

/*
 * Start a Play, optionally on one generation's games (`?gen=`, as a meadow
 * partner opens it) or with a game, and maybe its partner, already picked
 * (`?game=`, `?partner=`).
 */
export const getStartPlayHref = ({
  gameSlug,
  generation,
  partnerSpeciesSlug,
}: {
  gameSlug?: string;
  generation?: number;
  partnerSpeciesSlug?: string;
} = {}) => {
  const params = new URLSearchParams();

  if (generation) {
    params.set("gen", String(generation));
  }
  if (gameSlug) {
    params.set(startIntentParams.game, gameSlug);

    if (partnerSpeciesSlug) {
      params.set(startIntentParams.partner, partnerSpeciesSlug);
    }
  }

  const query = params.toString();

  return query ? `${appRoutes.start}?${query}` : appRoutes.start;
};
