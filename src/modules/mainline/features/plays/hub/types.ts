import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type {
  Game,
  PokemonAttributes,
  Region,
  Type,
} from "@/modules/reference/types";
import type { GameplayRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayChallengeRuleLink =
  GameplayRow<"mainline_play_challenge_rules">;
export type MainlinePlayMilestone = ViewRow<"mainline_play_milestone_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMemberRow = ViewRow<"mainline_play_team_detail">;
export type MainlinePlayTimelineEvent =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlinePlayPokemonType = Type;

export type MainlinePlayTeamMember = MainlinePlayTeamMemberRow & {
  primaryType: Type | null;
  secondaryType: Type | null;
};

export type MainlinePlayGameContextRows = {
  game: Game | null;
  region: Region | null;
};

export type MainlinePlayRuleRows = {
  links: MainlinePlayChallengeRuleLink[];
  rules: MainlineChallengeRule[];
};

export type MainlinePlayTeamRows = {
  attributes: PokemonAttributes[];
  members: MainlinePlayTeamMemberRow[];
  types: Type[];
};

export type MainlinePlayMilestoneRows = {
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
};

export type MainlinePlayHubData = {
  coverImageUrl: string | null;
  game: Game | null;
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  region: Region | null;
  rules: MainlineChallengeRule[];
  teamPreview: MainlinePlayTeamMember[];
  timelinePreview: MainlinePlayTimelineEvent[];
};
