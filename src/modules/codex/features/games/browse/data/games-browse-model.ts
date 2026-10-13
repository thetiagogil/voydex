import type { GameKind } from "@/modules/reference/features/games/domain/game-kinds";
import type {
  GameCard,
  GamesPageFilters,
  Region,
} from "@/modules/reference/types";

export type GamesGroupBy = "generation" | "region";
export type GamesSortOrder = "newest" | "oldest";

export type GamesShelfSection = {
  games: GameCard[];
  key: string;
  label: string;
  /* "1996–1998 · 3 games · Kanto": the years, the count and, by generation, the regions. */
  summary: string;
};

export const emptyGamesPageFilters: GamesPageFilters = {
  kind: "",
  query: "",
};

const getSearchableGameText = (card: GameCard) => {
  return [
    card.game.name,
    card.game.slug,
    card.game.release_year,
    card.generation?.name,
    card.generation?.slug,
    card.region?.name,
    card.region?.slug,
    card.gameType?.name,
    card.gameType?.slug,
    card.versionGroup.name,
    card.versionGroup.slug,
  ]
    .filter(Boolean)
    .join(" ")
    .toLowerCase();
};

export const filterGames = (games: GameCard[], filters: GamesPageFilters) => {
  const normalizedQuery = filters.query.trim().toLowerCase();

  return games.filter((card) => {
    if (filters.kind && card.kind !== filters.kind) {
      return false;
    }

    return (
      !normalizedQuery || getSearchableGameText(card).includes(normalizedQuery)
    );
  });
};

export const hasActiveGamesFilters = (filters: GamesPageFilters) => {
  return filters.query.trim() !== "" || filters.kind !== "";
};

export const countGenerations = (games: GameCard[]) => {
  return new Set(games.map((card) => card.generation?.id ?? null)).size;
};

/* How many games each kind holds, for the filter pills. */
export const countGamesByKind = (games: GameCard[]) => {
  const counts = new Map<GameKind, number>();

  for (const card of games) {
    counts.set(card.kind, (counts.get(card.kind) ?? 0) + 1);
  }

  return counts;
};

const formatYearSpan = (games: GameCard[]) => {
  const years = games.map((card) => card.game.release_year);
  const first = Math.min(...years);
  const last = Math.max(...years);

  return first === last ? String(first) : `${first}–${last}`;
};

const summarizeSection = (games: GameCard[], groupBy: GamesGroupBy) => {
  const regionNames = [
    ...new Set(
      games.flatMap((card) => (card.region ? [card.region.name] : [])),
    ),
  ];

  return [
    formatYearSpan(games),
    `${games.length} ${games.length === 1 ? "game" : "games"}`,
    groupBy === "generation" && regionNames.length
      ? regionNames.join(", ")
      : null,
  ]
    .filter(Boolean)
    .join(" · ");
};

const getSectionIdentity = (card: GameCard, groupBy: GamesGroupBy) => {
  if (groupBy === "region") {
    return card.region
      ? { key: card.region.slug, label: card.region.name }
      : { key: "unknown", label: "Unknown region" };
  }

  return card.generation
    ? { key: card.generation.slug, label: card.generation.name }
    : { key: "unknown", label: "Unknown generation" };
};

/*
 * The shelf's sections. Games arrive in release order (generation, then
 * release year); by generation that order is kept, by region the regions
 * follow their own order. Newest first turns both the sections and the games
 * in them around.
 */
export const groupGamesIntoSections = ({
  games,
  groupBy,
  regions,
  sortOrder,
}: {
  games: GameCard[];
  groupBy: GamesGroupBy;
  regions: Region[];
  sortOrder: GamesSortOrder;
}): GamesShelfSection[] => {
  const sectionsByKey = new Map<string, Omit<GamesShelfSection, "summary">>();

  for (const card of games) {
    const identity = getSectionIdentity(card, groupBy);
    const section = sectionsByKey.get(identity.key) ?? {
      ...identity,
      games: [],
    };

    section.games.push(card);
    sectionsByKey.set(identity.key, section);
  }

  const regionOrder = new Map(
    regions.map((region) => [region.slug, region.sort_order]),
  );
  const sections = [...sectionsByKey.values()];

  if (groupBy === "region") {
    sections.sort(
      (first, second) =>
        (regionOrder.get(first.key) ?? Number.MAX_SAFE_INTEGER) -
        (regionOrder.get(second.key) ?? Number.MAX_SAFE_INTEGER),
    );
  }

  const orderedSections =
    sortOrder === "newest"
      ? sections
          .reverse()
          .map((section) => ({ ...section, games: section.games.reverse() }))
      : sections;

  return orderedSections.map((section) => ({
    ...section,
    summary: summarizeSection(section.games, groupBy),
  }));
};
