import {
  loadStoryPlacePokemonAction,
  type StoryPlacePokemonResult,
} from "../server/story-place-action";

/*
 * The Pokémon found at each place, kept once loaded (#199): reference data
 * that never changes while you look, so going back to a place is instant.
 * A place starts loading when you point at it, so it's mostly ready by the
 * time you open it. A failed load isn't kept, so opening it again retries.
 */
const loading = new Map<string, Promise<StoryPlacePokemonResult>>();
const loaded = new Map<string, StoryPlacePokemonResult>();

const keyOf = (playId: string, locationId: number) => `${playId}/${locationId}`;

/* What's already loaded for a place, to show at once; null until then. */
export const peekStoryPlacePokemon = (playId: string, locationId: number) =>
  loaded.get(keyOf(playId, locationId)) ?? null;

export const loadStoryPlacePokemon = (
  playId: string,
  locationId: number,
): Promise<StoryPlacePokemonResult> => {
  const key = keyOf(playId, locationId);
  const pending = loading.get(key);

  if (pending) {
    return pending;
  }

  const request = loadStoryPlacePokemonAction({ locationId, playId }).then(
    (result) => {
      if (result.status === "success") {
        loaded.set(key, result);
      } else {
        loading.delete(key);
      }

      return result;
    },
  );

  loading.set(key, request);

  return request;
};
