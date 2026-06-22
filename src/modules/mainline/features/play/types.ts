import type {
  GameCard,
  GamePlatform,
  Generation,
  Platform,
  Region,
  Type,
  VersionGroup,
} from "@/modules/codex/types";
import type {
  MainlinePlayCollectibleDetail,
  MainlinePlayCompletionSummary,
  MainlinePlayMilestoneCategorySummary,
  MainlinePlayMilestoneDetail,
  MainlinePlayOverview,
  MainlinePlayPokedexDetail,
  MainlinePlayStatus,
  MainlinePlaySummary,
  MainlinePlayTeamDetail,
  MainlinePlayTimelineDetail,
  MainlineTeamPlanDetail,
  MainlineTeamPlanSummary,
} from "@/modules/mainline/shared/types/mainline.types";

export type MainlinePlayCardData = MainlinePlaySummary;

export type MainlinePlaysPageData = {
  plays: MainlinePlayCardData[];
};

export type MainlineCreateGameOption = GameCard;

export type CreateMainlinePlayPageData = {
  defaultStatusId: number | null;
  games: MainlineCreateGameOption[];
  statuses: MainlinePlayStatus[];
};

export type MainlineReferenceRows = {
  gamePlatforms: GamePlatform[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
};

export type MainlinePokemonDisplayMetadata = {
  imageUrl: string | null;
  primaryType: Type | null;
  secondaryType: Type | null;
};

export type MainlinePlayTeamPokemon = MainlinePlayTeamDetail & {
  display: MainlinePokemonDisplayMetadata;
};

export type MainlinePlayPokedexEntry = MainlinePlayPokedexDetail & {
  display: MainlinePokemonDisplayMetadata;
};

export type MainlinePlayDetailData = {
  collectibleEntries: MainlinePlayCollectibleDetail[];
  completionSummary: MainlinePlayCompletionSummary | null;
  gameCoverImageUrl: string | null;
  milestoneCategories: MainlinePlayMilestoneCategorySummary[];
  milestones: MainlinePlayMilestoneDetail[];
  overview: MainlinePlayOverview;
  pokedexEntries: MainlinePlayPokedexEntry[];
  team: MainlinePlayTeamPokemon[];
  teamPlanDetails: MainlineTeamPlanDetail[];
  teamPlanSummary: MainlineTeamPlanSummary | null;
  timelineEvents: MainlinePlayTimelineDetail[];
};
