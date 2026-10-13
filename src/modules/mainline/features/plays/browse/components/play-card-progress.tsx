import type { PlayBrowseProgress } from "@/modules/mainline/features/plays/browse/types";
import { Progress } from "@/shared/components/ui/progress";
import { cn } from "@/shared/utils/cn";

type PlayCardProgressProps = {
  className?: string;
  progress: PlayBrowseProgress;
};

/* Quiet rows: a name, a thin bar in the game's colour and the figure. */
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
        "grid grid-cols-[76px_minmax(0,1fr)_38px] items-center gap-x-2 gap-y-[7px]",
        className,
      )}
    >
      {progress.items.map((item) => (
        <div key={item.label} className="contents">
          <span className="text-ink-2 text-13 font-bold">{item.label}</span>
          <Progress
            value={item.percent}
            max={100}
            aria-label={`${item.label} progress`}
            className="[&_[data-slot=progress-track]]:h-[9px]"
          />
          <span className="text-ink text-13 text-right font-bold tabular-nums">
            {item.percent}%
          </span>
        </div>
      ))}
    </div>
  );
};
