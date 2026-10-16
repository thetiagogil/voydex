"use client";

import { useRef } from "react";

import { BottomSheet } from "@/shared/components/bottom-sheet";
import { SheetTitle } from "@/shared/components/ui/sheet";

import type { StoryMilestone, StoryScope } from "../../types";
import {
  StoryMilestoneActions,
  type StoryMilestoneChoice,
} from "./story-milestone-actions";
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
  onAction: (milestone: StoryMilestone, choice: StoryMilestoneChoice) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  scope: StoryScope;
}) => {
  const titleRef = useRef<HTMLHeadingElement>(null);
  const isNext = milestone?.id === scope.nextMilestone?.id;

  return (
    <BottomSheet
      open={open && Boolean(milestone)}
      onOpenChange={onOpenChange}
      className="lg:hidden"
      initialFocus={titleRef}
      label={milestone?.name ?? "Story milestone"}
      description={
        milestone
          ? `Milestone ${milestone.sequence} of ${scope.milestoneCount} in ${scope.label}`
          : undefined
      }
      descriptionHidden
      footer={
        milestone ? (
          <StoryMilestoneActions
            milestone={milestone}
            onAction={(intent) => onAction(milestone, intent)}
            className="justify-center sm:w-full"
          />
        ) : undefined
      }
    >
      {milestone ? (
        <StoryMilestoneDetail
          chapterName={chapterName}
          eyebrowClassName="pr-12"
          isNext={isNext}
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
      ) : (
        <SheetTitle ref={titleRef} tabIndex={-1} className="sr-only">
          Story milestone
        </SheetTitle>
      )}
    </BottomSheet>
  );
};
