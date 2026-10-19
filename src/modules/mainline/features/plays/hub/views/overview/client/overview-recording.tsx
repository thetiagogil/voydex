"use client";

import {
  createContext,
  useContext,
  useMemo,
  useState,
  type ReactNode,
} from "react";

import { useRecordMilestone } from "@/modules/mainline/features/plays/hub/client/use-record-milestone";
import { RecordMilestoneButton } from "@/modules/mainline/features/plays/shared/components/record-milestone-button";

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
 * recorded, whose stamp slaps once on the next objective.
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
  instant,
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
  /*
   * Records at once (the next objective): its stamp slaps and the toast
   * shows straight away while it saves, as Story's Record does.
   */
  instant?: { keepsSnapshot: boolean; toastMessage: string };
}) => {
  const { endSlap, record, startSlap } = useOverviewRecording();
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
        instant
          ? record.recordInstant(
              { id: milestoneId, name: milestoneName },
              {
                earlierMilestoneIds: [],
                includeTeam: false,
                keepsSnapshot: instant.keepsSnapshot,
                onChange: (_milestoneIds, recorded) =>
                  recorded ? startSlap(milestoneId) : endSlap(),
                toastMessage: instant.toastMessage,
              },
            )
          : record.record(
              { id: milestoneId, name: milestoneName },
              { decisionOptionId, onRecorded: startSlap, toastMessage },
            )
      }
    />
  );
};
