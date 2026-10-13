"use client";

import { useRef } from "react";

import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetTitle,
} from "@/shared/components/ui/sheet";

import type { StoryMilestoneActionIntent } from "../../server/story-milestone-action";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryMilestoneActions } from "./story-milestone-actions";
import { StoryMilestoneDetail } from "./story-milestone-detail";

/*
 * On phones and tablets a picked milestone opens in a bottom sheet: the same
 * detail, with its actions pinned to the foot.
 */
export const StoryMilestoneSheet = ({
  chapterName,
  milestone,
  onAction,
  onOpenChange,
  open,
  scope,
}: {
  chapterName: string | null;
  milestone: StoryMilestone | null;
  onAction: (
    milestone: StoryMilestone,
    intent: StoryMilestoneActionIntent,
  ) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  scope: StoryScope;
}) => {
  const titleRef = useRef<HTMLHeadingElement>(null);

  return (
    <Sheet open={open && Boolean(milestone)} onOpenChange={onOpenChange}>
      <SheetContent
        side="bottom"
        className="mx-auto max-h-[88dvh] w-full max-w-[560px] gap-0 lg:hidden"
        initialFocus={titleRef}
      >
        <span
          aria-hidden
          className="bg-line mx-auto mt-2.5 mb-0.5 h-[5px] w-11 shrink-0 rounded-full"
        />
        {milestone ? (
          <>
            <div className="min-h-0 flex-1 overflow-y-auto px-5 pt-2 pb-5">
              <StoryMilestoneDetail
                chapterName={chapterName}
                eyebrowClassName="pr-12"
                isNext={milestone.id === scope.nextMilestone?.id}
                milestone={milestone}
                milestoneCount={scope.milestoneCount}
                title={
                  <SheetTitle
                    ref={titleRef}
                    tabIndex={-1}
                    className="text-28 mt-2 mb-1.5 pr-12 leading-[1.05] outline-none"
                  >
                    {milestone.name}
                  </SheetTitle>
                }
              />
              <SheetDescription className="sr-only">
                Milestone {milestone.sequence} of {scope.milestoneCount} in{" "}
                {scope.label}
              </SheetDescription>
            </div>
            <SheetFooter className="border-line flex-row border-t px-5 py-3 pb-[calc(0.75rem+env(safe-area-inset-bottom,0px))] *:flex-1">
              <StoryMilestoneActions
                isNext={milestone.id === scope.nextMilestone?.id}
                milestone={milestone}
                onAction={(intent) => onAction(milestone, intent)}
                className="justify-center sm:w-full"
              />
            </SheetFooter>
          </>
        ) : (
          <SheetTitle ref={titleRef} tabIndex={-1} className="sr-only">
            Story milestone
          </SheetTitle>
        )}
      </SheetContent>
    </Sheet>
  );
};
