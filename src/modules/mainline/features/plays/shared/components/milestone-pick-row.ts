import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { cn } from "@/shared/utils/cn";

/*
 * A milestone you pick to read beside the list (Progress Story, Story
 * matchups): each row is its own card, read like the Pokédex and
 * Collectibles. A row still ahead is an empty slot (the dashed outline of a
 * Pokémon not caught), a recorded one a white card, and the next one is
 * filled with the selected tint on a soft shadow. The picked row takes a
 * ring of the same red, softened, so the list keeps one colour; it never
 * takes the full accent, which would read as an error. Every row keeps the
 * slot's border width, so columns line up. Callers add their own grid
 * columns.
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
    state === "todo" ? "empty-slot" : "border-[2.5px] border-transparent",
    state === "done" && "bg-surface",
    state === "next" && "bg-select-soft shadow-soft",
    selected && "inset-ring-action/45 inset-ring-2",
  );

/* The next row stands apart: 14px above it and 16px below, gap included. */
export const getMilestonePickItemClassName = (state: PlayMilestoneState) =>
  cn(state === "next" && "mt-1.5 mb-2 first:mt-1 last:mb-0");
