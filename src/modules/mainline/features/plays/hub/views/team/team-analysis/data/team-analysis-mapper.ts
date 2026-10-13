import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

import type {
  MainlinePlayTeamAnalysisData,
  MainlinePlayTeamAnalysisRows,
} from "../types";
import { buildTeamAnalysisModel } from "./team-analysis-model";

export const buildMainlinePlayTeamAnalysisData = ({
  play,
  rows,
}: {
  play: MainlinePlaySummary;
  rows: MainlinePlayTeamAnalysisRows;
}): MainlinePlayTeamAnalysisData => {
  const mechanics = resolveGameMechanics({
    gameId: play.game_id,
    generationId: play.generation_id,
    versionGroupId: play.version_group_id,
  });
  const members = buildMainlinePlayTeamPreview(rows.teamRows);

  return {
    analysis: rows.generation
      ? buildTeamAnalysisModel({
          generation: rows.generation,
          mechanics,
          members,
          play,
          types: rows.teamRows.types,
        })
      : null,
  };
};
