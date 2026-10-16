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
import { StampGrid } from "@/modules/mainline/features/plays/shared/components/stamp-grid";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

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
  size?: ComponentProps<typeof Button>["size"];
  toastMessage?: string;
}) => {
  const { record, startSlap } = useOverviewRecording();
  const isSaving =
    record.isPending && record.pendingMilestoneId === milestoneId;

  return (
    <Button
      type="button"
      size={size}
      disabled={record.isPending}
      aria-busy={isSaving}
      className={cn(
        size === "lg" &&
          "h-auto min-h-13 py-3 text-left whitespace-normal sm:whitespace-nowrap",
        className,
      )}
      onClick={() =>
        record.record(
          { id: milestoneId, name: milestoneName },
          { decisionOptionId, onRecorded: startSlap, toastMessage },
        )
      }
    >
      {isSaving ? (
        <Spinner data-icon="inline-start" />
      ) : (
        <AppIcon icon={appIcons.status.active} />
      )}
      {label ?? `Record ${milestoneName}`}
    </Button>
  );
};

/* The badge case's stamps; the one just recorded slaps down once. */
export const OverviewStampGrid = (
  props: Omit<
    ComponentProps<typeof StampGrid>,
    "onSlapEnd" | "slappingMilestoneId"
  >,
) => {
  const { endSlap, slappingMilestoneId } = useOverviewRecording();

  return (
    <StampGrid
      {...props}
      slappingMilestoneId={slappingMilestoneId}
      onSlapEnd={endSlap}
    />
  );
};
