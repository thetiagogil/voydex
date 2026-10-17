import type { PlayMilestoneState } from "@/modules/mainline/features/plays/shared/data/play-milestones";
import { getMilestoneIcon } from "@/modules/mainline/features/plays/shared/utils/milestone-icon";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import { Medallion } from "./medallion";

type MilestoneMarkerProps = {
  /* A gym milestone's badge type, worn once it's recorded. */
  badgeType: PokemonTypeSlug | null;
  className?: string;
  /* Its number within its journey, shown while it's still ahead. */
  sequence: number;
  /* `md` beside Story's rows (30px, 34px from `sm`); `sm` in short lists (28px). */
  size?: "md" | "sm";
  state: PlayMilestoneState;
  /* The milestone type, which picks a gold medallion's icon. */
  typeSlug: string | null;
};

const ringSizeClassNames = {
  md: "text-13 size-7.5 sm:size-8.5",
  sm: "text-12 size-7",
};

/*
 * Where a milestone stands, the same in Story and on Overview. A recorded one
 * wears its medallion: the badge in its type, anything else in gold. The next
 * one is a game-coloured ring around the objective flag, an accent and not a
 * fill; the rest show their number in a quiet ring.
 */
export const MilestoneMarker = ({
  badgeType,
  className,
  sequence,
  size = "md",
  state,
  typeSlug,
}: MilestoneMarkerProps) => {
  if (state === "done") {
    return (
      <Medallion
        className={cn(size === "md" && "max-sm:size-7", className)}
        size={size === "md" ? "sm" : "xs"}
        content={
          badgeType
            ? { kind: "badge", type: badgeType }
            : { icon: getMilestoneIcon(typeSlug ?? ""), kind: "gold" }
        }
      />
    );
  }

  return (
    <span
      aria-hidden
      className={cn(
        "grid shrink-0 place-items-center rounded-full font-extrabold tabular-nums",
        ringSizeClassNames[size],
        state === "next"
          ? "bg-surface text-game-deep shadow-[inset_0_0_0_2px_var(--game)]"
          : "text-ink-3 shadow-[inset_0_0_0_1.5px_var(--line)]",
        className,
      )}
    >
      {state === "next" ? (
        <AppIcon icon={appIcons.milestones.story} size="sm" />
      ) : (
        sequence
      )}
    </span>
  );
};
