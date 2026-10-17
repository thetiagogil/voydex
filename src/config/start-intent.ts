import type { PublicGame } from "@/config/public-art";
import { appRoutes } from "@/config/routes";

/*
 * What a visitor picked on Start a Play before having an account: a game and,
 * when they chose one, a first partner. It travels as `?game=` and
 * `?partner=` through Sign up, Log in and Check your email, and is stored on
 * the account as user metadata under `voydex_intent`, so it survives the
 * email link being opened on another device.
 *
 * The auth pages write it; Mainline reads it (with `auth.getUser()`, not the
 * JWT claims, which only catch up on the next refresh) to start the Play, then
 * clears it. It is only a wish: whoever starts the Play validates the game and
 * the partner again.
 */
export type StartIntent = {
  gameSlug: string;
  partnerSpeciesSlug?: string;
};

export const START_INTENT_METADATA_KEY = "voydex_intent";

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

const readSlug = (value: unknown): string | null =>
  typeof value === "string" && value.length <= 64 && slugPattern.test(value)
    ? value
    : null;

/* An intent from stored metadata or a parsed body; null for anything else. */
export const parseStartIntent = (value: unknown): StartIntent | null => {
  if (!value || typeof value !== "object") {
    return null;
  }

  const record = value as Record<string, unknown>;
  const gameSlug = readSlug(record.gameSlug);

  if (!gameSlug) {
    return null;
  }

  const partnerSpeciesSlug = readSlug(record.partnerSpeciesSlug);

  return partnerSpeciesSlug ? { gameSlug, partnerSpeciesSlug } : { gameSlug };
};

type IntentQueryValue = string | string[] | null | undefined;

/* An intent from a page's `game` and `partner` query; null when there is none. */
export const readStartIntentParams = (params: {
  game?: IntentQueryValue;
  partner?: IntentQueryValue;
}): StartIntent | null =>
  parseStartIntent({
    gameSlug: params.game,
    partnerSpeciesSlug: params.partner,
  });

/* Reads the intent a form carries in its hidden `game` and `partner` fields. */
export const readStartIntentFormData = (formData: FormData) =>
  readStartIntentParams({
    game: formData.get(startIntentParams.game)?.toString(),
    partner: formData.get(startIntentParams.partner)?.toString(),
  });

/* Adds an intent to a link's query. */
export const setStartIntentParams = (
  params: URLSearchParams,
  intent: StartIntent | null | undefined,
) => {
  if (!intent) {
    return params;
  }

  params.set(startIntentParams.game, intent.gameSlug);

  if (intent.partnerSpeciesSlug) {
    params.set(startIntentParams.partner, intent.partnerSpeciesSlug);
  }

  return params;
};

/* A first partner as the auth pages show it. */
export type StartIntentPokemon = {
  imageUrl: string | null;
  name: string;
  speciesSlug: string;
};

/*
 * The intent as the auth pages show it, resolved from the reference catalogue
 * by the route: the game (its full name, such as "Pokémon Sword"), the name
 * without "Pokémon " for sentences, the partner when one was picked, and the
 * game's first partners for the Pokémon peeking over the card.
 */
export type StartIntentPreview = {
  game: PublicGame;
  gameShortName: string;
  partner: StartIntentPokemon | null;
  starters: readonly StartIntentPokemon[];
};

/*
 * Start a Play, optionally on one generation's games (`?gen=`, as a meadow
 * partner opens it) or with a game, and maybe its partner, already picked
 * (`?game=`, `?partner=`, as Change on the intent card opens it).
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
    setStartIntentParams(params, { gameSlug, partnerSpeciesSlug });
  }

  const query = params.toString();

  return query ? `${appRoutes.start}?${query}` : appRoutes.start;
};

/*
 * Turns an intent into its preview from the reference catalogue; null when
 * the game (or the partner, for that game) isn't one Voydex knows. Routes
 * pass it to the auth pages, which can't read a module themselves.
 */
export type ResolveStartIntent = (
  intent: StartIntent,
) => Promise<StartIntentPreview | null>;
