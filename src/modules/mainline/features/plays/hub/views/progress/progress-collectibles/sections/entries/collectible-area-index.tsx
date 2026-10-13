import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

import type { CollectibleAreaSummary } from "../../utils/collectibles-progress-model";

/*
 * The Areas index: each area with what's found and a thin bar, gold once the
 * area is complete. Areas the filters hide stay listed, quieter, without a
 * link.
 */
export const CollectibleAreaIndex = ({
  areas,
  onJump,
  shownAreaIds,
}: {
  areas: CollectibleAreaSummary[];
  onJump: (areaId: string) => void;
  shownAreaIds: ReadonlySet<string>;
}) => {
  return (
    <ul className="flex flex-col gap-0.5">
      {areas.map((area) => {
        const isShown = shownAreaIds.has(area.id);
        const percentage = Math.round(
          (area.foundCount / area.entries.length) * 100,
        );
        const content = (
          <>
            <span
              className={cn(
                "min-w-0 font-bold",
                !isShown
                  ? "text-ink-3"
                  : area.isComplete
                    ? "text-ink-2"
                    : "text-ink",
              )}
            >
              {area.label}
            </span>
            <span className="text-12 text-ink-3 flex items-center font-extrabold tabular-nums">
              {area.isComplete ? (
                <>
                  <AppIcon
                    icon={appIcons.product.completion}
                    className="text-warn-ink size-[15px] stroke-3"
                    aria-hidden
                  />
                  <span className="sr-only">Complete</span>
                </>
              ) : (
                <>
                  {area.foundCount}/{area.entries.length}
                  <span className="sr-only"> found</span>
                </>
              )}
            </span>
            <Progress
              aria-hidden
              value={percentage}
              className={cn(
                "col-span-2 **:data-[slot=progress-track]:h-[5px]",
                area.isComplete &&
                  "**:data-[slot=progress-indicator]:bg-gold-deep",
              )}
            />
          </>
        );
        const itemClassName =
          "text-14 grid grid-cols-[minmax(0,1fr)_auto] items-center gap-x-2 gap-y-1.5 rounded-sm px-2.5 py-2";

        return (
          <li key={area.id}>
            {isShown ? (
              <a
                href={`#${area.id}`}
                onClick={(event) => {
                  event.preventDefault();
                  onJump(area.id);
                }}
                className={cn(
                  itemClassName,
                  "hover:bg-surface-2 focus-visible:outline-focus outline-none focus-visible:outline-3 focus-visible:outline-solid",
                )}
              >
                {content}
              </a>
            ) : (
              <div className={itemClassName}>{content}</div>
            )}
          </li>
        );
      })}
    </ul>
  );
};
