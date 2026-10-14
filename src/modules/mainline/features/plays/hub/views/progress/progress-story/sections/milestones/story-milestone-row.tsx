import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import {
  getMilestonePickItemClassName,
  getMilestonePickRowClassName,
} from "@/modules/mainline/features/plays/shared/components/milestone-pick-row";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { PlayTeamParty } from "@/modules/mainline/features/plays/shared/components/play-team-party";
import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";

export const getStoryMilestoneRowState = (
  milestone: StoryMilestone,
  nextMilestoneId: number | null,
): PlayMilestoneState =>
  milestone.isCompleted
    ? "done"
    : milestone.id === nextMilestoneId
      ? "next"
      : "todo";

/* The row's button id, so focus can come back to it when its panel closes. */
export const getStoryMilestoneRowId = (milestoneId: number) =>
  `story-milestone-row-${milestoneId}`;

const StoryMilestoneWhen = ({
  milestone,
  state,
}: {
  milestone: StoryMilestone;
  state: PlayMilestoneState;
}) => {
  if (state === "done") {
    return (
      <>
        {milestone.completedAt ? (
          <span className="sr-only">Recorded </span>
        ) : null}
        <PlayMomentTime
          value={milestone.completedAt}
          format="date"
          fallback="Recorded"
        />
      </>
    );
  }

  if (state === "next") {
    return "Next objective";
  }

  if (!milestone.isAvailable) {
    return (
      <span className="inline-flex items-center gap-1">
        <AppIcon icon={appIcons.status.locked} size="xs" />
        Locked
      </span>
    );
  }

  return "Not recorded";
};

/* One milestone in the list, drawn as a milestone pick row. */
export const StoryMilestoneRow = ({
  isJustRecorded,
  milestone,
  onPopEnd,
  onSelect,
  selected,
  state,
}: {
  isJustRecorded: boolean;
  milestone: StoryMilestone;
  /* Called once the just-recorded pop has played. */
  onPopEnd: () => void;
  onSelect: () => void;
  selected: boolean;
  state: PlayMilestoneState;
}) => {
  return (
    <li className={getMilestonePickItemClassName(state)}>
      <button
        id={getStoryMilestoneRowId(milestone.id)}
        type="button"
        aria-pressed={selected}
        onClick={onSelect}
        onAnimationEnd={(event) => {
          if (isJustRecorded && event.target === event.currentTarget) {
            onPopEnd();
          }
        }}
        className={cn(
          getMilestonePickRowClassName({ selected, state }),
          "grid grid-cols-[30px_minmax(0,1fr)] items-center gap-x-3 gap-y-1 px-3.5 py-3",
          "sm:grid-cols-[34px_96px_minmax(0,1fr)_auto] sm:gap-x-3.5 sm:px-[18px] sm:py-3.5",
          isJustRecorded && "animate-pop",
        )}
      >
        <MilestoneMarker
          badgeType={milestone.badgeType}
          className="row-span-2 sm:row-span-1"
          sequence={milestone.sequence}
          state={state}
          typeSlug={milestone.typeSlug}
        />
        <span className="flex min-w-0 flex-col">
          <span
            className={cn(
              "text-13 font-extrabold",
              state === "next" ? "text-game-deep" : "text-ink-2",
            )}
          >
            Milestone {milestone.sequence}
          </span>
          <span className="text-ink-3 text-12 font-semibold">
            <StoryMilestoneWhen milestone={milestone} state={state} />
          </span>
        </span>
        <span className="min-w-0">
          <span className="flex flex-wrap items-baseline gap-x-2">
            <span
              className={cn(
                "text-16 font-extrabold",
                state === "todo" ? "text-ink-2" : "text-ink",
              )}
            >
              {milestone.name}
            </span>
            <span className="text-ink-3 text-12 font-bold">
              {milestone.typeName}
              {milestone.isRequired ? null : " · Optional"}
            </span>
          </span>
          {milestone.description ? (
            <span className="text-ink-2 text-14 block">
              {milestone.description}
            </span>
          ) : null}
        </span>
        {state === "done" ? (
          <PlayTeamParty
            decorative
            members={milestone.snapshotMembers}
            size="sm"
            className="pl-1"
          />
        ) : null}
      </button>
    </li>
  );
};
