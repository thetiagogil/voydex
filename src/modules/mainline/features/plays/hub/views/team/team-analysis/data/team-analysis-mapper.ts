import { buildMainlinePlayTeamPreview } from "@/modules/mainline/features/plays/hub/data/team-member-mappers";
import type { MainlinePlayLevelCap } from "@/modules/mainline/features/plays/hub/types";
import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import { resolveGameMechanics } from "@/modules/reference/features/games/domain/game-mechanics";

import type {
  MainlinePlayTeamAnalysisData,
  MainlinePlayTeamAnalysisRows,
} from "../types";
import {
  buildStoryMatchupsModel,
  type StoryMatchupsRows,
} from "./story-matchups-model";
import { buildTeamAnalysisModel } from "./team-analysis-model";

export const buildMainlinePlayTeamAnalysisData = ({
  levelCap = null,
  play,
  rows,
  storyRows = null,
}: {
  /* Given for the Overall reading only. */
  levelCap?: MainlinePlayLevelCap | null;
  play: MainlinePlaySummary;
  rows: MainlinePlayTeamAnalysisRows;
  /* Given for the Story matchups reading only. */
  storyRows?: StoryMatchupsRows | null;
}): MainlinePlayTeamAnalysisData => {
  const mechanics = resolveGameMechanics({
    gameId: play.game_id,
    generationId: play.generation_id,
    versionGroupId: play.version_group_id,
  });
  const members = buildMainlinePlayTeamPreview(rows.teamRows);
  const analysis = rows.generation
    ? buildTeamAnalysisModel({
        generation: rows.generation,
        levelCap,
        mechanics,
        members,
        play,
        types: rows.teamRows.types,
      })
    : null;

  return {
    analysis,
    reading: storyRows ? "story" : "overall",
    storyMatchups:
      storyRows && rows.generation
        ? buildStoryMatchupsModel({
            chosenChoiceKeys: storyRows.chosenChoiceKeys,
            generationOrder: rows.generation.sort_order,
            mechanics,
            members: analysis?.members ?? [],
            opponentGameIdById: storyRows.opponentGameIdById,
            orderedMilestones: storyRows.orderedMilestones,
            partyRows: storyRows.partyRows,
            playGameId: play.game_id,
            snapshotsByMilestoneId: storyRows.snapshotsByMilestoneId,
            types: rows.teamRows.types,
          })
        : null,
  };
};
