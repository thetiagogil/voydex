import type { MainlinePlaySummary } from "@/modules/mainline/features/plays/shared/types";
import type {
  AbilityAttribute,
  Game,
  MoveAttribute,
  Nature,
  PokemonAttributes,
  PokemonEvolutionEdge,
  Region,
  Type,
  VersionGroup,
} from "@/modules/reference/types";
import type { GameplayRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayChallengeRuleLink =
  GameplayRow<"mainline_play_challenge_rules">;
export type MainlinePlayMilestone = ViewRow<"mainline_play_milestone_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMemberRow = ViewRow<"mainline_play_team_detail">;
export type MainlinePlayTeamPlanRow = ViewRow<"mainline_play_team_plan_detail">;
export type MainlinePlayTimelineEvent =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlinePlayPokemonType = Type;

export type MainlinePlayTeamMove = {
  attributes: MoveAttribute | null;
  id: number;
  name: string;
  slot: number;
  slug: string;
  type: Type | null;
};

export type MainlinePlayTeamMember = Omit<
  MainlinePlayTeamMemberRow,
  "moves"
> & {
  abilityEffectSummary: string | null;
  moves: MainlinePlayTeamMove[];
  natureDecreasedStat: string | null;
  natureIncreasedStat: string | null;
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
  abilityAttributes: AbilityAttribute[];
  attributes: PokemonAttributes[];
  evolutionEdges?: PokemonEvolutionEdge[];
  members: MainlinePlayTeamMemberRow[];
  moveAttributes: MoveAttribute[];
  natures: Nature[];
  types: Type[];
  validBallItemIds: number[];
  versionGroupId: number | null;
  versionGroups: VersionGroup[];
};

export type MainlinePlayTeamPlanFollowingState =
  | "following"
  | "following-with-changes"
  | "not-following"
  | "not-started";

export type MainlinePlayTeamPlanRelation =
  | "exact"
  | "alternate-form"
  | "earlier-evolution"
  | "later-evolution"
  | "branched-evolution";

export type MainlinePlayTeamPlanStatus =
  | "exact-match"
  | "build-differs"
  | MainlinePlayTeamPlanRelation
  | "retired"
  | "replaced"
  | "not-found";

export type MainlinePlayTeamPlanCriterion = {
  actual: string | null;
  matches: boolean | null;
  planned: string | null;
};

export type MainlinePlayTeamPlanMemberComparison = {
  build: {
    ability: MainlinePlayTeamPlanCriterion;
    gender: MainlinePlayTeamPlanCriterion;
    heldItem: MainlinePlayTeamPlanCriterion;
    moves: MainlinePlayTeamPlanCriterion;
    nature: MainlinePlayTeamPlanCriterion;
  };
  memberNotes: string | null;
  planMemberId: string;
  plannedFormId: number;
  plannedFormName: string;
  plannedFormSlug: string;
  plannedName: string;
  plannedSpeciesId: number;
  plannedSpriteSlug: string | null;
  playMember: MainlinePlayTeamMember | null;
  relation: MainlinePlayTeamPlanRelation | null;
  roleLabel: string | null;
  slot: number;
  status: MainlinePlayTeamPlanStatus;
};

export type MainlinePlayTeamPlanSummary = {
  comparisons: MainlinePlayTeamPlanMemberComparison[];
  exactMatchCount: number;
  foundCount: number;
  followingState: MainlinePlayTeamPlanFollowingState;
  linkedPlayCount: number;
  notes: string | null;
  offPlanCount: number;
  offPlanMemberNames: string[];
  planId: string;
  planName: string;
  statusName: string;
  targetCount: number;
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
  roster: MainlinePlayTeamMember[];
  rules: MainlineChallengeRule[];
  teamPreview: MainlinePlayTeamMember[];
  teamPlan: MainlinePlayTeamPlanSummary | null;
  teamTimelinePreview: MainlinePlayTimelineEvent[];
  timelinePreview: MainlinePlayTimelineEvent[];
};
