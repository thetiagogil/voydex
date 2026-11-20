import {
  getPlayCombinedPercent,
  getPlayProgressNote,
} from "@/modules/mainline/features/plays/shared/utils/play-overall-progress";
import type { PlayBrowseProgress } from "@/modules/mainline/features/plays/shared/types";
import { ProgressDonut } from "@/shared/components/progress-donut";
import { cn } from "@/shared/utils/cn";

type PlayCardProgressProps = {
  className?: string;
  progress: PlayBrowseProgress;
};

/*
 * One ring for how far along the Play is: the average of the parts it
 * tracks (Story, Pokédex, Collectibles), so a long list stays light. No
 * word beside it: every card has one, and the Play's own pages break it down.
 */
export const PlayCardProgress = ({
  className,
  progress,
}: PlayCardProgressProps) => {
  const percent = getPlayCombinedPercent(progress);

  if (percent === null) {
    return (
      <p className={cn("text-ink-3 copy-meta", className)}>
        {getPlayProgressNote(progress)}
      </p>
    );
  }

  return (
    <ProgressDonut
      label="Overall progress"
      value={percent}
      className={cn("w-14 sm:w-18", className)}
    />
  );
};
