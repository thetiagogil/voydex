import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";
import type { PokemonForm } from "@/modules/reference/types";

export type StoryMilestoneSource = Pick<
  MainlinePlayMilestone,
  | "category_id"
  | "category_name"
  | "category_slug"
  | "completed_at"
  | "completion_event_id"
  | "completion_event_team_snapshot_count"
  | "decision_options"
  | "description"
  | "is_completed"
  | "is_required_for_completion"
  | "milestone_id"
  | "milestone_name"
  | "milestone_type_name"
  | "milestone_type_slug"
  | "prerequisites"
  | "progress_notes"
  | "selected_decision_option_id"
  | "selected_decision_option_label"
  | "snapshot_policy_slug"
  | "sort_order"
  | "version_group_id"
>;

export type StoryCategorySource = Pick<
  MainlinePlayMilestoneCategorySummary,
  | "category_id"
  | "category_name"
  | "category_slug"
  | "category_sort_order"
  | "completed_milestone_count"
  | "completed_required_milestone_count"
  | "content_scope_sort_order"
  | "milestone_count"
  | "required_milestone_count"
  | "version_group_id"
  | "version_group_name"
  | "version_group_slug"
>;

export type StorySnapshotEventSource = Pick<
  MainlinePlayTimelineEvent,
  "milestone_id" | "team_snapshots"
>;

export type StoryDecisionOption = {
  formName: string | null;
  id: number;
  imageUrl: string | null;
  label: string;
  speciesName: string | null;
};

export type StoryMilestonePrerequisite = {
  completed: boolean;
  id: number;
  kindName: string;
  kindSlug: string;
  name: string;
};

export type StoryTeamSnapshotMember = {
  formName: string | null;
  imageUrl: string | null;
  isShiny: boolean;
  position: number;
  speciesName: string;
};

export type StoryMilestone = {
  blockingPrerequisites: StoryMilestonePrerequisite[];
  categoryId: number;
  completedAt: string | null;
  decisionOptions: StoryDecisionOption[];
  description: string | null;
  hasHistoryEvent: boolean;
  id: number;
  incompletionImpact: StoryMilestoneIncompletionImpact;
  isCompleted: boolean;
  isAvailable: boolean;
  isRequired: boolean;
  name: string;
  notes: string | null;
  prerequisites: StoryMilestonePrerequisite[];
  selectedDecisionId: number | null;
  selectedDecisionLabel: string | null;
  sequence: number;
  snapshotCount: number;
  snapshotMembers: StoryTeamSnapshotMember[];
  snapshotPolicySlug: string;
  typeName: string;
  typeSlug: string;
};

export type StoryMilestoneIncompletionImpact = {
  affectedMilestones: {
    id: number;
    name: string;
  }[];
  decisionCount: number;
  historyEventCount: number;
  noteCount: number;
  snapshotCount: number;
};

export type StorySection = {
  completedCount: number;
  completedRequiredCount: number;
  id: number;
  milestones: StoryMilestone[];
  name: string;
  requiredCount: number;
  slug: string;
  totalCount: number;
};

export type StoryScope = {
  completedCount: number;
  completedRequiredCount: number;
  id: number;
  isBase: boolean;
  label: string;
  name: string;
  requiredCount: number;
  sections: StorySection[];
  slug: string;
  totalCount: number;
};

export type MainlinePlayProgressStoryData = {
  categories: StoryCategorySource[];
  decisionForms: Pick<PokemonForm, "id" | "sprite_slug">[];
  milestones: StoryMilestoneSource[];
  snapshotEvents: StorySnapshotEventSource[];
};

export type StoryProgressModel = {
  completedRequiredCount: number;
  defaultMilestoneId: number | null;
  lastCompletedMilestone: StoryMilestone | null;
  nextMilestone: StoryMilestone | null;
  requiredCount: number;
  scopes: StoryScope[];
};
