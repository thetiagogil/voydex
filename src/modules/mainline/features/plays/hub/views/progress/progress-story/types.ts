import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import type { PlayStamp } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonForm } from "@/modules/reference/types";

export type StoryMilestoneSource = Pick<
  MainlinePlayMilestone,
  | "badge_refs"
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
  | "completed_required_milestone_count"
  | "content_scope_sort_order"
  | "is_open_world"
  | "milestone_count"
  | "required_milestone_count"
  | "version_group_id"
  | "version_group_name"
>;

export type StorySnapshotEventSource = Pick<
  MainlinePlayTimelineEvent,
  "milestone_id" | "team_snapshots"
>;

export type StoryDecisionOption = {
  id: number;
  imageUrl: string | null;
  label: string;
  speciesName: string | null;
};

export type StoryMilestonePrerequisite = {
  completed: boolean;
  id: number;
  kindSlug: string;
  name: string;
};

/* A milestone named in another's offer or impact. */
export type StoryMilestoneRef = {
  id: number;
  name: string;
};

export type StoryMilestone = {
  /* A gym milestone's badge type, so its medallion and stamp wear it. */
  badgeType: PokemonTypeSlug | null;
  blockingPrerequisites: StoryMilestonePrerequisite[];
  categoryId: number;
  completedAt: string | null;
  decisionOptions: StoryDecisionOption[];
  description: string | null;
  /*
   * The required milestones and choices before it, not recorded yet (a
   * choice's decision stays unrecorded), that recording it
   * can also record ("the N before it"). Empty in an open-world story.
   */
  earlierToRecord: StoryMilestoneRef[];
  hasHistoryEvent: boolean;
  id: number;
  incompletionImpact: StoryMilestoneIncompletionImpact;
  /* What marking it incomplete removes when "the N after it" go too. */
  incompletionImpactWithLater: StoryMilestoneIncompletionImpact;
  isCompleted: boolean;
  isAvailable: boolean;
  isRequired: boolean;
  /*
   * The recorded milestones after it that marking it incomplete can also
   * clear ("the N after it"). Empty in an open-world story.
   */
  laterRecorded: StoryMilestoneRef[];
  name: string;
  notes: string | null;
  prerequisites: StoryMilestonePrerequisite[];
  selectedDecisionId: number | null;
  selectedDecisionLabel: string | null;
  /* Its number in the journey, counting required milestones; null if optional. */
  sequence: number | null;
  snapshotCount: number;
  snapshotMembers: PlayTeamSnapshotMember[];
  snapshotPolicySlug: string;
  typeName: string;
  typeSlug: string;
};

export type StoryMilestoneIncompletionImpact = {
  affectedMilestones: StoryMilestoneRef[];
  decisionCount: number;
  historyEventCount: number;
  noteCount: number;
  snapshotCount: number;
};

export type StorySection = {
  /* Required milestones recorded, the count Overview's Story metric uses. */
  completedCount: number;
  id: number;
  milestones: StoryMilestone[];
  name: string;
  slug: string;
  /* Required milestones, the count Overview's Story metric uses. */
  totalCount: number;
};

export type StoryScope = {
  /* Required milestones recorded, the count Overview's Story metric uses. */
  completedCount: number;
  id: number;
  /* The story can be played in any order, so nothing is recorded or cleared together. */
  isOpenWorld: boolean;
  label: string;
  /* The milestone this scope's side card offers to record next. */
  nextMilestone: StoryMilestone | null;
  sections: StorySection[];
  /* The gym badges and the League, or null when the scope has no gyms. */
  stamps: PlayStamp[] | null;
  /* Required milestones: the one count Story, Overview and the toasts use. */
  totalCount: number;
};

export type MainlinePlayProgressStoryData = {
  badgeTypes: { id: number; slug: string }[];
  categories: StoryCategorySource[];
  decisionForms: Pick<PokemonForm, "id" | "slug">[];
  milestones: StoryMilestoneSource[];
  snapshotEvents: StorySnapshotEventSource[];
};

export type StoryProgressModel = {
  /* The Play's next objective across every scope; its scope opens first. */
  nextMilestone: StoryMilestone | null;
  scopes: StoryScope[];
};
