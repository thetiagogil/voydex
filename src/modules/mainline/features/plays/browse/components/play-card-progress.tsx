import type { PlayBrowseProgress } from "@/modules/mainline/features/plays/shared/types";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

type PlayCardProgressProps = {
  className?: string;
  progress: PlayBrowseProgress;
};

/*
 * Quiet rows: a name, a thin bar in the game's colour and the figure. A part
 * the Play doesn't track reads "Off" over an empty track.
 */
export const PlayCardProgress = ({
  className,
  progress,
}: PlayCardProgressProps) => {
  if (progress.state === "unavailable" || !progress.items.length) {
    return (
      <p className={cn("text-ink-3 text-13 font-semibold", className)}>
        {progress.state === "unavailable"
          ? "Progress unavailable"
          : "Progress not recorded"}
      </p>
    );
  }

  return (
    <div
      className={cn(
        "grid grid-cols-[76px_minmax(0,1fr)_38px] items-center gap-x-2 gap-y-1.75",
        className,
      )}
    >
      {progress.items.map((item) => (
        <div key={item.label} className="contents">
          <span className="text-ink-2 text-13 font-bold">{item.label}</span>
          <Progress
            value={item.percent ?? 0}
            max={100}
            aria-label={
              item.percent === null
                ? `${item.label} tracking is off`
                : `${item.label} progress`
            }
            className="**:data-[slot=progress-track]:h-2.25"
          />
          {item.percent === null ? (
            <span className="text-ink-3 text-13 text-right font-semibold">
              Off
            </span>
          ) : (
            <span className="text-ink text-13 text-right font-bold tabular-nums">
              {item.percent}%
            </span>
          )}
        </div>
      ))}
    </div>
  );
};
