import { Fragment, type ReactNode } from "react";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { cn } from "@/shared/utils/cn";

import {
  getTeamEventRecord,
  type TeamEventTypeByFormId,
} from "./team-event-record";

type TeamEventRecordRowProps = {
  className?: string;
  event: MainlinePlayTimelineEvent;
  typeByFormId?: TeamEventTypeByFormId;
  /* When it happened, after the kind in the kicker. */
  when?: ReactNode;
};

/* One Team moment as a record row, the same wherever the team's moments show. */
export const TeamEventRecordRow = ({
  className,
  event,
  typeByFormId,
  when,
}: TeamEventRecordRowProps) => {
  const record = getTeamEventRecord(event, typeByFormId);

  return (
    <RecordRow
      className={cn(
        record.faded && "[&_img]:opacity-75 [&_img]:saturate-30",
        className,
      )}
      kicker={
        when ? (
          <>
            {record.label} · {when}
          </>
        ) : (
          record.label
        )
      }
      headline={record.headline.map((part, index) =>
        part.emphasized ? (
          <b key={`${part.text}-${index}`}>{part.text}</b>
        ) : (
          <Fragment key={`${part.text}-${index}`}>{part.text}</Fragment>
        ),
      )}
      description={record.description}
      medallion={record.medallion}
    />
  );
};
