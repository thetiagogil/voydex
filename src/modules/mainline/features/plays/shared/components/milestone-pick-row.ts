import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { cn } from "@/shared/utils/cn";

/*
 * A milestone you pick to read beside the list (Progress Story, Story
 * matchups): each row is its own card. Done rows are cream, the next one is
 * the loud row with the game's border and lip, rows still ahead are an outline
 * on the page, and the picked row wears the game outline. Callers add their
 * own grid columns.
 */
export const getMilestonePickRowClassName = ({
  selected,
  state,
}: {
  selected: boolean;
  state: PlayMilestoneState;
}) =>
  cn(
    "w-full rounded-lg text-left transition-transform duration-150 outline-none hover:translate-x-0.75",
    "focus-visible:outline-focus focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
    state === "done" && "bg-surface",
    state === "next" &&
      "bg-surface shadow-[inset_0_0_0_2.5px_var(--game),0_4px_0_var(--game-lip)]",
    state === "todo" && "shadow-[inset_0_0_0_1.5px_var(--line)]",
    selected &&
      "outline-game outline-[2.5px] outline-offset-[-2.5px] outline-solid",
  );

/* The next row stands apart: 14px above it and 16px below, gap included. */
export const getMilestonePickItemClassName = (state: PlayMilestoneState) =>
  cn(state === "next" && "mt-1.5 mb-2 first:mt-1 last:mb-0");
