import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import type {
  MainlinePlayMilestone,
  MainlinePlayMilestoneCategorySummary,
} from "@/modules/mainline/features/plays/hub/types";
import type {
  MilestoneBadge,
  PlayStamp,
} from "@/modules/mainline/features/plays/shared/data/play-stamps";
import type { PlayTeamSnapshotMember } from "@/modules/mainline/features/plays/shared/data/play-team-snapshot";
import type { PokemonForm } from "@/modules/reference/types";

import type { StoryPlacePokemonGroup } from "./data/story-place-pokemon";

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
  | "location_id"
  | "location_name"
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
  | "chapter_kind"
  | "completed_required_milestone_count"
  | "content_scope_sort_order"
  | "is_open_world"
  | "milestone_count"
  | "plays_in_any_order"
  | "required_milestone_count"
  | "version_group_id"
  | "version_group_name"
>;

/*
 * What a chapter is to the journey: the main story runs to the credits (the
 * League included), the post game continues after them, side content hangs
 * off the route and never counts.
 */
export type StoryChapterKind = "main-story" | "post-game" | "side-content";

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

/* A place in the game: a town, route, cave or building on the Story's way. */
export type StoryPlace = {
  id: number;
  name: string;
};

/* One step of a version group's roadmap, as the reader hands it over. */
export type StoryRoadmapStepSource = {
  id: number;
  location_id: number | null;
  /* The place's name, for a place step. */
  location_name: string | null;
  milestone_id: number | null;
  note: string | null;
  sort_order: number;
  version_group_id: number;
};

/* The Pokémon found at one of a roadmap's places, read with the Story. */
export type StoryPlacePokemonSource = {
  groups: StoryPlacePokemonGroup[];
  location_id: number;
  version_group_id: number;
};

/*
 * One step of a game's roadmap, from its walkthrough: a place you pass or a
 * milestone (which carries its own place). A place may come again.
 */
export type StoryRoadmapStep = {
  id: number;
  milestoneId: number | null;
  /* What happens at a place, in a line (pick up Oak's Parcel); null where nothing does. */
  note: string | null;
  place: StoryPlace | null;
};

/* A milestone named in another's offer or impact. */
export type StoryMilestoneRef = {
  id: number;
  name: string;
};

export type StoryMilestone = {
  /* A gym's badge (or Alola trial's Z-Crystal), so its medallion and stamp wear it. */
  badge: MilestoneBadge | null;
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
  /* Where it happens, which pins it on the route; null where Voydex has no place for it yet. */
  place: StoryPlace | null;
  /* Side content: the beat that opens it, which places it on the route; never a lock. */
  opensAfter: StoryMilestoneRef | null;
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
  chapterKind: StoryChapterKind;
  /* Required milestones recorded, the count Overview's Story metric uses. */
  completedCount: number;
  id: number;
  milestones: StoryMilestone[];
  name: string;
  /* Played beside the chapters next to it flagged the same, in any order. */
  playsInAnyOrder: boolean;
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
  /* The Pokémon found at each of its roadmap's places, by place. */
  placePokemon: ReadonlyMap<number, StoryPlacePokemonGroup[]>;
  /* Its roadmap from the walkthrough; empty where Voydex has none for it. */
  steps: StoryRoadmapStep[];
  sections: StorySection[];
  /* The badges (or Alola's trials) and the League; null when there are none. */
  stamps: PlayStamp[] | null;
  /* Required milestones: the one count Story, Overview and the toasts use. */
  totalCount: number;
};

export type MainlinePlayProgressStoryData = {
  badgeTypes: { id: number; slug: string }[];
  categories: StoryCategorySource[];
  decisionForms: Pick<PokemonForm, "id" | "slug">[];
  milestones: StoryMilestoneSource[];
  placePokemon: StoryPlacePokemonSource[];
  steps: StoryRoadmapStepSource[];
  snapshotEvents: StorySnapshotEventSource[];
};

export type StoryProgressModel = {
  /* The Play's next objective across every scope; its scope opens first. */
  nextMilestone: StoryMilestone | null;
  scopes: StoryScope[];
};
