"use client";

import { useState } from "react";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import {
  Medallion,
  type MedallionContent,
} from "@/modules/mainline/features/plays/shared/components/medallion";
import { PlayMomentTime } from "@/modules/mainline/features/plays/shared/components/play-moment-time";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { BottomSheet } from "@/shared/components/bottom-sheet";
import { EmptyState } from "@/shared/components/empty-state";
import { PendingData } from "@/shared/components/pending-data";
import { RangeHeading } from "@/shared/components/range-heading";
import { StatusBadge } from "@/shared/components/status-badge";
import { Card } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

import type {
  StoryMatchupBattle,
  StoryMatchupsModel,
} from "../../data/story-matchups-model";
import { StoryBattleReport } from "./story-battle-report";

const reportTitleId = "story-battle-report-title";

const getBattleMedallion = (battle: StoryMatchupBattle): MedallionContent =>
  battle.state === "won"
    ? battle.badgeType
      ? { kind: "badge", type: battle.badgeType }
      : { icon: appIcons.milestones.champion, kind: "gold" }
    : { icon: appIcons.product.battle, kind: "status" };

/* v3 `.enc`: one battle in its chapter, picked to read its report. */
const StoryBattleRow = ({
  battle,
  onSelect,
  selected,
}: {
  battle: StoryMatchupBattle;
  onSelect: () => void;
  selected: boolean;
}) => (
  <li>
    <button
      type="button"
      aria-pressed={selected}
      onClick={onSelect}
      className={cn(
        "grid w-full grid-cols-[42px_minmax(0,1fr)_auto] items-center gap-x-3.5 gap-y-1 rounded-lg px-3 py-3 text-left outline-none sm:grid-cols-[42px_minmax(0,1fr)_auto_auto] sm:px-4",
        "hover:bg-surface-2 focus-visible:outline-focus focus-visible:outline-3 focus-visible:-outline-offset-3 focus-visible:outline-solid",
        selected && "bg-select-soft text-select-ink hover:bg-select-soft",
      )}
    >
      <Medallion
        content={getBattleMedallion(battle)}
        size="sm"
        className="justify-self-center"
      />
      <span className="grid min-w-0">
        <b className="text-16 truncate font-extrabold">{battle.name}</b>
        <span className="text-ink-3 text-13 truncate font-semibold">
          {battle.kind} · {battle.milestoneName}
        </span>
      </span>
      <PokemonTypeList
        types={battle.specialtyTypes}
        badgeDisplay="icon"
        badgeSize="sm"
        className="hidden gap-1 sm:flex"
      />
      <span className="justify-self-end">
        {battle.state === "won" ? (
          <StatusBadge tone="ok">
            <AppIcon icon={appIcons.status.active} />
            Won
            {battle.completedAt ? (
              <>
                {" "}
                <PlayMomentTime value={battle.completedAt} />
              </>
            ) : null}
          </StatusBadge>
        ) : battle.state === "next" ? (
          <StatusBadge tone="neutral">Next</StatusBadge>
        ) : (
          /* TODO(v3-data): the row verdict needs opponent parties. */
          <PendingData variant="inline" label="No reading" />
        )}
      </span>
    </button>
  </li>
);

/*
 * Story matchups (v3 `matchups`): the battles by chapter, and the picked
 * one's report beside them, or in a bottom sheet on phones and tablets.
 */
export const StoryMatchupsSection = ({
  model,
}: {
  model: StoryMatchupsModel;
}) => {
  const usesSheet = useMainlinePlayDetailSheetLayout();
  const [selectedId, setSelectedId] = useState(model.defaultBattleId);
  const [isSheetOpen, setIsSheetOpen] = useState(false);
  const battles = model.chapters.flatMap((chapter) => chapter.battles);
  const selected =
    battles.find((battle) => battle.id === selectedId) ?? battles[0] ?? null;

  if (!battles.length) {
    return (
      <EmptyState
        headingLevel="h2"
        title="No Story battles to read"
        description="This game's Story doesn't name its Gym Leaders or Champion in Voydex yet."
      />
    );
  }

  const select = (battle: StoryMatchupBattle) => {
    setSelectedId(battle.id);

    if (usesSheet) {
      setIsSheetOpen(true);
    }
  };

  return (
    <div className="grid min-w-0 items-start gap-7 lg:grid-cols-[minmax(0,1.25fr)_minmax(0,1fr)]">
      <div className="grid min-w-0 gap-7">
        {model.chapters.map((chapter) => {
          const headingId = `story-matchups-${chapter.key}`;

          return (
            <section key={chapter.key} aria-labelledby={headingId}>
              <RangeHeading
                headingLevel={3}
                title={chapter.name}
                titleId={headingId}
                count={`${chapter.wonCount} of ${chapter.battles.length} won`}
              />
              <Card className="mt-3.5 gap-0 p-1.5 sm:p-2">
                <ul className="grid gap-0.5">
                  {chapter.battles.map((battle) => (
                    <StoryBattleRow
                      key={battle.id}
                      battle={battle}
                      onSelect={() => select(battle)}
                      selected={
                        (!usesSheet || isSheetOpen) &&
                        battle.id === selected?.id
                      }
                    />
                  ))}
                </ul>
              </Card>
            </section>
          );
        })}
      </div>

      {selected && !usesSheet ? (
        <Card
          role="region"
          aria-labelledby={reportTitleId}
          className="sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] px-5 sm:px-7"
        >
          <StoryBattleReport battle={selected} titleId={reportTitleId} />
        </Card>
      ) : null}

      <BottomSheet
        open={usesSheet && isSheetOpen && Boolean(selected)}
        onOpenChange={setIsSheetOpen}
        label={selected?.name ?? "Battle report"}
      >
        {selected ? (
          <StoryBattleReport
            battle={selected}
            titleId={`${reportTitleId}-sheet`}
          />
        ) : null}
      </BottomSheet>
    </div>
  );
};
