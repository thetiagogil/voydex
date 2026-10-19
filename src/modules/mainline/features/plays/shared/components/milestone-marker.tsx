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
  /*
   * Its number within its journey, shown while it's still ahead; an optional
   * milestone has none and shows its type's icon instead.
   */
  sequence: number | null;
  /*
   * Recorded or un-recorded a moment ago: a medallion stamps down, a number
   * pops back into its ring.
   */
  popIn?: boolean;
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
 * fill; the rest show their number in a quiet ring (an optional one, which
 * has no number, its type's icon).
 */
export const MilestoneMarker = ({
  badgeType,
  className,
  popIn = false,
  sequence,
  size = "md",
  state,
  typeSlug,
}: MilestoneMarkerProps) => {
  if (state === "done") {
    return (
      <Medallion
        className={cn(
          size === "md" && "max-sm:size-7",
          popIn && "animate-stamp-slap",
          className,
        )}
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
          ? "bg-surface text-action-ink inset-ring-action inset-ring-2"
          : "text-ink-3 inset-ring-line inset-ring",
        popIn && "animate-marker-in",
        className,
      )}
    >
      {state === "next" ? (
        <AppIcon icon={appIcons.milestones.story} size="sm" />
      ) : sequence === null ? (
        <AppIcon icon={getMilestoneIcon(typeSlug ?? "")} size="sm" />
      ) : (
        sequence
      )}
    </span>
  );
};
