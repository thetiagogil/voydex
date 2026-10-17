"use client";

import { CornerBubble } from "@/shared/components/corner-bubble";
import { TextLink } from "@/shared/components/text-link";
import { useState, type DragEvent } from "react";

import type { PlannerSlots } from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import {
  getWorstIssueFor,
  type PlanIssue,
} from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import type { PlanRandomMode } from "@/modules/mainline/features/plans/planner/data/plan-random-team";
import type { PlanTeamTip } from "@/modules/mainline/features/plans/planner/data/plan-team-analysis";
import type { PlannerPokemon } from "@/modules/mainline/features/plans/types";
import {
  PokemonEmptySlot,
  PokemonSticker,
} from "@/modules/reference/features/pokemon/components/pokemon-sticker";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { CornerRemoveButton } from "@/shared/components/corner-remove-button";
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

/*
 * v3 `.dock`, on the Planner's band: the six slots of the Plan's team, as
 * the Play roster's stickers (the art large, its role under the name, a flag
 * when it needs something; an open slot just says Empty). Each
 * opens its slot sheet, can be dragged onto another slot to swap and removed
 * with Undo. Over it: Random and Clear; under it the one tip that matters
 * most, with Team check for the rest.
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
            variant="secondary"
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
          <div className="-mx-1 -mt-1 -mb-2 flex scrollbar-none items-center gap-1 overflow-x-auto px-1 pt-1 pb-2 *:shrink-0 max-sm:w-full sm:ml-auto sm:gap-1.5">
            <div className="flex items-center gap-1.5">
              <Button
                type="button"
                variant="secondary"
                size="sm"
                onClick={onRandom}
                className="max-sm:px-2"
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
                      variant="secondary"
                      size="icon-sm"
                      aria-label="Random options"
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
              variant="secondary"
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

      <ol className="grid grid-cols-2 gap-x-4 gap-y-4.5 sm:grid-cols-3 lg:grid-cols-6">
        {slots.map((member, index) => {
          const pokemon = member ? byId.get(member.speciesId) : undefined;
          const worst = member
            ? getWorstIssueFor(member.speciesId, issues)
            : null;
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
              <li key={`open-${index}`} className="min-w-0" {...dragProps}>
                {replacing ? (
                  <button
                    type="button"
                    onClick={() => onPlace(index)}
                    className="focus-visible:outline-focus block w-full rounded-xl outline-none focus-visible:outline-3 focus-visible:outline-solid"
                  >
                    <PokemonEmptySlot
                      label={`Put ${replacing.name} in slot ${index + 1}`}
                      text="Put here"
                      variant="compact"
                      className="text-14 hover:bg-white/50"
                    />
                  </button>
                ) : (
                  <PokemonEmptySlot
                    label={`Empty slot ${index + 1}`}
                    text="Empty"
                    variant="compact"
                    className={cn(
                      "text-14 h-full",
                      dropTarget === index && "bg-white/50",
                    )}
                  />
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
              className={cn(
                /* The slot lifts as one, with its × and "!". */
                "group/removable relative min-w-0 rounded-xl transition-transform duration-150",
                replacing
                  ? "motion-safe:animate-wiggle hover:animate-none"
                  : "hover:-translate-y-0.75",
                dragFrom === index && "opacity-60",
              )}
            >
              <PokemonSticker
                variant="compact"
                className={cn(
                  "w-full",
                  dropTarget === index && "sticker-picked",
                  /* The slot lifts instead; while it wiggles, hovering rings it. */
                  "hover:translate-y-0",
                  replacing && "hover:sticker-picked",
                )}
                imageUrl={pokemon.imageUrl}
                name={pokemon.name}
                slotLabel={String(index + 1)}
                subtitle={replacing ? "Replace" : member.role}
                types={pokemon.types}
                label={
                  replacing
                    ? `Replace ${pokemon.name} with ${replacing.name}`
                    : `${pokemon.name}, slot ${index + 1}. Edit`
                }
                onClick={() => (replacing ? onPlace(index) : onOpenSlot(index))}
              />
              {worst && !replacing ? (
                <CornerBubble corner="top-left">
                  <ExplanatoryTip
                    triggerVariant="raised"
                    triggerTone={
                      worst.severity === "block" || worst.severity === "hard"
                        ? "danger"
                        : "warn"
                    }
                    triggerLabel={`${pokemon.name}: ${worst.title}`}
                    contentClassName="w-64"
                    content={
                      <>
                        <p>{worst.title}</p>
                        <TextLink
                          tone="onInk"
                          onClick={onOpenCheck}
                          className="text-14 mt-1"
                        >
                          Open Team check
                        </TextLink>
                      </>
                    }
                  />
                </CornerBubble>
              ) : null}
              {replacing ? null : (
                <CornerRemoveButton
                  label={`Remove ${pokemon.name}`}
                  onClick={() => onRemove(index)}
                />
              )}
            </li>
          );
        })}
      </ol>

      <p
        aria-live="polite"
        className="text-ink-2 text-14 flex items-center gap-2.5 font-semibold"
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
        {filled ? (
          <Button
            type="button"
            variant="ghost"
            size="sm"
            onClick={onOpenCheck}
            className="shrink-0"
          >
            {tip.more ? `${tip.more} more in Team check` : "Team check"}
          </Button>
        ) : null}
      </p>
    </section>
  );
};
