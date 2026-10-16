import type { PokedexPageFilters } from "@/modules/reference/types";

export const defaultPokedexPageFilters = {
  generation: "",
  query: "",
  type: "",
} satisfies PokedexPageFilters;

export const hasActivePokedexFilters = (filters: PokedexPageFilters) => {
  return Boolean(filters.query.trim() || filters.generation || filters.type);
};
