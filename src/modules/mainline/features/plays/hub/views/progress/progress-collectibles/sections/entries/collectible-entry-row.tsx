import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { rowInteractionVariants } from "@/shared/components/ui/row-interaction";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayCollectibleEntry } from "../../types";

export const CollectibleEntryRow = ({
  entry,
  isCollected,
  isPending,
  onToggle,
}: {
  entry: MainlinePlayCollectibleEntry;
  isCollected: boolean;
  isPending: boolean;
  onToggle: () => void;
}) => {
  const locationContext = [entry.locationLabel, entry.subLocationLabel]
    .filter(Boolean)
    .join(" · ");
  const locationDetails = entry.description
    ? `${locationContext || "Location not recorded"} (${entry.description})`
    : locationContext || "Location not recorded";

  return (
    <div
      role="listitem"
      aria-busy={isPending}
      className={cn(
        "group relative min-w-0",
        isCollected ? "bg-primary/8" : "bg-card",
        rowInteractionVariants({ interaction: "action" }),
      )}
    >
      <div className="pointer-events-none relative z-10 grid min-w-0 grid-cols-[2.25rem_minmax(0,1fr)_auto] items-center gap-x-3 px-3 py-2.5 lg:grid-cols-[2.25rem_minmax(9rem,0.85fr)_minmax(16rem,1.65fr)_auto]">
        <span
          className={cn(
            "border-line text-muted-foreground flex size-8 items-center justify-center rounded-full border text-xs font-semibold tabular-nums",
            isCollected && "border-primary bg-primary text-primary-foreground",
          )}
        >
          {isCollected ? (
            <AppIcon icon={appIcons.product.completion} size="sm" aria-hidden />
          ) : (
            entry.sortOrder
          )}
        </span>

        <span className="grid min-w-0 gap-1">
          <span className="font-display truncate text-sm font-semibold">
            {entry.name}
          </span>
          <span className="grid min-w-0 gap-0.5 lg:hidden">
            <span className="text-muted-foreground truncate text-xs">
              {locationDetails}
            </span>
          </span>
        </span>

        <span className="text-muted-foreground hidden min-w-0 truncate text-xs lg:block">
          {locationDetails}
        </span>

        <span
          className={cn(
            "flex items-center gap-1.5 text-xs font-semibold whitespace-nowrap",
            isCollected ? "text-primary" : "invisible",
          )}
          aria-hidden={!isCollected}
        >
          <AppIcon icon={appIcons.product.completion} size="sm" aria-hidden />
          Collected
        </span>
      </div>

      <button
        type="button"
        aria-label={`${isCollected ? "Unmark" : "Mark"} ${entry.name} as collected`}
        aria-pressed={isCollected}
        disabled={isPending}
        className="focus-visible:ring-ring absolute inset-0 z-0 outline-none focus-visible:ring-3 focus-visible:ring-inset disabled:cursor-wait"
        onClick={onToggle}
      />
    </div>
  );
};
