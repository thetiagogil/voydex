"use client";

import { useState } from "react";
import { toast } from "sonner";

import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import { StoryMilestoneEditor } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/sections/detail/story-milestone-editor";
import { RecordMilestoneButton } from "@/modules/mainline/features/plays/shared/components/record-milestone-button";

type DecisionMilestone = NonNullable<
  MainlinePlayOverviewData["nextDecisionMilestone"]
>;

/*
 * The main button for a choice milestone (Choose Starter) outside Story: it
 * opens Story's record form right where you are, so the choice is made
 * without leaving the page.
 */
export const MilestoneDecisionRecordButton = ({
  milestone,
  playId,
}: {
  milestone: DecisionMilestone;
  playId: string;
}) => {
  const [open, setOpen] = useState(false);

  return (
    <>
      <RecordMilestoneButton
        label={`Record ${milestone.name}`}
        onClick={() => setOpen(true)}
      />
      <StoryMilestoneEditor
        intent="complete"
        milestone={milestone}
        onOpenChange={setOpen}
        onSaved={() => {
          setOpen(false);
          toast.success(`${milestone.name} recorded`);
        }}
        open={open}
        playId={playId}
      />
    </>
  );
};
