import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { getTeamEventDisplay } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";

import { TeamHistoryEventText } from "../../components/team-history-event-text";
import { TeamHistoryEventType } from "../../components/team-history-event-type";
import { TeamHistoryEventVisuals } from "../../components/team-history-event-visuals";
import { formatTeamHistoryDate } from "../../utils/team-history-date";

type TeamHistoryRowProps = {
  event: MainlinePlayTimelineEvent;
};

export const TeamHistoryRow = ({ event }: TeamHistoryRowProps) => {
  const display = getTeamEventDisplay(event);
  const date = formatTeamHistoryDate(event);
  const eventDetails =
    event.body ?? event.title ?? "Recorded Team change in Voydex.";

  return (
    <li className="relative pl-5">
      <span
        className="bg-card absolute top-8 left-0 z-10 flex size-4 -translate-x-1/2 -translate-y-1/2 items-center justify-center rounded-full md:top-1/2"
        aria-hidden
      >
        <span className="bg-primary size-2 rounded-full" />
      </span>

      <article className="border-line relative grid min-w-0 grid-cols-1 gap-x-3 gap-y-3 border-b px-3 py-4 md:grid-cols-[5.75rem_5.75rem_minmax(0,1fr)_auto] md:items-center md:px-4 lg:grid-cols-[6.5rem_6.25rem_minmax(16rem,1fr)_minmax(18rem,auto)] lg:gap-x-5">
        <time
          dateTime={date.dateTime}
          className="text-muted-foreground col-start-1 row-start-1 grid self-center text-xs leading-5"
        >
          <span>{date.date}</span>
          {date.time ? <span>{date.time}</span> : null}
        </time>

        <TeamHistoryEventType
          compact
          display={display}
          className="col-start-1 row-start-2 self-center justify-self-start md:col-start-2 md:row-start-1 md:flex-col md:justify-center md:gap-1.5 md:justify-self-center"
        />

        <div className="col-start-1 row-start-3 grid min-w-0 content-center gap-1 md:col-start-3 md:row-start-1 lg:col-start-3">
          <TeamHistoryEventText parts={display.text} />
          <p className="text-muted-foreground text-xs leading-5">
            {eventDetails}
          </p>
        </div>

        <TeamHistoryEventVisuals
          visuals={display.visuals}
          className="col-start-1 row-start-4 min-w-0 md:col-start-4 md:row-start-1 md:justify-self-end lg:col-start-4"
        />
      </article>
    </li>
  );
};
