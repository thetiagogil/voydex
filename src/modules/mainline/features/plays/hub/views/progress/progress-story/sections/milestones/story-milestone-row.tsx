import { formatPlayDate } from "@/modules/mainline/features/plays/shared/utils/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { StoryMilestone } from "../../types";
import {
  StoryMilestoneMarker,
  type StoryMilestoneRowState,
} from "./story-milestone-marker";

/* The row's button id, so focus can come back to it when its panel closes. */
export const getStoryMilestoneRowId = (milestoneId: number) =>
  `story-milestone-row-${milestoneId}`;

const partySize = 6;

const StoryMilestoneWhen = ({
  milestone,
  state,
}: {
  milestone: StoryMilestone;
  state: StoryMilestoneRowState;
}) => {
  if (state === "done") {
    return (
      <>
        {milestone.completedAt ? (
          <span className="sr-only">Recorded </span>
        ) : null}
        {formatPlayDate(milestone.completedAt, "Recorded")}
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
 * One milestone in the list. Recorded rows are cream with their medallion;
 * the next one is the loud row, with the game's border and lip; rows still
 * ahead are an outline on the page.
 */
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
  state: StoryMilestoneRowState;
}) => {
  const party =
    state === "done" ? milestone.snapshotMembers.slice(-partySize) : [];

  /* The next row stands apart: 14px above it and 16px below, gap included. */
  return (
    <li className={cn(state === "next" && "mt-1.5 mb-2 first:mt-1 last:mb-0")}>
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
          "grid w-full grid-cols-[30px_minmax(0,1fr)] items-center gap-x-3 gap-y-1 rounded-lg px-3.5 py-3 text-left transition-transform duration-150 outline-none hover:translate-x-[3px]",
          "sm:grid-cols-[34px_96px_minmax(0,1fr)_auto] sm:gap-x-3.5 sm:px-[18px] sm:py-3.5",
          "focus-visible:outline-focus focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
          state === "done" && "bg-surface",
          state === "next" &&
            "bg-surface shadow-[inset_0_0_0_2.5px_var(--game),0_4px_0_var(--game-lip)]",
          state === "todo" && "shadow-[inset_0_0_0_1.5px_var(--line)]",
          selected &&
            "outline-game outline-[2.5px] outline-offset-[-2.5px] outline-solid",
          isJustRecorded && "animate-pop",
        )}
      >
        <StoryMilestoneMarker
          milestone={milestone}
          state={state}
          className="row-span-2 sm:row-span-1"
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
        {party.length ? (
          <span aria-hidden className="hidden pl-1 sm:flex">
            {party.map((member) =>
              member.imageUrl ? (
                // eslint-disable-next-line @next/next/no-img-element
                <img
                  key={`${member.position}-${member.speciesName}`}
                  src={member.imageUrl}
                  alt=""
                  loading="lazy"
                  className="-ml-1 size-[30px] max-w-none object-contain"
                />
              ) : null,
            )}
          </span>
        ) : null}
      </button>
    </li>
  );
};
