import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import {
  getMilestonePickItemClassName,
  getMilestonePickRowClassName,
} from "@/modules/mainline/features/plays/shared/components/milestone-pick-row";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { PlayTeamParty } from "@/modules/mainline/features/plays/shared/components/play-team-party";
import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
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

/*
 * One milestone in the list, drawn as a milestone pick row. A recorded one
 * shows small marks for what it kept: a signpost for a decision and a camera
 * for a saved team (the choice and the team themselves with "Show
 * details"; the panel shows them in full).
 */
export const StoryMilestoneRow = ({
  isJustRecorded,
  milestone,
  onPopEnd,
  onSelect,
  selected,
  showDetails,
  state,
}: {
  isJustRecorded: boolean;
  milestone: StoryMilestone;
  /* Called once the just-recorded pop has played. */
  onPopEnd: () => void;
  onSelect: () => void;
  selected: boolean;
  /*
   * The list's "Show details": the decision and the saved team beside the
   * row, not just their marks.
   */
  showDetails: boolean;
  state: PlayMilestoneState;
}) => {
  const hasTeam = milestone.snapshotMembers.length > 0;
  const decision = milestone.selectedDecisionLabel;
  const decisionOption =
    milestone.decisionOptions.find(
      (option) => option.id === milestone.selectedDecisionId,
    ) ?? null;

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
          "sm:grid-cols-[34px_96px_minmax(0,1fr)_auto] sm:gap-x-3.5 sm:px-4.5 sm:py-3.5",
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
              state === "next" ? "text-select-ink" : "text-ink-2",
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
            /*
             * One line from `sm` up, so a row with its team beside it is no
             * taller than the rest; the panel shows it in full.
             */
            <span className="text-ink-2 text-14 block sm:truncate">
              {milestone.description}
            </span>
          ) : null}
        </span>
        {state === "done" && (hasTeam || decision) ? (
          <span className="text-ink-3 col-start-2 flex items-center gap-2 sm:col-start-auto sm:pl-1">
            {decision && showDetails && decisionOption?.imageUrl ? (
              <FallbackImage
                src={decisionOption.imageUrl}
                name={decisionOption.speciesName ?? decisionOption.label}
                fallback="badge"
                alt={`Decision: ${decision}`}
                title={`Decision: ${decision}`}
                loading="lazy"
                className="size-7.5 max-w-none shrink-0 object-contain"
              />
            ) : decision ? (
              <span title={`Decision: ${decision}`} className="inline-flex">
                <AppIcon icon={appIcons.product.decision} size="sm" />
                <span className="sr-only">Decision: {decision}.</span>
              </span>
            ) : null}
            {hasTeam && showDetails ? (
              <PlayTeamParty
                decorative
                members={milestone.snapshotMembers}
                size="sm"
              />
            ) : hasTeam ? (
              <span title="Team saved with it" className="inline-flex">
                <AppIcon icon={appIcons.product.teamSnapshot} size="sm" />
                <span className="sr-only">Team saved with it.</span>
              </span>
            ) : null}
          </span>
        ) : null}
      </button>
    </li>
  );
};
