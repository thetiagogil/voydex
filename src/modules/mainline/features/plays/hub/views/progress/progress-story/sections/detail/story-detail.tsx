"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import { MilestoneMarker } from "@/modules/mainline/features/plays/shared/components/milestone-marker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { OverlaySheet } from "@/shared/components/overlay-sheet";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import type { StoryMilestone, StoryPlace, StoryScope } from "../../types";
import { StoryBattleReport } from "../battles/story-battle-report";
import {
  getStoryRoutePlaceId,
  getStoryRouteStopId,
} from "../route/story-route-stop";
import {
  StoryMilestoneActions,
  type StoryMilestoneChoice,
} from "./story-milestone-actions";
import {
  getStoryBattleRowId,
  StoryMilestoneBattles,
} from "./story-milestone-battles";
import { StoryMilestoneDetail } from "./story-milestone-detail";
import { StoryPlaceDetail } from "./story-place-detail";

/* What the detail shows: a milestone, or a place on the way to one. */
export type StoryDetailTarget =
  | { kind: "milestone"; milestone: StoryMilestone }
  | {
      key: string;
      kind: "place";
      place: StoryPlace;
      /* The milestone the route reaches next from the place. */
      toward: StoryMilestone | null;
    };

/*
 * A milestone or place opened from Story's route (#199): beside the route
 * from 1024px (`panel`, following the scroll), in a bottom sheet below it
 * (`sheet`). A milestone's marker and name head it; then where it stands,
 * what it asks, what has to come first and what was recorded with it, and
 * its battles one line each, with Record (or Edit, once recorded) at its
 * foot. A place shows the milestone it leads to, its battles and the
 * Pokémon found there. A battle opens its report in a sheet of its own
 * beside the route, or in the same sheet below 1024px with a way back, so
 * the route behind never changes. Focus follows: onto the
 * report's title when it opens, back onto the battle's row on the way back.
 */
export const StoryDetail = ({
  battles,
  chapterName,
  layout,
  onAction,
  onOpenChange,
  open,
  playId,
  returnsFocus,
  scope,
  target,
}: {
  /* The battles at this milestone or place. */
  battles: StoryMatchupBattle[];
  chapterName: string | null;
  layout: "panel" | "sheet";
  onAction: (milestone: StoryMilestone, choice: StoryMilestoneChoice) => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  playId: string;
  /*
   * False while what it opened (the editor, a confirm) holds focus, so
   * closing the sheet behind it never pulls focus out from under it.
   */
  returnsFocus: boolean;
  scope: StoryScope;
  target: StoryDetailTarget | null;
}) => {
  const targetKey =
    target?.kind === "place"
      ? target.key
      : target
        ? `milestone-${target.milestone.id}`
        : null;
  const reportTitleId = `story-battle-report-title-${layout}`;
  const isOpen = open && Boolean(target);
  /* The battle whose report is open; none shows the milestone or place. */
  const [openBattleId, setOpenBattleId] = useState<string | null>(null);
  /* Each opening, of whatever it shows, starts on it, not on a report. */
  const [seenKey, setSeenKey] = useState(targetKey);
  const [seenOpen, setSeenOpen] = useState(isOpen);

  if (targetKey !== seenKey || isOpen !== seenOpen) {
    setSeenKey(targetKey);
    setSeenOpen(isOpen);
    setOpenBattleId(null);
  }

  const openBattle =
    battles.find((battle) => battle.id === openBattleId) ?? null;
  /* Where focus goes once the detail has swapped its body. */
  const focusTarget = useRef<string | null>(null);

  useEffect(() => {
    const id = focusTarget.current;

    if (id) {
      focusTarget.current = null;
      document.getElementById(id)?.focus();
    }
  });

  if (!target) {
    return null;
  }

  const milestone = target.kind === "milestone" ? target.milestone : null;
  const name =
    milestone?.name ?? (target.kind === "place" ? target.place.name : "");

  const showBattle = (battle: StoryMatchupBattle) => {
    if (layout === "sheet") {
      focusTarget.current = reportTitleId;
    }
    setOpenBattleId(battle.id);
  };

  const showTarget = () => {
    focusTarget.current = openBattle
      ? getStoryBattleRowId(openBattle.id)
      : null;
    setOpenBattleId(null);
  };

  /* Beside the route a battle opens in a sheet of its own; in a sheet, in place. */
  const reportInPlace = layout === "sheet" && openBattle;
  const report = openBattle ? (
    <section aria-labelledby={reportTitleId}>
      <StoryBattleReport battle={openBattle} titleId={reportTitleId} />
    </section>
  ) : null;
  const back = reportInPlace ? (
    <Button
      type="button"
      variant="ghost"
      size="sm"
      className="justify-self-start"
      onClick={showTarget}
    >
      <AppIcon icon={appIcons.actions.back} inline="start" />
      Back to {name}
    </Button>
  ) : null;
  const marker = milestone ? (
    <MilestoneMarker
      badge={milestone.badge}
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
  ) : (
    <span className="bg-surface-2 text-ink-2 grid size-12 shrink-0 place-items-center rounded-full">
      <AppIcon icon={appIcons.product.location} />
    </span>
  );
  const body: ReactNode = reportInPlace ? (
    report
  ) : milestone ? (
    <>
      <StoryMilestoneDetail
        chapterName={chapterName}
        isNext={milestone.id === scope.nextMilestone?.id}
        milestone={milestone}
        totalCount={scope.totalCount}
      />
      <StoryMilestoneBattles battles={battles} onSelect={showBattle} />
    </>
  ) : target.kind === "place" ? (
    <StoryPlaceDetail
      battles={battles}
      compact={layout === "panel"}
      onBattleSelect={showBattle}
      place={target.place}
      playId={playId}
      toward={target.toward?.name ?? null}
    />
  ) : null;
  const footer = milestone ? (
    <StoryMilestoneActions
      milestone={milestone}
      onAction={(choice) => onAction(milestone, choice)}
      className="sm:w-full"
    />
  ) : undefined;

  if (layout === "panel") {
    return (
      <Card
        data-story-panel
        role="region"
        aria-label={name}
        className="gap-0 px-5 py-5 sm:px-6 sm:py-6"
      >
        <div className="flex items-center gap-4">
          {marker}
          <h2 className="title-card text-ink min-w-0">{name}</h2>
        </div>
        <div className="mt-5 grid content-start gap-6">{body}</div>
        {footer ? <div className="mt-6">{footer}</div> : null}
        <OverlaySheet
          open={Boolean(openBattle)}
          onOpenChange={(isOpen) => {
            if (!isOpen) {
              setOpenBattleId(null);
            }
          }}
          size="sm"
          title={openBattle?.name ?? "Battle"}
          /* The report carries the visible title; the sheet is named all the same. */
          titleHidden
          bodyClassName="grid content-start gap-6"
          /* Back to the battle's row in the panel. */
          finalFocus={() =>
            openBattle
              ? document.getElementById(getStoryBattleRowId(openBattle.id))
              : null
          }
        >
          {report}
        </OverlaySheet>
      </Card>
    );
  }

  return (
    <OverlaySheet
      open={isOpen}
      onOpenChange={onOpenChange}
      size="sm"
      title={openBattle?.name ?? name}
      /* The report carries the visible title; the sheet is named all the same. */
      titleHidden={Boolean(reportInPlace)}
      bodyClassName="grid content-start gap-6"
      /* Back to the stop that opened it, when it is still on the page. */
      finalFocus={
        returnsFocus
          ? () =>
              document.getElementById(
                milestone
                  ? getStoryRouteStopId(milestone.id)
                  : getStoryRoutePlaceId(
                      target.kind === "place" ? target.key : "",
                    ),
              )
          : false
      }
      head={(title) =>
        back ?? (
          <div className="flex items-center gap-4">
            {marker}
            {title}
          </div>
        )
      }
      footer={footer}
    >
      {body}
    </OverlaySheet>
  );
};
