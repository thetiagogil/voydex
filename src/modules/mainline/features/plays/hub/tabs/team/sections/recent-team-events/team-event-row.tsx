import { formatTimelineDate } from "@/modules/mainline/features/plays/hub/tabs/overview/sections/recent-history/recent-history-date";
import { getTeamEventDisplay } from "@/modules/mainline/features/plays/hub/tabs/team/sections/recent-team-events/team-event-display";
import { TeamEventMedia } from "@/modules/mainline/features/plays/hub/tabs/team/sections/recent-team-events/team-event-media";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { AppIcon } from "@/shared/components/app-icon";

export const TeamEventRow = ({
  event,
}: {
  event: MainlinePlayTimelineEvent;
}) => {
  const display = getTeamEventDisplay(event);
  const timelineDate = formatTimelineDate(event);
  const machineDate = event.happened_at ?? event.created_at ?? undefined;

  return (
    <article className="grid min-w-0 grid-cols-[2.5rem_minmax(0,1fr)_auto] items-center gap-x-3 gap-y-1.5 py-3 sm:grid-cols-[1.5rem_5rem_2.5rem_minmax(0,1fr)_auto]">
      <div className="relative hidden h-full min-h-10 justify-items-center sm:grid">
        <span className="bg-card relative z-10 flex size-4 items-center justify-center place-self-center rounded-full">
          <span className="bg-primary size-2 rounded-full" aria-hidden />
        </span>
      </div>

      <time
        dateTime={machineDate}
        title={timelineDate.dateTime}
        className="text-muted-foreground col-span-2 col-start-2 row-start-1 flex min-w-0 gap-1.5 text-xs leading-5 sm:col-span-1 sm:col-start-2 sm:grid sm:gap-0"
      >
        <span className="truncate">{timelineDate.date}</span>
        <span className="truncate">{timelineDate.time}</span>
      </time>

      <span
        className="border-app-surface-border bg-muted/30 text-primary col-start-1 row-start-2 flex size-10 items-center justify-center rounded-full border sm:col-start-3 sm:row-start-1"
        title={event.event_type_name ?? "Team event"}
      >
        <AppIcon icon={display.icon} size="sm" aria-hidden />
      </span>

      <p className="text-foreground col-start-2 row-start-2 min-w-0 text-xs leading-5 sm:col-start-4 sm:row-start-1">
        {display.text.map((part, index) =>
          part.emphasized ? (
            <strong key={`${part.text}-${index}`} className="font-semibold">
              {part.text}
            </strong>
          ) : (
            <span key={`${part.text}-${index}`}>{part.text}</span>
          ),
        )}
      </p>

      <div className="col-start-3 row-start-2 sm:col-start-5 sm:row-start-1">
        <TeamEventMedia visuals={display.visuals} />
      </div>
    </article>
  );
};
