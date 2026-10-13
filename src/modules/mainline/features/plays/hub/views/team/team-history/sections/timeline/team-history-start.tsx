import { Medallion } from "@/modules/mainline/features/plays/shared/components/medallion";
import { appIcons } from "@/shared/components/app-icon";

import { formatTeamHistoryCalendarDate } from "../../utils/team-history-date";

/*
 * Where the Play began: a boundary, not a record, so it has no card. Only its
 * medallion and kicker wear the Play's colour. Its sides match the month cards' padding,
 * so this medallion lines up with theirs.
 */
export const TeamHistoryStart = ({
  startedOn,
}: {
  startedOn: string | null;
}) => {
  const startedOnLabel = startedOn
    ? formatTeamHistoryCalendarDate(startedOn)
    : null;

  return (
    <div className="flex min-w-0 items-center gap-4 px-5 py-4.5 sm:px-7">
      <Medallion content={{ icon: appIcons.milestones.story, kind: "start" }} />
      <div className="grid min-w-0 gap-0.5">
        <p className="text-game-deep text-[12.5px] font-bold">
          {startedOnLabel ? `Play started · ${startedOnLabel}` : "Play started"}
        </p>
        <h3 className="text-20 leading-tight tracking-[-0.01em] sm:text-[22px]">
          The journey began
        </h3>
      </div>
    </div>
  );
};
