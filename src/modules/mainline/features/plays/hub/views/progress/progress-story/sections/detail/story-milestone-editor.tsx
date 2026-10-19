"use client";

import { useRef } from "react";

import { useBottomSheetLayout } from "@/shared/hooks/use-bottom-sheet-layout";
import {
  AlertDialog,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import { getStoryMilestoneEditorCopy } from "../../utils/story-milestone-editor";
import {
  StoryMilestoneEditorForm,
  type StoryMilestoneEditorSurface,
} from "./story-milestone-editor-form";

const desktopContentClassName =
  "max-h-[85dvh] gap-0 overflow-hidden p-0 sm:min-w-xl sm:max-w-xl";
const titleClassName = "text-24 outline-none";

const EditorKicker = ({ milestone }: { milestone: StoryMilestone | null }) =>
  milestone ? (
    <p className="text-ink-3 text-13 font-extrabold">
      Milestone {milestone.sequence} · {milestone.typeName}
    </p>
  ) : null;

/*
 * Recording a milestone, or changing what was recorded with it, is a quiet
 * form: a dialog on wide screens and a bottom sheet on phones and tablets.
 */
export const StoryMilestoneEditor = ({
  intent,
  milestone,
  onOpenChange,
  onSaved,
  open,
  playId,
  recordsTeam = false,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone | null;
  onOpenChange: (open: boolean) => void;
  onSaved: (message: string | null) => void;
  open: boolean;
  playId: string;
  /* Recording: start with "Record team snapshot" ticked. */
  recordsTeam?: boolean;
}) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useBottomSheetLayout();
  const copy = getStoryMilestoneEditorCopy(intent, milestone);
  const isOpen = open && Boolean(milestone);
  const form = (surface: StoryMilestoneEditorSurface) =>
    milestone ? (
      <StoryMilestoneEditorForm
        key={`${milestone.id}-${intent}-${open}-${surface}`}
        intent={intent}
        milestone={milestone}
        onSaved={onSaved}
        playId={playId}
        recordsTeam={recordsTeam}
        surface={surface}
      />
    ) : null;

  if (usesBottomSheet) {
    return (
      /*
       * BottomSheet's own look, built here because the form owns its footer.
       * Marking incomplete asks for an answer, so a tap outside never closes it.
       */
      <Sheet
        open={isOpen}
        onOpenChange={onOpenChange}
        disablePointerDismissal={intent === "incomplete"}
      >
        <SheetContent
          side="bottom"
          className="mx-auto max-h-[88dvh] w-full max-w-140 gap-0 data-[side=bottom]:rounded-t-xl"
          initialFocus={titleRef}
        >
          <span
            aria-hidden
            className="bg-line mx-auto mt-2.5 mb-0.5 h-1.25 w-11 shrink-0 rounded-full"
          />
          <SheetHeader className="gap-1 px-5 pt-3 pr-14 pb-2">
            <EditorKicker milestone={milestone} />
            <SheetTitle ref={titleRef} tabIndex={-1} className={titleClassName}>
              {copy.title}
            </SheetTitle>
            <SheetDescription>{copy.description}</SheetDescription>
          </SheetHeader>
          {form("sheet")}
        </SheetContent>
      </Sheet>
    );
  }

  if (intent === "incomplete") {
    return (
      <AlertDialog open={isOpen} onOpenChange={onOpenChange}>
        <AlertDialogContent
          className={desktopContentClassName}
          initialFocus={titleRef}
        >
          <AlertDialogHeader className="gap-1 p-6 pb-4">
            <EditorKicker milestone={milestone} />
            <AlertDialogTitle
              ref={titleRef}
              tabIndex={-1}
              className={titleClassName}
            >
              {copy.title}
            </AlertDialogTitle>
            <AlertDialogDescription>{copy.description}</AlertDialogDescription>
          </AlertDialogHeader>
          {form("alert-dialog")}
        </AlertDialogContent>
      </AlertDialog>
    );
  }

  return (
    <Dialog open={isOpen} onOpenChange={onOpenChange}>
      <DialogContent
        className={desktopContentClassName}
        initialFocus={titleRef}
      >
        <DialogHeader className="gap-1 p-6 pr-16 pb-4">
          <EditorKicker milestone={milestone} />
          <DialogTitle ref={titleRef} tabIndex={-1} className={titleClassName}>
            {copy.title}
          </DialogTitle>
          <DialogDescription>{copy.description}</DialogDescription>
        </DialogHeader>
        {form("dialog")}
      </DialogContent>
    </Dialog>
  );
};
