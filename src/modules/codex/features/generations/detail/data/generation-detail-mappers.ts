import type { GenerationDetailRows } from "@/modules/codex/features/generations/detail/server/generation-detail-loaders";
import { byId } from "@/modules/codex/shared/data/reference-data-utils";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import type { GenerationDetailData } from "@/modules/codex/shared/types";

export const buildGenerationDetailData = (
  rows: GenerationDetailRows,
): GenerationDetailData => {
  const regionById = byId(rows.regions);
  const versionGroupById = byId(rows.versionGroups);

  return {
    generation: rows.generation,
    games: rows.games.map((game) => ({
      coverImageUrl: getGameCoverImageUrl(game),
      game,
      region: regionById.get(game.region_id) ?? null,
      versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    })),
    introducedSpecies: rows.introducedSpecies,
    versionGroups: rows.versionGroups,
  };
};
