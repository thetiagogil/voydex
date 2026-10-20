"use client";

import Link from "next/link";

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
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SelectControl } from "@/shared/components/select-control";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { selectTriggerVariants } from "@/shared/components/ui/select";
import { Badge } from "@/shared/components/ui/badge";
import { Button, buttonVariants } from "@/shared/components/ui/button";
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
  /* The names of the expansions the Plan includes. */
  includedExpansions: string[];
  /* An edit on a locked Plan: ask to unlock, then carry on with `resume`. */
  onLockedEdit: (resume: () => void) => void;
  name: string;
  /* Opens the saved Plan's details: its name and rules. */
  onEditDetails: () => void;
  onSave: () => void;
  onShare: () => void;
  onVersionGroupChange: (slug: string) => void;
  planCount: number;
  /* The saved Plan's rules, shown under its name. */
  ruleNames: string[];
  /* A saved Plan, for its actions menu (Edit details, Archive, Delete). */
  savedPlan: PlanActionsPlan | null;
  versionGroup: PlannerVersionGroup;
  versionGroups: PlannerVersionGroupOption[];
};

/*
 * The head of the Planner's band (v3 `.pl-top`): a saved Plan's name on its
 * own line (tap for its details) with its rules under it, then one row with the version group it is for (its
 * covers; a menu of every base group; the expansions it includes under its
 * name), and My Plans, the page's main button, Save, and the "⋯" (Share,
 * and for a saved Plan See Plays, Edit details, Archive, Delete) at the end.
 * A new Plan has no name yet: Save Plan asks for it with its rules.
 */
export const PlannerTopSection = ({
  canArchive,
  canEdit,
  gameFixedReason,
  includedExpansions,
  onLockedEdit,
  canSave,
  isSaved,
  isSaving,
  isSwitching,
  name,
  onEditDetails,
  onSave,
  onShare,
  onVersionGroupChange,
  planCount,
  ruleNames,
  savedPlan,
  versionGroup,
  versionGroups,
}: PlannerTopSectionProps) => {
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
        {/* The expansions the Plan includes, so it's clear where they count. */}
        {includedExpansions.length ? (
          <span className="text-ink-2 text-12 block font-bold">
            + {includedExpansions.join(", ")}
          </span>
        ) : null}
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

  return (
    <div className="flex flex-col gap-5 pt-4 sm:pt-7">
      <div className="flex min-w-0 flex-col gap-1.5">
        {savedPlan ? (
          <>
            <h1 className="min-w-0">
              <button
                type="button"
                onClick={onEditDetails}
                className="group/title title-page focus-ring inline-flex max-w-full items-center gap-2 rounded-xs text-left"
              >
                <span className="descender-room line-clamp-2 text-balance wrap-anywhere">
                  {name.trim() || untitledPlanName}
                </span>
                <AppIcon
                  icon={appIcons.actions.edit}
                  size="lg"
                  className="text-ink-tint group-hover/title:text-ink shrink-0 transition-opacity group-focus-visible/title:opacity-100 pointer-fine:opacity-0 pointer-fine:group-hover/title:opacity-100"
                />
                <span className="sr-only">Edit details</span>
              </button>
            </h1>
            {ruleNames.length ? (
              <ul
                aria-label="Challenge rules"
                className="flex flex-wrap gap-1.5"
              >
                {ruleNames.map((ruleName) => (
                  <li key={ruleName}>
                    <Badge variant="paper" size="md">
                      <AppIcon icon={appIcons.product.rule} />
                      {ruleName}
                    </Badge>
                  </li>
                ))}
              </ul>
            ) : null}
          </>
        ) : (
          /* A new Plan gets its name when it's saved. */
          <h1 className="sr-only">New Plan</h1>
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
        <div className="flex flex-wrap items-center gap-2 sm:ml-auto">
          <Link
            href={appRoutes.mainlinePlans}
            className={buttonVariants({ variant: "secondary" })}
          >
            <AppIcon icon={appIcons.views.mainline.plans} inline="start" />
            My Plans
            <span className="text-ink-3 tabular-nums">{planCount}</span>
          </Link>
          {canEdit ? (
            <Button
              type="button"
              disabled={!canSave || isSaving}
              onClick={onSave}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              {isSaved ? "Save changes" : "Save Plan"}
            </Button>
          ) : (
            /* Locked, Save's place unlocks the Plan first. */
            <Button type="button" onClick={() => onLockedEdit(() => {})}>
              <AppIcon icon={appIcons.actions.unlock} inline="start" />
              Unlock to edit
            </Button>
          )}
          {savedPlan ? (
            <PlanActionsMenu
              placement="planner"
              plan={savedPlan}
              onEditDetails={onEditDetails}
              onShare={onShare}
              archiveBlockedReason={
                canArchive ? undefined : "Save or undo your changes first"
              }
            />
          ) : (
            /* A Plan not saved yet has only Share behind its "⋯". */
            <DropdownMenu>
              <DropdownMenuTrigger
                render={
                  <Button
                    type="button"
                    variant="secondary"
                    size="icon"
                    aria-label="More actions"
                  />
                }
              >
                <AppIcon icon={appIcons.actions.more} />
              </DropdownMenuTrigger>
              <DropdownMenuContent align="end" className="w-auto min-w-52">
                <DropdownMenuItem onClick={onShare}>
                  <AppIcon icon={appIcons.actions.share} />
                  Share
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
          )}
        </div>
      </div>
    </div>
  );
};
