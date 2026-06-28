import type { Generation } from "@/modules/codex/shared/types";

export const getGenerationSortOrder = (
  generationId: number,
  generationById: Map<number, Generation>,
) => {
  return generationById.get(generationId)?.sort_order ?? generationId;
};
