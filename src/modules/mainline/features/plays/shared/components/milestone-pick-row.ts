import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { cn } from "@/shared/utils/cn";

/*
 * A milestone you pick to read beside the list (Progress Story, Story
 * matchups): each row is its own card. Done rows are white, the next one
 * lifts on a soft shadow inside a ring of the selected tint, rows still
 * ahead are an outline on the page, and the picked row takes the selected
 * tint, as every selected row does. No row is outlined in the accent, which
 * would read as an error. Callers add their own grid columns.
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
      "bg-surface shadow-[inset_0_0_0_2.5px_var(--select-soft),var(--shadow-soft-value)]",
    state === "todo" && "shadow-[inset_0_0_0_1.5px_var(--line)]",
    selected && "bg-select-soft",
  );

/* The next row stands apart: 14px above it and 16px below, gap included. */
export const getMilestonePickItemClassName = (state: PlayMilestoneState) =>
  cn(state === "next" && "mt-1.5 mb-2 first:mt-1 last:mb-0");
