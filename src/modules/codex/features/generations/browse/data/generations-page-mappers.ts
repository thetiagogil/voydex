import type { GenerationsPageRows } from "@/modules/codex/features/generations/browse/server/generations-page-loaders";
import type {
  GenerationCard,
  GenerationsPageData,
} from "@/modules/codex/shared/types";

export const buildGenerationsPageData = (
  rows: GenerationsPageRows,
): GenerationsPageData => {
  const gamesByGeneration = new Map<number, number>();
  const speciesByGeneration = new Map<number, number>();

  for (const game of rows.games) {
    gamesByGeneration.set(
      game.generation_id,
      (gamesByGeneration.get(game.generation_id) ?? 0) + 1,
    );
  }

  for (const species of rows.species) {
    speciesByGeneration.set(
      species.introduced_generation_id,
      (speciesByGeneration.get(species.introduced_generation_id) ?? 0) + 1,
    );
  }

  const generations: GenerationCard[] = rows.generations.map((generation) => ({
    gameCount: gamesByGeneration.get(generation.id) ?? 0,
    generation,
    speciesCount: speciesByGeneration.get(generation.id) ?? 0,
  }));

  return { generations };
};
