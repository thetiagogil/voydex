import type {
  MainlinePlaySummary,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/shared/types";
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
import type { BadgeCase } from "@/modules/mainline/features/plays/hub/views/overview/data/badge-case-mapper";
import type { StoryMilestone } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/types";
import type {
  OverviewAheadMilestone,
  OverviewMilestone,
} from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import type { OverviewFreshPlay } from "@/modules/mainline/features/plays/hub/views/overview/data/partner-choice-mapper";
import type { PlayMomentContextEntries } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { GameplayRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayChallengeRuleLink =
  GameplayRow<"mainline_play_challenge_rules">;
export type MainlinePlayMilestone = ViewRow<"mainline_play_milestone_detail">;
export type MainlinePlayMilestoneCategorySummary =
  ViewRow<"mainline_play_milestone_category_summary">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMemberRow = ViewRow<"mainline_play_team_detail">;
export type MainlinePlayTeamPlanRow = ViewRow<"mainline_play_team_plan_detail">;

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
  /* Recorded in the Play, but not matched to any of the Plan's targets. */
  offPlanMembers: MainlinePlayTeamMember[];
  planId: string;
  planName: string;
  statusName: string;
  targetCount: number;
};

export type MainlinePlayShellData = {
  collectiblesAvailable: boolean;
  coverImageUrl: string | null;
  game: Game | null;
  play: MainlinePlaySummary;
  region: Region | null;
  rules: MainlineChallengeRule[];
  /* The Play's tags by name, shown in Play details. */
  tags: string[];
};

export type MainlinePlayOverviewData = {
  aheadMilestones: OverviewAheadMilestone[];
  badgeCase: BadgeCase | null;
  /* A brand-new Play opens on its partner choice and first steps. */
  freshPlay: OverviewFreshPlay | null;
  nextMilestone: OverviewMilestone | null;
  /*
   * The next milestone as Story's record form needs it, read only when it
   * is a choice (Choose Starter), so Overview records it in place.
   */
  nextDecisionMilestone: StoryMilestone | null;
  nextMilestonePosition: { sequence: number; total: number } | null;
  overview: MainlinePlayOverview | null;
  play: MainlinePlaySummary;
  teamPreview: MainlinePlayTeamPreviewMember[];
  timelinePreview: MainlinePlayTimelineEvent[];
};

export type MainlinePlayTeamRosterData = {
  mechanics: GameMechanicsProfile;
  play: MainlinePlaySummary;
  roster: MainlinePlayTeamMember[];
};

/* One of your Plans this Play could follow: same game and version group. */
export type MainlinePlayFollowablePlan = {
  memberCount: number;
  name: string;
  planId: string;
  updatedAt: string | null;
};

export type MainlinePlayTeamPlanData = {
  /* Your other Plans for this game, for "Follow a different Plan". */
  followablePlans: MainlinePlayFollowablePlan[];
  teamPlan: MainlinePlayTeamPlanSummary | null;
  versionGroupSlug: string | null;
};

export type MainlinePlayHistoryData = {
  /* Badge and form types for the moments' medallions. */
  context: PlayMomentContextEntries;
  events: MainlinePlayTimelineEvent[];
  play: MainlinePlaySummary;
};
