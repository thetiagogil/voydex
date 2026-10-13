import { Fragment, type ReactNode } from "react";

import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/hub/types";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";

import {
  getTeamEventRecord,
  type TeamEventTypeByFormId,
} from "./team-event-record";

type TeamEventRecordRowProps = {
  event: MainlinePlayTimelineEvent;
  typeByFormId?: TeamEventTypeByFormId;
  /* When it happened, after the kind in the kicker. */
  when?: ReactNode;
  /* Let the line and note wrap in full. */
  wrap?: boolean;
};

/* One Team moment as a record row, the same wherever the team's moments show. */
export const TeamEventRecordRow = ({
  event,
  typeByFormId,
  when,
  wrap,
}: TeamEventRecordRowProps) => {
  const record = getTeamEventRecord(event, typeByFormId);

  return (
    <RecordRow
      medallionFaded={record.faded}
      wrap={wrap}
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
