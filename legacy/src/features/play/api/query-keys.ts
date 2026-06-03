export const playKeys = {
  all: ["play"] as const,
  detail: (playId: string) => ["play", playId] as const,
  completion: (playId: string) => ["play", playId, "completion"] as const,
  pokemonTeam: (playId: string) =>
    ["play", playId, "pokemon-team"] as const,
  trackingCategories: (playId: string) =>
    ["play", playId, "tracking", "categories"] as const,
  trackingCategoryRoot: (playId: string) =>
    ["play", playId, "tracking", "category"] as const,
  trackingCategoryPrefix: (playId: string, categoryId: number) =>
    ["play", playId, "tracking", "category", categoryId] as const,
  trackingItems: (
    playId: string,
    categoryId: number,
    versionGroupId?: number,
  ) =>
    [
      "play",
      playId,
      "tracking",
      "category",
      categoryId,
      "vg",
      versionGroupId,
      "items",
    ] as const,
  decision: (playId: string, trackingItemId: number) =>
    ["play", playId, "tracking", "decision", trackingItemId] as const,
  decisionOptions: (trackingItemId: number) =>
    ["tracking", "decision", trackingItemId, "options"] as const,
  collectibles: (playId: string) =>
    ["play", playId, "collectibles"] as const,
  collectiblesSummary: (playId: string) =>
    ["play", playId, "collectibles", "summary"] as const,
  pokedex: (playId: string) => ["play", playId, "pokedex"] as const,
  pokedexSummary: (playId: string) =>
    ["play", playId, "pokedex", "summary"] as const,
};
