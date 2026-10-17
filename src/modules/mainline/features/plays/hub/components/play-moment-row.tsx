import { Fragment, type ReactNode } from "react";

import {
  getPlayMomentRecord,
  type PlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";

type PlayMomentRowProps = {
  context?: PlayMomentContext;
  event: MainlinePlayTimelineEvent;
  /* When it happened, after the kind in the kicker. */
  when?: ReactNode;
  /* Let the line and note wrap in full. */
  wrap?: boolean;
};

/* One recorded moment as a record row, the same wherever moments show. */
export const PlayMomentRow = ({
  context,
  event,
  when,
  wrap,
}: PlayMomentRowProps) => {
  const record = getPlayMomentRecord(event, context);

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
