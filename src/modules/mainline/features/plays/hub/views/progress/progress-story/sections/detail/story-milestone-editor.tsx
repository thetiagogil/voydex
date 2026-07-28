"use client";

import { useRef } from "react";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
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
import { StoryMilestoneEditorForm } from "./story-milestone-editor-form";

const storyMilestoneEditorDesktopContentClassName =
  "max-h-[85dvh] gap-0 overflow-hidden p-0 sm:min-w-xl sm:max-w-xl";

export const StoryMilestoneEditor = ({
  intent,
  milestone,
  onOpenChange,
  open,
  playId,
}: {
  intent: StoryMilestoneActionIntent;
  milestone: StoryMilestone | null;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  playId: string;
}) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const usesBottomSheet = useMainlinePlayDetailSheetLayout();
  const copy = getStoryMilestoneEditorCopy(intent, milestone);
  const isOpen = open && Boolean(milestone);

  if (usesBottomSheet) {
    return (
      <Sheet open={isOpen} onOpenChange={onOpenChange}>
        <SheetContent
          side="bottom"
          className="border-app-surface-border bg-popover max-h-[82dvh] gap-0 rounded-t-xl p-0"
          initialFocus={titleRef}
        >
          <SheetHeader className="border-app-surface-border/60 border-b pr-12">
            <SheetTitle ref={titleRef} tabIndex={-1} className="outline-none">
              {copy.title}
            </SheetTitle>
            <SheetDescription>{copy.description}</SheetDescription>
          </SheetHeader>

          {milestone ? (
            <StoryMilestoneEditorForm
              key={`${milestone.id}-${intent}-${open}-sheet`}
              intent={intent}
              milestone={milestone}
              onCompleted={() => onOpenChange(false)}
              playId={playId}
              surface="sheet"
            />
          ) : null}
        </SheetContent>
      </Sheet>
    );
  }

  if (intent === "incomplete") {
    return (
      <AlertDialog open={isOpen} onOpenChange={onOpenChange}>
        <AlertDialogContent
          className={storyMilestoneEditorDesktopContentClassName}
          initialFocus={titleRef}
        >
          <AlertDialogHeader className="p-5">
            <AlertDialogTitle
              ref={titleRef}
              tabIndex={-1}
              className="outline-none"
            >
              {copy.title}
            </AlertDialogTitle>
            <AlertDialogDescription>{copy.description}</AlertDialogDescription>
          </AlertDialogHeader>

          {milestone ? (
            <StoryMilestoneEditorForm
              key={`${milestone.id}-${intent}-${open}-alert-dialog`}
              intent={intent}
              milestone={milestone}
              onCompleted={() => onOpenChange(false)}
              playId={playId}
              surface="alert-dialog"
            />
          ) : null}
        </AlertDialogContent>
      </AlertDialog>
    );
  }

  return (
    <Dialog open={isOpen} onOpenChange={onOpenChange}>
      <DialogContent
        className={storyMilestoneEditorDesktopContentClassName}
        initialFocus={titleRef}
      >
        <DialogHeader className="p-5 pr-12">
          <DialogTitle ref={titleRef} tabIndex={-1} className="outline-none">
            {copy.title}
          </DialogTitle>
          <DialogDescription>{copy.description}</DialogDescription>
        </DialogHeader>

        {milestone ? (
          <StoryMilestoneEditorForm
            key={`${milestone.id}-${intent}-${open}-dialog`}
            intent={intent}
            milestone={milestone}
            onCompleted={() => onOpenChange(false)}
            playId={playId}
            surface="dialog"
          />
        ) : null}
      </DialogContent>
    </Dialog>
  );
};
