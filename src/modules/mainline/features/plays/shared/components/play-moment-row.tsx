import { Fragment, type ReactNode } from "react";

import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import {
  getPlayMomentRecord,
  type PlayMomentContext,
} from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";

type PlayMomentRowProps = {
  context?: PlayMomentContext;
  event: MainlinePlayTimelineEvent;
  /* On a timeline, `grid` for a moment in History's month grid. */
  placement?: "grid" | "line";
  /* `timeline`: on a timeline's line, its words in a card of their own. */
  variant?: "row" | "timeline";
  /* When it happened, after the kind in the kicker. */
  when?: ReactNode;
  /* Let the line and note wrap in full. */
  wrap?: boolean;
};

/* One recorded moment as a record row, the same wherever moments show. */
export const PlayMomentRow = ({
  context,
  event,
  placement,
  variant,
  when,
  wrap,
}: PlayMomentRowProps) => {
  const record = getPlayMomentRecord(event, context);
  const onTimeline = variant === "timeline";

  return (
    <RecordRow
      medallionFaded={record.faded}
      placement={placement}
      variant={variant}
      when={onTimeline ? when : undefined}
      wrap={wrap}
      kicker={
        when && !onTimeline ? (
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
