import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import { getEmptyPokemonDisplay } from "@/modules/mainline/features/play/detail/shared/data/pokemon-display-mappers";
import type {
  MainlinePokemonDisplayMetadata,
  MainlinePlayDetailData,
  MainlinePlayDetailRows,
} from "@/modules/mainline/features/play/types";
import type { MainlinePlayOverview } from "@/modules/mainline/shared/types/mainline.types";

export const buildMainlinePlayDetailData = ({
  displayByFormId,
  overview,
  rows,
}: {
  displayByFormId: Map<number, MainlinePokemonDisplayMetadata>;
  overview: MainlinePlayOverview;
  rows: MainlinePlayDetailRows;
}): MainlinePlayDetailData => {
  return {
    collectibleEntries: rows.collectibleEntries,
    completionSummary: rows.completionSummary,
    gameCoverImageUrl: rows.game ? getGameCoverImageUrl(rows.game) : null,
    milestoneCategories: rows.milestoneCategories,
    milestones: rows.milestones,
    overview,
    pokedexEntries: rows.pokedexEntries.map((entry) => ({
      ...entry,
      display: entry.display_form_id
        ? (displayByFormId.get(entry.display_form_id) ??
          getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    team: rows.team.map((pokemon) => ({
      ...pokemon,
      display: pokemon.form_id
        ? (displayByFormId.get(pokemon.form_id) ?? getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    teamPlanDetails: [],
    teamPlanSummary: null,
    timelineEvents: rows.timelineEvents,
  };
};
