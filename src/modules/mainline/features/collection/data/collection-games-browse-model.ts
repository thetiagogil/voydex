import type { CollectionGame } from "@/modules/mainline/features/collection/data/collection-games-model";

export type CollectionGameKind = "all" | "completed" | "playing";
export type CollectionGameSort = "name" | "played" | "release";

export type CollectionGameFilters = {
  /* A generation's id, or "" for every generation. */
  generation: string;
  kind: CollectionGameKind;
  query: string;
  sort: CollectionGameSort;
};

/* Most played first, as the shelf has always opened. */
export const defaultCollectionGameFilters: CollectionGameFilters = {
  generation: "",
  kind: "all",
  query: "",
  sort: "played",
};

export const collectionGameKindLabels: Record<CollectionGameKind, string> = {
  all: "All",
  completed: "Completed",
  playing: "Playing now",
};

export const collectionGameSortLabels: Record<CollectionGameSort, string> = {
  name: "Name",
  played: "Most played",
  release: "Release order",
};

const hasPlayIn = (entry: CollectionGame, statusSlug: string) =>
  entry.plays.some(
    (each) => !each.archived && each.play.statusSlug === statusSlug,
  );

const kindMatchers: Record<
  CollectionGameKind,
  (entry: CollectionGame) => boolean
> = {
  all: () => true,
  /* A Play of it finished, archived ones included: you still finished it. */
  completed: (entry) =>
    entry.plays.some((each) => each.play.statusSlug === "completed"),
  playing: (entry) => hasPlayIn(entry, "playing"),
};

export const countCollectionGameKinds = (games: CollectionGame[]) =>
  Object.fromEntries(
    (Object.keys(kindMatchers) as CollectionGameKind[]).map((kind) => [
      kind,
      games.filter(kindMatchers[kind]).length,
    ]),
  ) as Record<CollectionGameKind, number>;

/* How many filters are set beyond search and sort (the toolbar's count). */
export const countActiveCollectionGameFilters = (
  filters: CollectionGameFilters,
) => (filters.kind === "all" ? 0 : 1) + (filters.generation ? 1 : 0);

export const hasActiveCollectionGameFilters = (
  filters: CollectionGameFilters,
) =>
  countActiveCollectionGameFilters(filters) > 0 ||
  Boolean(filters.query.trim());

const normalizeQuery = (value: string) => value.trim().toLocaleLowerCase("en");

/*
 * The shelf's games through the toolbar. `games` comes most played first,
 * then in release order, so Most played keeps that order and Release order
 * reads the release year, then the catalogue's order.
 */
export const filterAndSortCollectionGames = (
  games: CollectionGame[],
  filters: CollectionGameFilters,
) => {
  const query = normalizeQuery(filters.query);
  const generationId = filters.generation ? Number(filters.generation) : null;
  const shown = games
    .filter(kindMatchers[filters.kind])
    .filter(
      ({ game }) =>
        generationId === null || game.generation.id === generationId,
    )
    .filter(
      ({ game }) =>
        !query ||
        [game.name, game.regionName ?? ""].some((text) =>
          normalizeQuery(text).includes(query),
        ),
    );

  if (filters.sort === "name") {
    return shown.toSorted((left, right) =>
      left.game.shortName.localeCompare(right.game.shortName),
    );
  }

  if (filters.sort === "release") {
    return shown.toSorted(
      (left, right) =>
        left.game.releaseYear - right.game.releaseYear ||
        left.game.id - right.game.id,
    );
  }

  return shown;
};
