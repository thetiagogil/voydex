"use client";

import Link from "next/link";
import { useEffect, useRef, useState } from "react";

import { appRoutes } from "@/config/routes";
import {
  PlanActionsMenu,
  type PlanActionsPlan,
} from "@/modules/mainline/features/plans/components/plan-actions-menu";
import type {
  PlannerVersionGroup,
  PlannerVersionGroupOption,
} from "@/modules/mainline/features/plans/types";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { selectTriggerVariants } from "@/shared/components/ui/select";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PlannerTopSectionProps = {
  /* False while the Plan is locked: an edit asks to unlock it first. */
  canEdit: boolean;
  /* Whether Archive can run now: unsaved changes are saved or undone first. */
  canArchive: boolean;
  canSave: boolean;
  isSaved: boolean;
  isSaving: boolean;
  /* A game switch being checked or opening: the picker shows it's working. */
  isSwitching: boolean;
  /* Why the game can't change, such as Plays following the Plan. */
  gameFixedReason?: string;
  /* An edit on a locked Plan: ask to unlock, then carry on with `resume`. */
  onLockedEdit: (resume: () => void) => void;
  name: string;
  onNameChange: (name: string) => void;
  onSave: () => void;
  onShare: () => void;
  onVersionGroupChange: (slug: string) => void;
  planCount: number;
  /* A saved Plan, for its actions menu (Rename, Archive, Delete). */
  savedPlan: PlanActionsPlan | null;
  versionGroup: PlannerVersionGroup;
  versionGroups: PlannerVersionGroupOption[];
};

/*
 * The head of the Planner's band (v3 `.pl-top`): the Plan's name on its own
 * line (tap to rename), then one row with the version group it is for (its
 * covers; a menu of every base group) and its version, and Share, My Plans,
 * the page's main button, Save, and a saved Plan's "⋯" (Rename, Archive,
 * Delete) at the end.
 */
export const PlannerTopSection = ({
  canArchive,
  canEdit,
  gameFixedReason,
  onLockedEdit,
  canSave,
  isSaved,
  isSaving,
  isSwitching,
  name,
  onNameChange,
  onSave,
  onShare,
  onVersionGroupChange,
  planCount,
  savedPlan,
  versionGroup,
  versionGroups,
}: PlannerTopSectionProps) => {
  const [isRenaming, setIsRenaming] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (isRenaming) inputRef.current?.focus();
  }, [isRenaming]);

  const gameCard = (
    <>
      <span aria-hidden className="flex shrink-0 items-center pl-1">
        {versionGroup.games.slice(0, 2).map((game, index) => (
          <GameCover
            key={game.slug}
            alt=""
            coverImageUrl={getGameCoverImageUrlBySlug(game.slug)}
            eager
            gameName={game.name}
            gameSlug={game.slug}
            size="dock"
            className={index === 0 ? undefined : "-ml-3"}
          />
        ))}
      </span>
      <span className="min-w-0">
        <span className="text-ink-2 text-12 block font-bold">
          Gen {versionGroup.generationNumeral}
          {versionGroup.regionName ? ` · ${versionGroup.regionName}` : ""}
        </span>
        <b className="text-ink text-16 block font-extrabold">
          {versionGroup.name}
        </b>
      </span>
      {/* The whole card waits while a switch is checked and opens. */}
      {isSwitching ? (
        <span
          role="status"
          className="bg-surface/80 absolute inset-0 grid place-items-center rounded-[inherit]"
        >
          <Spinner aria-hidden className="text-action size-7" />
          <span className="sr-only">Switching game</span>
        </span>
      ) : null}
    </>
  );
  /* Renaming waits on Unlock while the Plan is locked. */
  const startRenaming = () =>
    canEdit ? setIsRenaming(true) : onLockedEdit(() => setIsRenaming(true));

  return (
    <div className="flex flex-col gap-5 pt-4 sm:pt-7">
      <div className="flex min-w-0 flex-col gap-1.5">
        {isRenaming ? (
          <Input
            ref={inputRef}
            aria-label="Plan name"
            value={name}
            maxLength={200}
            placeholder={untitledPlanName}
            onChange={(event) => onNameChange(event.currentTarget.value)}
            onBlur={() => setIsRenaming(false)}
            onKeyDown={(event) => {
              if (event.key === "Enter" || event.key === "Escape") {
                setIsRenaming(false);
              }
            }}
            className="title-page h-13 max-w-xl"
          />
        ) : (
          <h1 className="min-w-0">
            <button
              type="button"
              onClick={startRenaming}
              className="group/title title-page focus-ring inline-flex max-w-full items-center gap-2 rounded-xs text-left"
            >
              <span
                className={cn(
                  "line-clamp-2 text-balance wrap-anywhere",
                  !name.trim() && "text-ink-3",
                )}
              >
                {name.trim() || untitledPlanName}
              </span>
              <AppIcon
                icon={appIcons.actions.edit}
                size="lg"
                className="text-ink-tint group-hover/title:text-ink shrink-0 transition-opacity group-focus-visible/title:opacity-100 pointer-fine:opacity-0 pointer-fine:group-hover/title:opacity-100"
              />
              <span className="sr-only">Rename</span>
            </button>
          </h1>
        )}
      </div>
      <div className="flex flex-wrap items-center gap-x-4 gap-y-3">
        {gameFixedReason ? (
          /* While Plays follow the Plan its game stays; the card only reads. */
          <div
            title={gameFixedReason}
            className={cn(
              selectTriggerVariants({ variant: "card" }),
              "relative",
            )}
          >
            {gameCard}
          </div>
        ) : (
          <SelectControl
            ariaLabel={`Game: ${versionGroup.name}`}
            className={cn("relative", isSwitching && "pointer-events-none")}
            searchPlaceholder="Search games"
            placeholder={versionGroup.name}
            value={versionGroup.slug}
            onValueChange={onVersionGroupChange}
            options={versionGroups.map((group) => ({
              description: `Gen ${group.generationNumeral}${group.regionName ? ` · ${group.regionName}` : ""}`,
              icon: group.gameSlugs[0] ? (
                <GameOptionCover
                  gameName={group.name}
                  gameSlug={group.gameSlugs[0]}
                />
              ) : undefined,
              label: group.name,
              value: group.slug,
            }))}
            variant="card"
            triggerContent={gameCard}
          />
        )}
        {versionGroup.games.length > 1 ? (
          <div className="flex items-center gap-2">
            <span className="text-ink-2 text-13 font-bold">Version</span>
            {/* TODO(v3-data): a version preference on planning.mainline_team_plans; a Plan stores its group's first game until then. */}
            <SegmentedControl
              ariaLabel="Version"
              selectedTone="strong"
              size="sm"
              value="either"
              options={[
                { label: "Either", value: "either" },
                ...versionGroup.games.map((game) => ({
                  disabled: true,
                  disabledReason:
                    "Saving a version preference isn't in Voydex yet",
                  dot: getGameColourStyle(game.slug),
                  label: game.shortName,
                  value: game.slug,
                })),
              ]}
            />
          </div>
        ) : null}
        <div className="flex flex-wrap items-center gap-2 sm:ml-auto">
          <Button type="button" variant="secondary" onClick={onShare}>
            <AppIcon icon={appIcons.actions.share} inline="start" />
            Share
          </Button>
          <Link
            href={appRoutes.mainlinePlans}
            className={buttonVariants({ variant: "secondary" })}
          >
            <AppIcon icon={appIcons.views.mainline.plans} inline="start" />
            My Plans
            <span className="text-ink-3 tabular-nums">{planCount}</span>
          </Link>
          <Button
            type="button"
            disabled={!canSave || isSaving}
            onClick={onSave}
          >
            {isSaving ? (
              <Spinner className="size-3.5" />
            ) : (
              <AppIcon icon={appIcons.status.active} inline="start" />
            )}
            {isSaved ? "Save changes" : "Save Plan"}
          </Button>
          {savedPlan ? (
            <PlanActionsMenu
              placement="planner"
              plan={savedPlan}
              onRename={startRenaming}
              archiveBlockedReason={
                canArchive ? undefined : "Save or undo your changes first"
              }
            />
          ) : null}
        </div>
      </div>
    </div>
  );
};
