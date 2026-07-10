import { formatPlayCountPair } from "@/modules/mainline/features/plays/shared/display/play-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type StoryPathProps = {
  completedCount: number | null | undefined;
  totalCount: number | null | undefined;
};

export const StoryPath = ({ completedCount, totalCount }: StoryPathProps) => {
  const safeCompletedCount = completedCount ?? 0;
  const safeTotalCount = totalCount ?? 0;
  const markerCount = safeTotalCount > 1 ? Math.min(safeTotalCount, 8) : 2;
  const completedRatio = safeTotalCount
    ? Math.min(Math.max(safeCompletedCount / safeTotalCount, 0), 1)
    : 0;
  const completedMarkers = completedRatio
    ? Math.max(1, Math.ceil(completedRatio * markerCount))
    : 0;

  return (
    <div className="grid min-h-16 min-w-0 content-start justify-items-center gap-2 text-center">
      <div className="text-muted-foreground flex items-center justify-center gap-2 text-xs leading-5">
        <AppIcon icon={appIcons.product.milestone} size="sm" aria-hidden />
        <span>Story Path</span>
      </div>
      <p className="text-primary text-2xl leading-tight font-semibold">
        {formatPlayCountPair({
          completedCount,
          totalCount,
        })}
      </p>
      <p className="text-muted-foreground text-xs">milestones completed</p>
      <div
        className="relative mt-1 grid w-full items-center"
        style={{
          gridTemplateColumns: `repeat(${markerCount}, minmax(0, 1fr))`,
        }}
        aria-hidden
      >
        <div className="bg-border absolute inset-x-1 top-1/2 h-px -translate-y-1/2" />
        <div
          className="bg-primary absolute inset-x-1 top-1/2 h-px origin-left -translate-y-1/2"
          style={{ transform: `scaleX(${completedRatio})` }}
        />
        {Array.from({ length: markerCount }, (_, index) => (
          <span
            key={index}
            className="border-background bg-background relative z-10 size-2.5 justify-self-center rounded-full border"
          >
            <span
              className={
                index < completedMarkers
                  ? "bg-primary block size-full rounded-full"
                  : "border-border bg-card block size-full rounded-full border"
              }
            />
          </span>
        ))}
      </div>
    </div>
  );
};
