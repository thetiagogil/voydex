"use client";

import { useRef } from "react";

import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone } from "../../types";
import { StoryMilestoneDetails } from "./story-milestone-details";
import { StoryMilestoneIdentity } from "./story-milestone-identity";

export const StoryMilestoneSheet = ({
  milestone,
  onAction,
  onOpenChange,
  open,
}: {
  milestone: StoryMilestone | null;
  onAction: (intent: StoryMilestoneActionIntent) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
}) => {
  const titleRef = useRef<HTMLHeadingElement>(null);

  return (
    <Sheet open={open && Boolean(milestone)} onOpenChange={onOpenChange}>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover max-h-[82dvh] gap-0 rounded-t-xl p-0 lg:hidden"
        initialFocus={titleRef}
      >
        <SheetHeader className="pr-12">
          {milestone ? (
            <StoryMilestoneIdentity
              milestone={milestone}
              title={
                <SheetTitle
                  ref={titleRef}
                  tabIndex={-1}
                  className="font-serif text-lg font-semibold outline-none"
                >
                  {milestone.name}
                </SheetTitle>
              }
            />
          ) : (
            <SheetTitle ref={titleRef} tabIndex={-1} className="outline-none">
              Story milestone
            </SheetTitle>
          )}
          <SheetDescription className="sr-only">
            {milestone
              ? `Milestone ${milestone.sequence} details`
              : "Story milestone details"}
          </SheetDescription>
        </SheetHeader>

        {milestone ? (
          <div className="min-h-0 flex-1 overflow-y-auto px-4 py-4 pb-6">
            <StoryMilestoneDetails milestone={milestone} onAction={onAction} />
          </div>
        ) : null}
      </SheetContent>
    </Sheet>
  );
};
