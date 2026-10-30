"use client";

import { useState } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { Button } from "@/shared/components/ui/button";
import { SheetTitle } from "@/shared/components/ui/sheet";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import type { StoryMilestone, StoryScope } from "../../types";
import { StoryBattleReport } from "../battles/story-battle-report";
import { getStoryRouteStopId } from "../route/story-route-stop";
import {
  StoryMilestoneActions,
  type StoryMilestoneChoice,
} from "./story-milestone-actions";
import { StoryMilestoneBattles } from "./story-milestone-battles";
import { StoryMilestoneDetail } from "./story-milestone-detail";

const reportTitleId = "story-battle-report-title";

/*
 * A milestone opened from Story's route: from the right edge from 1024px,
 * from the bottom below. Its marker and name head it; then where it stands,
 * what it asks, what has to come first and what was recorded with it, and
 * its battles one line each, with Record (or Edit, once recorded) pinned to
 * its foot. A battle opens its report in the same sheet, with a way back to
 * the milestone, so the route behind never changes.
 */
export const StoryMilestoneSheet = ({
  battles,
  chapterName,
  milestone,
  onAction,
  onOpenChange,
  open,
  returnsFocus,
  scope,
}: {
  /* The battles at this milestone. */
  battles: StoryMatchupBattle[];
  chapterName: string | null;
  milestone: StoryMilestone | null;
  onAction: (milestone: StoryMilestone, choice: StoryMilestoneChoice) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  /*
   * False while what it opened (the editor, a confirm) holds focus, so
   * closing the sheet behind it never pulls focus out from under it.
   */
  returnsFocus: boolean;
  scope: StoryScope;
}) => {
  /* The battle whose report is open in the sheet; none shows the milestone. */
  const [openBattleId, setOpenBattleId] = useState<string | null>(null);
  const openBattle =
    battles.find((battle) => battle.id === openBattleId) ?? null;
  const isOpen = open && Boolean(milestone);
  const close = (next: boolean) => {
    if (!next) {
      setOpenBattleId(null);
    }

    onOpenChange(next);
  };

  return (
    <ResponsiveDetailSheet
      open={isOpen}
      onOpenChange={close}
      label={openBattle?.name ?? milestone?.name ?? "Story milestone"}
      /* Back to the stop that opened it, when it is still on the page. */
      finalFocus={
        returnsFocus
          ? () =>
              milestone
                ? document.getElementById(getStoryRouteStopId(milestone.id))
                : null
          : false
      }
      head={
        openBattle && milestone ? (
          <div className="grid gap-3">
            <Button
              type="button"
              variant="ghost"
              size="sm"
              className="justify-self-start"
              onClick={() => setOpenBattleId(null)}
            >
              <AppIcon icon={appIcons.actions.back} inline="start" />
              Back to {milestone.name}
            </Button>
            {/* The report carries the visible title; the sheet is named all the same. */}
            <SheetTitle className="sr-only">{openBattle.name}</SheetTitle>
          </div>
        ) : (
          <div className="flex items-center gap-4">
            {milestone ? (
              <MilestoneMarker
                badgeType={milestone.badgeType}
                sequence={milestone.sequence}
                size="lg"
                state={
                  milestone.isCompleted
                    ? "done"
                    : milestone.id === scope.nextMilestone?.id
                      ? "next"
                      : "todo"
                }
                typeSlug={milestone.typeSlug}
              />
            ) : null}
            <SheetTitle className="text-24">
              {milestone?.name ?? "Story milestone"}
            </SheetTitle>
          </div>
        )
      }
      footer={
        milestone ? (
          <StoryMilestoneActions
            milestone={milestone}
            onAction={(choice) => onAction(milestone, choice)}
            className="sm:w-full"
          />
        ) : undefined
      }
    >
      {openBattle ? (
        <section aria-labelledby={reportTitleId}>
          <StoryBattleReport battle={openBattle} titleId={reportTitleId} />
        </section>
      ) : milestone ? (
        <>
          <StoryMilestoneDetail
            chapterName={chapterName}
            isNext={milestone.id === scope.nextMilestone?.id}
            milestone={milestone}
            totalCount={scope.totalCount}
          />
          <StoryMilestoneBattles
            battles={battles}
            onSelect={(battle) => setOpenBattleId(battle.id)}
          />
        </>
      ) : null}
    </ResponsiveDetailSheet>
  );
};
