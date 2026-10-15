"use client";

import Link from "next/link";
import { useEffect, useRef, useState } from "react";

import { appRoutes } from "@/config/routes";
import type {
  PlannerVersionGroup,
  PlannerVersionGroupOption,
} from "@/modules/mainline/features/plans/types";
import { untitledPlanName } from "@/modules/mainline/features/plans/planner/utils/plan-save-input";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { getGameCoverImageUrlBySlug } from "@/modules/reference/features/games/data/game-images";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuLabel,
  DropdownMenuRadioGroup,
  DropdownMenuRadioItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

type PlannerTopSectionProps = {
  canSave: boolean;
  isSaved: boolean;
  isSaving: boolean;
  linkedPlayCount: number;
  name: string;
  onNameChange: (name: string) => void;
  onSave: () => void;
  onShare: () => void;
  onVersionGroupChange: (slug: string) => void;
  planCount: number;
  versionGroup: PlannerVersionGroup;
  versionGroups: PlannerVersionGroupOption[];
};

/*
 * The head of the Planner's band (v3 `.pl-top`): the Plan's name on its own
 * line (tap to rename), then one row with the version group it is for (its
 * covers; a menu of every base group) and its version, and Share, My Plans
 * and the page's main button, Save, at the end.
 */
export const PlannerTopSection = ({
  canSave,
  isSaved,
  isSaving,
  linkedPlayCount,
  name,
  onNameChange,
  onSave,
  onShare,
  onVersionGroupChange,
  planCount,
  versionGroup,
  versionGroups,
}: PlannerTopSectionProps) => {
  const [isRenaming, setIsRenaming] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (isRenaming) inputRef.current?.focus();
  }, [isRenaming]);

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
            className="font-display text-24 h-13 max-w-xl font-semibold"
          />
        ) : (
          <h1 className="min-w-0">
            <button
              type="button"
              onClick={() => setIsRenaming(true)}
              className="group/title text-28 focus-visible:outline-focus inline-flex max-w-full items-center gap-2 rounded-xs text-left leading-tight tracking-[-0.02em] outline-none focus-visible:outline-3 focus-visible:outline-solid sm:text-[38px]"
            >
              <span
                className={cn(
                  "line-clamp-2 text-balance [overflow-wrap:anywhere]",
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
        {linkedPlayCount ? (
          <p className="text-ink-tint text-14 flex items-center gap-1.5 font-semibold">
            <AppIcon icon={appIcons.milestones.story} size="sm" />
            Followed by {linkedPlayCount}{" "}
            {linkedPlayCount === 1 ? "Play" : "Plays"}. Saving updates{" "}
            {linkedPlayCount === 1 ? "its" : "their"} comparison.
          </p>
        ) : null}
      </div>
      <div className="flex flex-wrap items-center gap-x-4 gap-y-3">
        <DropdownMenu>
          <DropdownMenuTrigger
            render={
              <button
                type="button"
                className="bg-surface shadow-card hover:bg-hover focus-visible:outline-focus flex min-h-16 items-center gap-3 rounded-xl py-2 pr-3 pl-3 text-left outline-none focus-visible:outline-3 focus-visible:outline-solid"
              />
            }
          >
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
                  className={index === 0 ? "-rotate-6" : "-ml-3 rotate-6"}
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
            <AppIcon icon={appIcons.actions.expand} className="text-ink-2" />
            <span className="sr-only">Change the game</span>
          </DropdownMenuTrigger>
          <DropdownMenuContent className="max-h-96 w-72">
            <DropdownMenuGroup>
              <DropdownMenuLabel>Which game?</DropdownMenuLabel>
              <DropdownMenuRadioGroup
                value={versionGroup.slug}
                onValueChange={(value) => onVersionGroupChange(String(value))}
              >
                {versionGroups.map((group) => (
                  <DropdownMenuRadioItem key={group.slug} value={group.slug}>
                    <span
                      aria-hidden
                      style={getGameColourStyle(group.gameSlugs[0] ?? null)}
                      className="game-scope bg-game size-2.5 shrink-0 rounded-full"
                    />
                    <span className="min-w-0">
                      <span className="block truncate">{group.name}</span>
                      <span className="text-ink-3 text-12 block font-semibold">
                        Gen {group.generationNumeral}
                        {group.regionName ? ` · ${group.regionName}` : ""}
                      </span>
                    </span>
                  </DropdownMenuRadioItem>
                ))}
              </DropdownMenuRadioGroup>
            </DropdownMenuGroup>
          </DropdownMenuContent>
        </DropdownMenu>
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
          <Button type="button" variant="outline" onClick={onShare}>
            <AppIcon icon={appIcons.actions.share} inline="start" />
            Share
          </Button>
          <Link
            href={appRoutes.mainlinePlans}
            className={buttonVariants({ variant: "outline" })}
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
        </div>
      </div>
    </div>
  );
};
