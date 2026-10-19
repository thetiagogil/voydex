import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { cn } from "@/shared/utils/cn";

/*
 * A milestone you pick to read beside the list (Progress Story, Story
 * matchups): each row is its own card. Done rows are white, the next one is
 * filled with the selected tint and lifts on a soft shadow, and rows still
 * ahead are an outline on the page. The picked row keeps its own fill and
 * takes a ring of the third colour (the calm blue), so where you are and
 * what you're reading never look alike. No row is outlined in the accent
 * red, which would read as an error. Callers add their own grid columns.
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
    "focus-ring",
    state === "done" && "bg-surface",
    state === "next" && "bg-select-soft shadow-soft",
    state === "todo" && "inset-ring inset-ring-line",
    selected && "inset-ring-calm inset-ring-2",
  );

/* The next row stands apart: 14px above it and 16px below, gap included. */
export const getMilestonePickItemClassName = (state: PlayMilestoneState) =>
  cn(state === "next" && "mt-1.5 mb-2 first:mt-1 last:mb-0");
