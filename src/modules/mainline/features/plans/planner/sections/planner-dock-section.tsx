"use client";

import { useState, type DragEvent } from "react";

import type { PlannerSlots } from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import {
  getWorstIssueFor,
  type PlanIssue,
} from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import type { PlanRandomMode } from "@/modules/mainline/features/plans/planner/data/plan-random-team";
import type { PlanTeamTip } from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuLabel,
  DropdownMenuRadioGroup,
  DropdownMenuRadioItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

export const randomModeLabels: Record<
  PlanRandomMode,
  { description: string; label: string }
> = {
  all: { description: "Replaces all six", label: "Random team" },
  empty: {
    description: "Keeps the Pokémon you picked",
    label: "Fill empty slots",
  },
  filtered: {
    description: "Uses your search and type filter",
    label: "Random from filters",
  },
};

type PlannerDockSectionProps = {
  byId: Map<number, PlannerPokemon>;
  issues: PlanIssue[];
  onClear: () => void;
  onMove: (from: number, to: number) => void;
  onOpenCheck: () => void;
  onOpenSlot: (index: number) => void;
  onPlace: (index: number) => void;
  onCancelReplace: () => void;
  onRandom: () => void;
  onRandomModeChange: (mode: PlanRandomMode) => void;
  onRemove: (index: number) => void;
  randomMode: PlanRandomMode;
  /* The Pokémon waiting for a slot when the team is full. */
  replacing: PlannerPokemon | null;
  slots: PlannerSlots;
  tip: PlanTeamTip;
};

const tipToneClassNames: Record<PlanTeamTip["tone"], string> = {
  good: "bg-ok-soft text-ok-deep",
  idle: "bg-surface-2 text-ink-2",
  watch: "bg-warn-soft text-warn-ink",
  warn: "bg-warn-soft text-warn-ink",
};

const SlotNumber = ({ index }: { index: number }) => (
  <span
    aria-hidden
    className="text-12 grid size-6 place-items-center rounded-full bg-white/70 font-extrabold tabular-nums"
  >
    {index + 1}
  </span>
);

/*
 * v3 `.dock`, on the Planner's band: the six slots of the Plan's team. Each holds its Pokémon as a
 * sticker (role, a dot when it has build details, a flag when it needs
 * something), opens its slot sheet, can be dragged onto another slot to swap
 * and removed with Undo. Over it: Team check, Random and Clear; under it the
 * one tip that matters most.
 */
export const PlannerDockSection = ({
  byId,
  issues,
  onCancelReplace,
  onClear,
  onMove,
  onOpenCheck,
  onOpenSlot,
  onPlace,
  onRandom,
  onRandomModeChange,
  onRemove,
  randomMode,
  replacing,
  slots,
  tip,
}: PlannerDockSectionProps) => {
  const [dragFrom, setDragFrom] = useState<number | null>(null);
  const [dropTarget, setDropTarget] = useState<number | null>(null);
  const filled = slots.filter(Boolean).length;

  return (
    <section aria-labelledby="planner-team" className="flex flex-col gap-3">
      {replacing ? (
        <div className="flex flex-wrap items-center gap-3">
          {replacing.imageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img src={replacing.imageUrl} alt="" className="size-10" />
          ) : null}
          <p
            id="planner-team"
            role="status"
            className="text-ink text-15 mr-auto font-semibold"
          >
            <b className="font-extrabold">Team is full.</b> Tap the Pokémon{" "}
            {replacing.name} should replace.
          </p>
          <Button
            type="button"
            variant="outline"
            size="sm"
            onClick={onCancelReplace}
          >
            Cancel
          </Button>
        </div>
      ) : (
        <div className="flex flex-wrap items-center gap-x-3 gap-y-2">
          <h2 id="planner-team" className="text-20">
            Your team
          </h2>
          <span className="text-ink-3 text-14 font-bold tabular-nums">
            {filled} of 6
          </span>
          <div className="-mx-1 flex [scrollbar-width:none] items-center gap-1 overflow-x-auto px-1 max-sm:w-full sm:ml-auto sm:gap-1.5 [&>*]:shrink-0">
            {filled ? (
              <Button
                type="button"
                variant="ghost"
                size="sm"
                onClick={onOpenCheck}
                className="max-sm:px-2"
              >
                <span
                  aria-hidden
                  className={cn(
                    "size-2.5 rounded-full",
                    tip.tone === "good"
                      ? "bg-ok"
                      : tip.tone === "idle"
                        ? "bg-mute"
                        : "bg-warn",
                  )}
                />
                Team check
              </Button>
            ) : null}
            <div className="flex items-center">
              <Button
                type="button"
                variant="ghost"
                size="sm"
                onClick={onRandom}
                className="rounded-r-none max-sm:px-2"
              >
                <AppIcon
                  icon={appIcons.product.activity}
                  inline="start"
                  className="max-sm:hidden"
                />
                {randomModeLabels[randomMode].label}
              </Button>
              <DropdownMenu>
                <DropdownMenuTrigger
                  render={
                    <Button
                      type="button"
                      variant="ghost"
                      size="icon-sm"
                      aria-label="Random options"
                      className="rounded-l-none"
                    />
                  }
                >
                  <AppIcon icon={appIcons.actions.expand} />
                </DropdownMenuTrigger>
                <DropdownMenuContent align="end" className="w-64">
                  <DropdownMenuGroup>
                    <DropdownMenuLabel>
                      Never repeats a Pokémon or its evolution line
                    </DropdownMenuLabel>
                    <DropdownMenuRadioGroup
                      value={randomMode}
                      onValueChange={(value) =>
                        onRandomModeChange(value as PlanRandomMode)
                      }
                    >
                      {(Object.keys(randomModeLabels) as PlanRandomMode[]).map(
                        (mode) => (
                          <DropdownMenuRadioItem key={mode} value={mode}>
                            <span className="min-w-0">
                              <span className="block">
                                {randomModeLabels[mode].label}
                              </span>
                              <span className="text-ink-3 text-12 block font-semibold">
                                {randomModeLabels[mode].description}
                              </span>
                            </span>
                          </DropdownMenuRadioItem>
                        ),
                      )}
                    </DropdownMenuRadioGroup>
                  </DropdownMenuGroup>
                </DropdownMenuContent>
              </DropdownMenu>
            </div>
            <Button
              type="button"
              variant="ghost"
              size="sm"
              disabled={!filled}
              onClick={onClear}
              className="max-sm:px-2"
            >
              Clear
            </Button>
          </div>
        </div>
      )}

      <ol className="grid grid-cols-2 gap-2.5 sm:grid-cols-3 sm:gap-3 lg:grid-cols-6">
        {slots.map((member, index) => {
          const pokemon = member ? byId.get(member.speciesId) : undefined;
          const worst = member
            ? getWorstIssueFor(member.speciesId, issues)
            : null;
          const typeSlug = pokemon?.types[0]?.slug;
          const hasBuild = Boolean(
            member?.abilityId ||
            member?.natureId ||
            member?.gender ||
            member?.heldItemId ||
            member?.moveIds.some((moveId) => moveId !== null),
          );
          const dragProps = {
            onDragLeave: () => setDropTarget(null),
            onDragOver: (event: DragEvent) => {
              if (dragFrom === null) return;
              event.preventDefault();
              setDropTarget(index);
            },
            onDrop: (event: DragEvent) => {
              event.preventDefault();
              if (dragFrom !== null) onMove(dragFrom, index);
              setDragFrom(null);
              setDropTarget(null);
            },
          };

          if (!member || !pokemon) {
            return (
              <li key={`open-${index}`} {...dragProps}>
                {replacing ? (
                  <button
                    type="button"
                    onClick={() => onPlace(index)}
                    className="empty-slot text-ink-2 text-13 focus-visible:outline-focus flex h-full min-h-20 w-full items-center justify-center gap-2 rounded-xl font-bold outline-none hover:bg-white/50 focus-visible:outline-3 focus-visible:outline-solid"
                  >
                    <SlotNumber index={index} />
                    Put here
                  </button>
                ) : (
                  <div
                    className={cn(
                      "empty-slot text-ink-tint text-13 flex h-full min-h-20 items-center justify-center gap-2 rounded-xl font-bold",
                      dropTarget === index && "bg-white/50",
                    )}
                  >
                    <SlotNumber index={index} />
                    Empty
                  </div>
                )}
              </li>
            );
          }

          return (
            <li
              key={`${member.speciesId}-${index}`}
              draggable={!replacing}
              onDragStart={(event) => {
                setDragFrom(index);
                event.dataTransfer.effectAllowed = "move";
              }}
              onDragEnd={() => {
                setDragFrom(null);
                setDropTarget(null);
              }}
              {...dragProps}
              style={getPokemonTypeCssVariables(
                typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null,
              )}
              className={cn(
                "sticker group/slot relative flex min-h-20 rounded-xl",
                dropTarget === index && "sticker-picked",
                dragFrom === index && "opacity-60",
              )}
            >
              <button
                type="button"
                onClick={() => (replacing ? onPlace(index) : onOpenSlot(index))}
                aria-label={
                  replacing
                    ? `Replace ${pokemon.name} with ${replacing.name}`
                    : `${pokemon.name}, slot ${index + 1}. Edit`
                }
                className="focus-visible:outline-focus flex h-full w-full min-w-0 items-center gap-1.5 rounded-lg py-1.5 pr-2.5 pl-1 text-left outline-none focus-visible:outline-3 focus-visible:outline-solid"
              >
                {pokemon.imageUrl ? (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img
                    src={pokemon.imageUrl}
                    alt=""
                    className="size-12 shrink-0 sm:size-15"
                  />
                ) : (
                  <span className="empty-slot size-10 shrink-0 rounded-full sm:size-12" />
                )}
                <span className="flex min-w-0 flex-col gap-0.5">
                  <span className="font-display text-15 sm:text-16 truncate leading-tight font-semibold">
                    {pokemon.name}
                  </span>
                  <PokemonTypeList
                    types={pokemon.types}
                    badgeDisplay="icon"
                    badgeSize="sm"
                    className="flex gap-1"
                  />
                  <span className="text-ink-tint text-12 truncate pr-3 font-bold">
                    {replacing ? (
                      <span className="inline-flex items-center gap-1">
                        <AppIcon icon={appIcons.actions.move} size="sm" />
                        Replace
                      </span>
                    ) : (
                      (member.role ?? "\u00a0")
                    )}
                  </span>
                </span>
                {hasBuild ? (
                  <span className="sr-only">Has build details</span>
                ) : null}
              </button>
              {hasBuild ? (
                <span
                  aria-hidden
                  className="bg-game absolute right-2.5 bottom-2.5 size-2 rounded-full ring-2 ring-white"
                />
              ) : null}
              {worst && !replacing ? (
                <Tooltip>
                  <TooltipTrigger
                    render={
                      <button
                        type="button"
                        onClick={onOpenCheck}
                        aria-label={`${worst.title}. Details`}
                        className={cn(
                          "text-12 absolute -top-2 -left-2 grid size-6 place-items-center rounded-full font-extrabold ring-2 ring-white",
                          worst.severity === "block" ||
                            worst.severity === "hard"
                            ? "bg-danger text-white"
                            : "bg-warn text-ink",
                        )}
                      />
                    }
                  >
                    !
                  </TooltipTrigger>
                  <TooltipContent>{worst.title}</TooltipContent>
                </Tooltip>
              ) : null}
              {replacing ? null : (
                <button
                  type="button"
                  onClick={() => onRemove(index)}
                  aria-label={`Remove ${pokemon.name}`}
                  className="text-ink-2 hover:text-ink focus-visible:outline-focus bg-surface shadow-quiet absolute -top-2 -right-2 grid size-6 place-items-center rounded-full outline-none focus-visible:opacity-100 focus-visible:outline-3 focus-visible:outline-solid pointer-fine:opacity-0 pointer-fine:group-hover/slot:opacity-100"
                >
                  <AppIcon icon={appIcons.actions.close} size="sm" />
                </button>
              )}
            </li>
          );
        })}
      </ol>

      <p
        aria-live="polite"
        className="text-ink text-14 flex min-h-12 items-center gap-2.5 rounded-lg bg-white/70 px-3 py-2 font-semibold"
      >
        <span
          aria-hidden
          className={cn(
            "grid size-6 shrink-0 place-items-center rounded-full",
            tipToneClassNames[tip.tone],
          )}
        >
          <AppIcon
            icon={
              tip.tone === "good"
                ? appIcons.status.active
                : tip.tone === "idle"
                  ? appIcons.product.activity
                  : appIcons.status.warning
            }
            size="sm"
          />
        </span>
        <span className="min-w-0 flex-1">{tip.text}</span>
        {tip.more ? (
          <Button
            type="button"
            variant="link"
            size="sm"
            onClick={onOpenCheck}
            className="h-auto px-0"
          >
            +{tip.more} more
          </Button>
        ) : null}
      </p>
    </section>
  );
};
