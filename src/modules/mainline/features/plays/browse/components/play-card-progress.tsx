import type { PlayBrowseProgress } from "@/modules/mainline/features/plays/shared/types";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

type PlayCardProgressProps = {
  className?: string;
  progress: PlayBrowseProgress;
};

/*
 * Quiet rows: a name and a thick bar with its figure inside. A part the
 * Play doesn't track reads "Off" in an empty track.
 */
export const PlayCardProgress = ({
  className,
  progress,
}: PlayCardProgressProps) => {
  if (progress.state === "unavailable" || !progress.items.length) {
    return (
      <p className={cn("text-ink-3 copy-meta", className)}>
        {progress.state === "unavailable"
          ? "Progress unavailable"
          : "Progress not recorded"}
      </p>
    );
  }

  return (
    <div
      className={cn(
        "grid grid-cols-[76px_minmax(0,1fr)] items-center gap-x-2 gap-y-1.75",
        className,
      )}
    >
      {progress.items.map((item) => (
        <div key={item.label} className="contents">
          <span className="text-ink-2 copy-label">{item.label}</span>
          <Progress
            showValue
            value={item.percent ?? 0}
            max={100}
            emptyLabel={item.percent === null ? "Off" : undefined}
            aria-label={
              item.percent === null
                ? `${item.label} tracking is off`
                : `${item.label} progress`
            }
          />
        </div>
      ))}
    </div>
  );
};
