import type { PokedexPageFilters } from "@/modules/codex/shared/types";

export const defaultPokedexPageFilters = {
  category: "all",
  generation: "",
  query: "",
  type: "",
} satisfies PokedexPageFilters;

export const hasActivePokedexFilters = (filters: PokedexPageFilters) => {
  return Boolean(
    filters.query.trim() ||
    filters.category !== "all" ||
    filters.generation ||
    filters.type,
  );
};
