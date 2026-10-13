import { PlayMomentRow } from "@/modules/mainline/features/plays/hub/components/play-moment-row";
import { RangeHeading } from "@/shared/components/range-heading";
import { Card } from "@/shared/components/ui/card";

import {
  getTeamHistoryEventKey,
  type TeamHistoryMonth,
} from "../../data/team-history-model";

/*
 * A month: its heading on the page, then its moments between rules in one
 * card. Each record stays readable at every width, so its line and note wrap
 * instead of truncating.
 */
export const TeamHistoryMonthSection = ({
  month,
}: {
  month: TeamHistoryMonth;
}) => {
  const headingId = `team-history-${month.key}`;
  const count = month.entries.length;

  return (
    <section aria-labelledby={headingId} className="min-w-0">
      <RangeHeading
        headingLevel={3}
        title={month.label}
        titleId={headingId}
        count={`${count} ${count === 1 ? "moment" : "moments"}`}
      />

      <Card className="mt-3.5 gap-0 px-5 py-1.5 sm:px-7 sm:py-3">
        <ol className="divide-line grid min-w-0 divide-y">
          {month.entries.map(({ date, event }, index) => (
            <li key={getTeamHistoryEventKey(event, index)} className="min-w-0">
              <PlayMomentRow
                event={event}
                wrap
                when={
                  date.moment ? (
                    <time dateTime={date.moment.dateTime}>
                      {date.moment.day} · {date.moment.time}
                    </time>
                  ) : undefined
                }
              />
            </li>
          ))}
        </ol>
      </Card>
    </section>
  );
};
