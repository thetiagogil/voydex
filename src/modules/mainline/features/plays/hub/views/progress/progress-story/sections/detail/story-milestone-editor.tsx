"use client";

import { useActionState, useEffect, useRef, useState } from "react";
import { useRouter } from "next/navigation";

import { OverlayDialog } from "@/shared/components/overlay-dialog";
import { OverlayFrame } from "@/shared/components/overlay-frame";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
} from "@/shared/components/ui/alert-dialog";
import { Button } from "@/shared/components/ui/button";
import { DialogClose } from "@/shared/components/ui/dialog";
import { SheetClose } from "@/shared/components/ui/sheet";

import {
  type StoryMilestoneActionIntent,
  type StoryMilestoneActionState,
  updateStoryMilestoneAction,
} from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import { getStoryRouteStopId } from "../route/story-route-stop";
import { getStoryMilestoneEditorCopy } from "../../utils/story-milestone-editor";
import {
  StoryMilestoneEditorFields,
  StoryMilestoneSubmitButton,
} from "./story-milestone-editor-form";

const initialStoryMilestoneActionState: StoryMilestoneActionState = {
  message: null,
  status: "idle",
};

/*
 * Recording a milestone, or changing what was recorded with it, is a quiet
 * form: a dialog on wide screens and a bottom sheet on phones and tablets.
 * Marking one incomplete asks first, so wide screens make it a confirm.
 */
export const StoryMilestoneEditor = ({
  intent,
  milestone,
  onOpenChange,
  onSaved,
  open,
  playId,
  recordsEarlier = true,
  recordsTeam = false,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone | null;
  onOpenChange: (open: boolean) => void;
  /* The save's message and the milestones it recorded or cleared. */
  onSaved: (message: string | null, milestoneIds: number[]) => void;
  open: boolean;
  playId: string;
  /* Recording: start with "Also record the N before it" ticked (the default). */
  recordsEarlier?: boolean;
  /* Recording: start with "Record team snapshot" ticked. */
  recordsTeam?: boolean;
}) => {
  const router = useRouter();
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useBottomSheetLayout();
  const [state, formAction] = useActionState(
    updateStoryMilestoneAction,
    initialStoryMilestoneActionState,
  );
  const handledStateRef = useRef<StoryMilestoneActionState | null>(null);
  /* Each opening starts clean: the fields remount, and an old error is not shown. */
  const isOpen = open && Boolean(milestone);
  const [session, setSession] = useState({ isOpen, count: 0, baseline: state });
  const copy = getStoryMilestoneEditorCopy(intent, milestone);

  if (isOpen !== session.isOpen) {
    setSession({
      baseline: state,
      count: isOpen ? session.count + 1 : session.count,
      isOpen,
    });
  }

  const shownState =
    state === session.baseline ? initialStoryMilestoneActionState : state;

  useEffect(() => {
    if (state.status !== "success" || handledStateRef.current === state) {
      return;
    }

    handledStateRef.current = state;
    onSaved(state.message, state.milestoneIds ?? []);
    router.refresh();
  }, [onSaved, router, state]);

  /* Back to the milestone's stop on the route, as its sheet does. */
  const returnFocus = () =>
    milestone
      ? document.getElementById(getStoryRouteStopId(milestone.id))
      : null;
  const fields = milestone ? (
    <StoryMilestoneEditorFields
      key={`${milestone.id}-${intent}-${session.count}`}
      intent={intent}
      milestone={milestone}
      playId={playId}
      recordsEarlier={recordsEarlier}
      recordsTeam={recordsTeam}
      state={shownState}
    />
  ) : null;
  const submit = <StoryMilestoneSubmitButton copy={copy} intent={intent} />;

  if (usesBottomSheet) {
    return (
      <OverlaySheet
        open={isOpen}
        onOpenChange={onOpenChange}
        finalFocus={returnFocus}
        title={copy.title}
        description={copy.description}
        form={{ action: formAction }}
        footer={
          <>
            <SheetClose render={<Button type="button" variant="secondary" />}>
              Cancel
            </SheetClose>
            {submit}
          </>
        }
      >
        {fields}
      </OverlaySheet>
    );
  }

  if (intent === "incomplete") {
    return (
      /* A confirm stays an AlertDialog; its inside is the dialog's frame. */
      <AlertDialog open={isOpen} onOpenChange={onOpenChange}>
        <AlertDialogContent
          className="flex max-h-[85dvh] flex-col gap-0 overflow-hidden p-0 sm:max-w-lg"
          initialFocus={titleRef}
          finalFocus={returnFocus}
        >
          <OverlayFrame
            placement="dialog"
            titleRef={titleRef}
            title={copy.title}
            description={copy.description}
            form={{ action: formAction }}
            footer={
              <>
                <AlertDialogCancel type="button">Cancel</AlertDialogCancel>
                {submit}
              </>
            }
          >
            {fields}
          </OverlayFrame>
        </AlertDialogContent>
      </AlertDialog>
    );
  }

  return (
    <OverlayDialog
      open={isOpen}
      onOpenChange={onOpenChange}
      finalFocus={returnFocus}
      size="lg"
      title={copy.title}
      description={copy.description}
      form={{ action: formAction }}
      footer={
        <>
          <DialogClose render={<Button type="button" variant="secondary" />}>
            Cancel
          </DialogClose>
          {submit}
        </>
      }
    >
      {fields}
    </OverlayDialog>
  );
};
