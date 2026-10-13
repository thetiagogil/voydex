"use client";

import Link from "next/link";
import { useState, type ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import type { PlannerSlots } from "@/modules/mainline/features/plans/planner/client/use-planner-team";
import { emptyPlanMoveSlots } from "@/modules/mainline/features/plans/types";
import type {
  PlanGender,
  PlanMember,
  PlannerBuildFields,
  PlannerPokemon,
  PlannerVersionGroup,
} from "@/modules/mainline/features/plans/types";
import { PlannerSlotMoves } from "./planner-slot-moves";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Label } from "@/shared/components/ui/label";
import { SheetTitle } from "@/shared/components/ui/sheet";
import { Textarea } from "@/shared/components/ui/textarea";
import { cn } from "@/shared/utils/cn";

export const planRoles = [
  "Lead",
  "Physical attacker",
  "Special attacker",
  "Wall",
  "Pivot",
  "Sweeper",
  "Support",
] as const;

type PlannerSlotSheetProps = {
  buildFields: PlannerBuildFields;
  byId: Map<number, PlannerPokemon>;
  index: number | null;
  natures: { id: number; name: string }[];
  onClose: () => void;
  onMove: (from: number, to: number) => void;
  onRemove: (index: number) => void;
  onSwap: (index: number) => void;
  onUpdate: (index: number, changes: Partial<PlanMember>) => void;
  slots: PlannerSlots;
  versionGroup: PlannerVersionGroup;
};

const SheetStep = ({
  aside,
  children,
  title,
}: {
  aside?: string;
  children: ReactNode;
  title: string;
}) => (
  <section className="flex flex-col gap-3">
    <div className="flex flex-wrap items-baseline justify-between gap-x-3">
      <h3 className="text-20">{title}</h3>
      {aside ? (
        <span className="text-ink-3 text-13 font-semibold">{aside}</span>
      ) : null}
    </div>
    {children}
  </section>
);

const anyValue = "";

/*
 * v3's slot sheet (`targetSheet`): one planned Pokémon. Move it to another
 * slot (swapping), give it a role and a note, and, if you like, a build: the
 * ability, nature, gender and held item the version group lets you choose
 * (offered only when its capability profile supports them) and four moves.
 */
export const PlannerSlotSheet = ({
  buildFields,
  byId,
  index,
  natures,
  onClose,
  onMove,
  onRemove,
  onSwap,
  onUpdate,
  slots,
  versionGroup,
}: PlannerSlotSheetProps) => {
  const member = index === null ? null : slots[index];
  const pokemon = member ? byId.get(member.speciesId) : undefined;
  const [showBuild, setShowBuild] = useState(false);

  if (index === null || !member || !pokemon) {
    return null;
  }

  const hasBuild = Boolean(
    member.abilityId ||
    member.natureId ||
    member.gender ||
    member.heldItemId ||
    member.moveIds.some((moveId) => moveId !== null),
  );
  const isBuildOpen = showBuild || hasBuild;
  const primaryType = pokemon.types[0]?.slug;
  const unsupported = [
    !buildFields.ability && "abilities",
    !buildFields.nature && "natures",
    !buildFields.heldItem && "held items",
  ].filter((value): value is string => Boolean(value));
  const offered = [
    buildFields.ability && "ability",
    buildFields.nature && "nature",
    buildFields.gender && "gender",
    buildFields.heldItem && "held item",
    "moves",
  ].filter(Boolean);

  return (
    <ResponsiveDetailSheet
      open
      onOpenChange={(open) => {
        if (!open) onClose();
      }}
      label={pokemon.name}
      head={
        <div className="flex flex-wrap items-center gap-4">
          <PokemonPortrait
            alt=""
            imageUrl={pokemon.imageUrl}
            type={
              primaryType && isPokemonTypeSlug(primaryType) ? primaryType : null
            }
            className="size-20 shrink-0"
            imageClassName="size-18"
            sizes="80px"
          />
          <div className="min-w-0 flex-1">
            <p className="text-ink-2 text-13 font-bold">
              Plan slot {index + 1} · {versionGroup.name}
            </p>
            <SheetTitle className="text-24 mt-0.5">{pokemon.name}</SheetTitle>
            <PokemonTypeList
              types={pokemon.types}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="mt-2 flex flex-wrap gap-1.5"
            />
          </div>
          <div className="flex w-full flex-wrap gap-2">
            <Button
              type="button"
              variant="outline"
              size="sm"
              onClick={() => onSwap(index)}
            >
              <AppIcon icon={appIcons.actions.search} inline="start" />
              Swap Pokémon
            </Button>
            <Link
              href={appRoutes.codexPokemonEntry(
                versionGroup.slug,
                pokemon.speciesSlug,
              )}
              className={buttonVariants({ size: "sm", variant: "outline" })}
            >
              <AppIcon icon={appIcons.modules.codex} inline="start" />
              Open in Codex
            </Link>
          </div>
        </div>
      }
      footer={
        <>
          <Button
            type="button"
            variant="destructive"
            size="sm"
            onClick={() => {
              onRemove(index);
              onClose();
            }}
          >
            Remove from Plan
          </Button>
          <Button type="button" size="sm" className="ml-auto" onClick={onClose}>
            <AppIcon icon={appIcons.status.active} inline="start" />
            Done
          </Button>
        </>
      }
    >
      <SheetStep title="Slot" aside="Where it sits in the team">
        <div
          role="group"
          aria-label="Move to slot"
          className="grid grid-cols-6 gap-1.5"
        >
          {slots.map((other, slotIndex) => {
            const otherPokemon =
              other && slotIndex !== index
                ? byId.get(other.speciesId)
                : undefined;
            const isHere = slotIndex === index;

            return (
              <button
                key={slotIndex}
                type="button"
                aria-pressed={isHere}
                aria-label={
                  isHere
                    ? `Slot ${slotIndex + 1}`
                    : otherPokemon
                      ? `Move to slot ${slotIndex + 1}, swapping with ${otherPokemon.name}`
                      : `Move to slot ${slotIndex + 1}`
                }
                onClick={() => onMove(index, slotIndex)}
                className={cn(
                  "text-13 focus-visible:outline-focus flex h-15 flex-col items-center justify-center rounded-md font-extrabold tabular-nums outline-none focus-visible:outline-3 focus-visible:outline-solid",
                  isHere
                    ? "bg-select-soft text-select-ink"
                    : "bg-surface-2 text-ink-2 hover:bg-hover",
                )}
              >
                {otherPokemon?.imageUrl ? (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img src={otherPokemon.imageUrl} alt="" className="size-8" />
                ) : null}
                <span>{slotIndex + 1}</span>
              </button>
            );
          })}
        </div>
      </SheetStep>

      <SheetStep title="Role" aside="What it's for in this team">
        {/* Pills on the sheet's surface take the inset fill, as fields do. */}
        <div role="group" aria-label="Role" className="flex flex-wrap gap-1.5">
          {[
            ...planRoles,
            ...(member.role &&
            !planRoles.includes(member.role as (typeof planRoles)[number])
              ? [member.role]
              : []),
          ].map((role) => {
            const isPicked = member.role === role;

            return (
              <button
                key={role}
                type="button"
                aria-pressed={isPicked}
                onClick={() =>
                  onUpdate(index, { role: isPicked ? null : role })
                }
                className={cn(
                  "text-14 focus-visible:outline-focus inline-flex h-10 items-center gap-1.5 rounded-full px-4 font-bold outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
                  isPicked
                    ? "bg-select-soft text-select-ink font-extrabold"
                    : "bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink",
                )}
              >
                {isPicked ? (
                  <AppIcon icon={appIcons.status.active} size="sm" />
                ) : null}
                {role}
              </button>
            );
          })}
        </div>
        <div className="flex flex-col gap-1.5">
          <Label
            htmlFor="plan-slot-note"
            className="text-ink-2 text-13 font-bold"
          >
            Note
          </Label>
          <Textarea
            id="plan-slot-note"
            rows={2}
            maxLength={5000}
            value={member.notes ?? ""}
            placeholder="Why this one? For example, answers the Water gym"
            onChange={(event) =>
              onUpdate(index, { notes: event.currentTarget.value || null })
            }
          />
        </div>
      </SheetStep>

      {isBuildOpen ? (
        <SheetStep
          title="Build"
          aside={`What ${versionGroup.name} lets you choose`}
        >
          <div className="grid gap-3 sm:grid-cols-2">
            {buildFields.ability && pokemon.abilities.length ? (
              <div className="flex flex-col gap-1.5">
                <Label
                  htmlFor="plan-slot-ability"
                  className="text-ink-2 text-13 font-bold"
                >
                  Ability
                </Label>
                <SelectControl
                  id="plan-slot-ability"
                  ariaLabel="Ability"
                  placeholder="Any"
                  value={member.abilityId ? String(member.abilityId) : anyValue}
                  onValueChange={(value) =>
                    onUpdate(index, { abilityId: value ? Number(value) : null })
                  }
                  options={[
                    { label: "Any", value: anyValue },
                    ...pokemon.abilities.map((ability) => ({
                      label: ability.hidden
                        ? `${ability.name} (hidden)`
                        : ability.name,
                      value: String(ability.id),
                    })),
                  ]}
                />
              </div>
            ) : null}
            {buildFields.nature && natures.length ? (
              <div className="flex flex-col gap-1.5">
                <Label
                  htmlFor="plan-slot-nature"
                  className="text-ink-2 text-13 font-bold"
                >
                  Nature
                </Label>
                <SelectControl
                  id="plan-slot-nature"
                  ariaLabel="Nature"
                  placeholder="Any"
                  value={member.natureId ? String(member.natureId) : anyValue}
                  onValueChange={(value) =>
                    onUpdate(index, { natureId: value ? Number(value) : null })
                  }
                  options={[
                    { label: "Any", value: anyValue },
                    ...natures.map((nature) => ({
                      label: nature.name,
                      value: String(nature.id),
                    })),
                  ]}
                />
              </div>
            ) : null}
          </div>
          {buildFields.gender ? (
            <div className="flex flex-col gap-1.5">
              <span className="text-ink-2 text-13 font-bold">Gender</span>
              <SegmentedControl
                ariaLabel="Gender"
                variant="segment"
                value={member.gender ?? "any"}
                onValueChange={(value) =>
                  onUpdate(index, {
                    gender: value === "any" ? null : (value as PlanGender),
                  })
                }
                options={[
                  { label: "Any", value: "any" },
                  { label: "Male", value: "male" },
                  { label: "Female", value: "female" },
                ]}
              />
            </div>
          ) : null}
          <PlannerSlotMoves
            heldItemsApply={buildFields.heldItem}
            member={member}
            versionGroupSlug={versionGroup.slug}
            onChange={(changes) => onUpdate(index, changes)}
          />
          {unsupported.length ? (
            <p className="text-ink-3 text-13 font-semibold first-letter:uppercase">
              {unsupported.join(", ").replace(/, ([^,]*)$/, " and $1")}{" "}
              don&apos;t exist in {versionGroup.name}, so they aren&apos;t
              offered.
            </p>
          ) : null}
          {hasBuild ? (
            <Button
              type="button"
              variant="link"
              size="sm"
              className="self-start px-0"
              onClick={() => {
                setShowBuild(false);
                onUpdate(index, {
                  abilityId: null,
                  gender: null,
                  heldItemId: null,
                  moveIds: emptyPlanMoveSlots(),
                  natureId: null,
                });
              }}
            >
              Remove build
            </Button>
          ) : null}
        </SheetStep>
      ) : offered.length ? (
        <button
          type="button"
          onClick={() => setShowBuild(true)}
          className="empty-slot hover:bg-hover focus-visible:outline-focus flex items-center gap-3 rounded-md px-4 py-3 text-left outline-none focus-visible:outline-3 focus-visible:outline-solid"
        >
          <AppIcon icon={appIcons.actions.create} size="md" />
          <span>
            <b className="text-ink text-15 block font-extrabold">
              Add build details
            </b>
            <span className="text-ink-2 text-13 font-semibold">
              Optional: {offered.join(", ")}
            </span>
          </span>
        </button>
      ) : null}
    </ResponsiveDetailSheet>
  );
};
