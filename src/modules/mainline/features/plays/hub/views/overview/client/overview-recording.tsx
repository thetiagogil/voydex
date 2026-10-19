"use client";

import {
  createContext,
  useContext,
  useMemo,
  useState,
  type ComponentProps,
  type ReactNode,
} from "react";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { RecordMilestoneButton } from "@/modules/mainline/features/plays/shared/components/record-milestone-button";
import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import { createStampOrder } from "@/modules/mainline/features/plays/shared/data/play-stamps";

type OverviewRecordingState = {
  endSlap: () => void;
  record: ReturnType<typeof useRecordMilestone>;
  slappingMilestoneId: number | null;
  startSlap: (milestoneId: number) => void;
};

const OverviewRecordingContext = createContext<OverviewRecordingState | null>(
  null,
);

const useOverviewRecording = () => {
  const state = useContext(OverviewRecordingContext);

  if (!state) {
    throw new Error("Overview recording needs its provider.");
  }

  return state;
};

/*
 * What Overview's Record shares across its sections: the milestone just
 * recorded, whose stamp slaps once in the badge case when the page redraws.
 */
export const OverviewRecordingProvider = ({
  children,
  playId,
}: {
  children: ReactNode;
  playId: string;
}) => {
  const record = useRecordMilestone(playId);
  const [slappingMilestoneId, setSlappingMilestoneId] = useState<number | null>(
    null,
  );
  const value = useMemo(
    () => ({
      endSlap: () => setSlappingMilestoneId(null),
      record,
      slappingMilestoneId,
      startSlap: setSlappingMilestoneId,
    }),
    [record, slappingMilestoneId],
  );

  return (
    <OverviewRecordingContext.Provider value={value}>
      {children}
    </OverviewRecordingContext.Provider>
  );
};

/* The milestone Overview recorded a moment ago, for the next objective's hand-over. */
export const useOverviewJustRecorded = () =>
  useOverviewRecording().slappingMilestoneId;

/* The page's main button: records the milestone where you are. */
export const OverviewRecordButton = ({
  className,
  decisionOptionId = null,
  label,
  milestoneId,
  milestoneName,
  size = "lg",
  toastMessage,
}: {
  className?: string;
  decisionOptionId?: number | null;
  /* Defaults to "Record {name}". */
  label?: string;
  milestoneId: number;
  milestoneName: string;
  size?: "lg" | "sm";
  toastMessage?: string;
}) => {
  const { record, startSlap } = useOverviewRecording();
  const isSaving =
    record.isPending && record.pendingMilestoneId === milestoneId;

  return (
    <RecordMilestoneButton
      size={size}
      disabled={record.isPending}
      pending={isSaving}
      className={className}
      label={label ?? `Record ${milestoneName}`}
      onClick={() =>
        record.record(
          { id: milestoneId, name: milestoneName },
          { decisionOptionId, onRecorded: startSlap, toastMessage },
        )
      }
    />
  );
};

/* The badge case's stamps; the one just recorded slaps down once. */
export const OverviewStampGrid = (
  props: Omit<ComponentProps<typeof StampGrid>, "onSlapEnd" | "slapOrder">,
) => {
  const { endSlap, slappingMilestoneId } = useOverviewRecording();
  const slapOrder = useMemo(
    () =>
      createStampOrder(
        slappingMilestoneId === null ? [] : [slappingMilestoneId],
      ),
    [slappingMilestoneId],
  );

  return <StampGrid {...props} slapOrder={slapOrder} onSlapEnd={endSlap} />;
};
