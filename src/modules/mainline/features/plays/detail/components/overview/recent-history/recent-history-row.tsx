import { cn } from "@/shared/utils/cn";
import { formatTimelineDate } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-date";
import {
  getTimelineDescription,
  getTimelineEventDisplay,
  timelineEventToneClassNames,
} from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-display";
import { RecentHistoryMedia } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-media";
import { getTimelineMedia } from "@/modules/mainline/features/plays/detail/components/overview/recent-history/recent-history-media-model";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon } from "@/shared/components/app-icon";

type RecentHistoryRowProps = {
  event: MainlinePlayTimelineEvent;
};

export const RecentHistoryRow = ({ event }: RecentHistoryRowProps) => {
  const display = getTimelineEventDisplay(event);
  const timelineDate = formatTimelineDate(event);
  const media = getTimelineMedia(event);

  return (
    <article className="grid min-w-0 grid-cols-[4.5rem_minmax(0,1fr)] gap-3 sm:grid-cols-[1.5rem_4.5rem_2.75rem_minmax(0,1fr)_minmax(5rem,auto)] sm:items-center">
      <div className="relative hidden h-full min-h-14 justify-items-center sm:grid">
        <span className="bg-card relative z-10 flex size-4 items-center justify-center place-self-center rounded-full">
          <span className="bg-primary size-2 rounded-full" aria-hidden />
        </span>
      </div>

      <div className="text-muted-foreground grid min-w-0 text-xs leading-5">
        <span className="truncate">{timelineDate.date}</span>
        <span className="truncate">{timelineDate.time}</span>
      </div>

      <span
        className={cn(
          "border-app-surface-border bg-muted/30 hidden size-10 items-center justify-center rounded-full border sm:flex",
          timelineEventToneClassNames[display.tone],
        )}
      >
        <AppIcon icon={display.icon} size="sm" aria-hidden />
      </span>

      <div className="grid min-w-0 gap-1">
        <div className="flex min-w-0 flex-wrap items-center gap-2">
          <h3 className="text-foreground truncate text-xs leading-5 font-semibold">
            {display.label}
          </h3>
        </div>

        <p className="text-muted-foreground line-clamp-1 text-xs leading-5">
          {getTimelineDescription(event)}
        </p>
      </div>

      <RecentHistoryMedia media={media} />
    </article>
  );
};
