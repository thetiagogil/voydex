import type {
  GameplayRow,
  ReferenceRow,
  ViewRow,
} from "@/shared/types/database-helpers";

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayGame = ReferenceRow<"games">;
export type MainlinePlayMilestone = ViewRow<"mainline_play_milestone_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayPokemonAttributes = ReferenceRow<"pokemon_attributes">;
export type MainlinePlayPokemonType = ReferenceRow<"types">;
export type MainlinePlayRegion = ReferenceRow<"regions">;
export type MainlinePlayTeamMemberRow = ViewRow<"mainline_play_team_detail">;
export type MainlinePlayTimelineEvent =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlinePlayTeamMember = MainlinePlayTeamMemberRow & {
  primaryType: MainlinePlayPokemonType | null;
  secondaryType: MainlinePlayPokemonType | null;
};

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;

export type MainlinePlayPageData = {
  coverImageUrl: string | null;
  game: MainlinePlayGame | null;
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  region: MainlinePlayRegion | null;
  rules: MainlineChallengeRule[];
  teamPreview: MainlinePlayTeamMember[];
  timelinePreview: MainlinePlayTimelineEvent[];
};

export type MainlinePlaysPageData = {
  plays: MainlinePlaySummary[];
};
