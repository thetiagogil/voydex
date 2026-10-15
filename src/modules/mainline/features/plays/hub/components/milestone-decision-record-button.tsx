"use client";

import { useState } from "react";
import { toast } from "sonner";

import type { MainlinePlayOverviewData } from "@/modules/mainline/features/plays/hub/types";
import { StoryMilestoneEditor } from "@/modules/mainline/features/plays/hub/views/progress/progress-story/sections/detail/story-milestone-editor";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

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
      <Button
        type="button"
        size="lg"
        className="h-auto min-h-13 py-3 text-left whitespace-normal sm:whitespace-nowrap"
        onClick={() => setOpen(true)}
      >
        <AppIcon icon={appIcons.status.active} />
        Record {milestone.name}
      </Button>
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
