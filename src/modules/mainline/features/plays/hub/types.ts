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
import type { GameMechanicsProfile } from "@/modules/reference/features/games/domain/game-mechanics";
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

export type MainlinePlayTeamPreviewRow = Pick<
  MainlinePlayTeamMemberRow,
  | "form_id"
  | "form_name"
  | "is_shiny"
  | "level"
  | "nickname"
  | "play_pokemon_id"
  | "roster_state_slug"
  | "slot"
  | "species_name"
  | "species_slug"
  | "sprite_slug"
>;

export type MainlinePlayTeamPreviewAttribute = Pick<
  PokemonAttributes,
  "form_id" | "generation_start_id" | "primary_type_id" | "secondary_type_id"
>;

export type MainlinePlayTeamPreviewType = Pick<Type, "id" | "name" | "slug">;

export type MainlinePlayTeamPreviewMember = MainlinePlayTeamPreviewRow & {
  primaryType: MainlinePlayTeamPreviewType | null;
  secondaryType: MainlinePlayTeamPreviewType | null;
};

export type MainlinePlayTeamPreviewRows = {
  attributes: MainlinePlayTeamPreviewAttribute[];
  members: MainlinePlayTeamPreviewRow[];
  types: MainlinePlayTeamPreviewType[];
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

export type MainlinePlayTeamPlanRows = {
  attributes: PokemonAttributes[];
  rows: MainlinePlayTeamPlanRow[];
  types: Type[];
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

export type MainlinePlayTeamPlanMoveTarget = {
  id: number;
  name: string;
  slot: number;
};

export type MainlinePlayTeamPlanMoveComparison = {
  actual: MainlinePlayTeamMove | null;
  matches: boolean | null;
  planned: MainlinePlayTeamPlanMoveTarget | null;
};

export type MainlinePlayTeamPlanMemberComparison = {
  build: {
    ability: MainlinePlayTeamPlanCriterion;
    gender: MainlinePlayTeamPlanCriterion;
    heldItem: MainlinePlayTeamPlanCriterion;
    nature: MainlinePlayTeamPlanCriterion;
  };
  memberNotes: string | null;
  moves: MainlinePlayTeamPlanMoveComparison[];
  planMemberId: string;
  plannedFormId: number;
  plannedFormName: string;
  plannedFormSlug: string;
  plannedName: string;
  plannedPrimaryType: Type | null;
  plannedSecondaryType: Type | null;
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
  mechanics: GameMechanicsProfile;
  notes: string | null;
  offPlanCount: number;
  offPlanMemberNames: string[];
  planId: string;
  planName: string;
  statusName: string;
  targetCount: number;
};

export type MainlinePlayTeamPlanPreview = {
  exactMatchCount: number;
  foundCount: number;
  followingState: MainlinePlayTeamPlanFollowingState;
  offPlanCount: number;
  planName: string;
  targetCount: number;
};

export type MainlinePlayMilestoneRows = {
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
};

export type MainlinePlayShellData = {
  coverImageUrl: string | null;
  game: Game | null;
  play: MainlinePlaySummary;
  region: Region | null;
  rules: MainlineChallengeRule[];
};

export type MainlinePlayOverviewData = {
  lastCompletedMilestone: MainlinePlayMilestone | null;
  nextMilestone: MainlinePlayMilestone | null;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  teamPreview: MainlinePlayTeamPreviewMember[];
  timelinePreview: MainlinePlayTimelineEvent[];
};

export type MainlinePlayTeamOverviewData = {
  mechanics: GameMechanicsProfile;
  play: MainlinePlaySummary;
  roster: MainlinePlayTeamMember[];
  teamPlan: MainlinePlayTeamPlanPreview | null;
  teamTimelinePreview: MainlinePlayTimelineEvent[];
};

export type MainlinePlayTeamPlanData = {
  teamPlan: MainlinePlayTeamPlanSummary | null;
};
