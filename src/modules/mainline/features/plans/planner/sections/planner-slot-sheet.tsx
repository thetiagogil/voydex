"use client";

import { TextLink } from "@/shared/components/text-link";
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
import {
  getShownPlanSlot,
  type ShownPlanSlot,
} from "@/modules/mainline/features/plans/planner/utils/plan-shown-slot";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Field, FieldLabel } from "@/shared/components/ui/field";
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

/* v3 `.step`, as the roster's editor: one part under its Fredoka heading. */
const SheetStep = ({
  aside,
  children,
  title,
}: {
  aside?: string;
  children: ReactNode;
  title: string;
}) => (
  <section className="grid min-w-0 gap-4">
    <div className="flex items-baseline gap-3">
      <h3 className="text-20">{title}</h3>
      {aside ? (
        <span className="text-ink-3 text-13 font-semibold">{aside}</span>
      ) : null}
    </div>
    {children}
  </section>
);

/*
 * Fields side by side that share the row: each fills its share, wraps when
 * narrower than 15rem, and one alone takes the whole width.
 */
const fieldRowClassName =
  "flex flex-wrap gap-4 *:min-w-[min(100%,15rem)] *:flex-1";

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
  const isOpen = index !== null && Boolean(slots[index]);
  /* Stays mounted so it slides in and out with the slot it showed. */
  const [shown, setShown] = useState<ShownPlanSlot | null>(null);
  const [buildOpenFor, setBuildOpenFor] = useState<number | null>(null);
  const nextShown = getShownPlanSlot(shown, index, slots);

  if (nextShown !== shown) {
    setShown(nextShown);
  }

  const member = shown?.member ?? null;
  const pokemon = member ? byId.get(member.speciesId) : undefined;

  if (!shown || !member || !pokemon) {
    return null;
  }

  const slotIndex = shown.index;

  const hasBuild = Boolean(
    member.abilityId ||
    member.natureId ||
    member.gender ||
    member.heldItemId ||
    member.moveIds.some((moveId) => moveId !== null),
  );
  const isBuildOpen = buildOpenFor === slotIndex || hasBuild;
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
    <FormOverlay
      open={isOpen}
      onOpenChange={(open) => {
        if (!open) onClose();
      }}
      presentation="side"
      kicker={`Plan slot ${slotIndex + 1} · ${versionGroup.name}`}
      title={pokemon.name}
      hero={{
        imageUrl: pokemon.imageUrl,
        meta: (
          <PokemonTypeList
            types={pokemon.types}
            badgeDisplay="icon-label"
            badgeSize="sm"
            className="flex flex-wrap gap-1.5"
          />
        ),
        type:
          primaryType && isPokemonTypeSlug(primaryType) ? primaryType : null,
        actions: (
          <div className="flex flex-wrap gap-2">
            <Button
              type="button"
              variant="tint"
              size="sm"
              onClick={() => onSwap(slotIndex)}
            >
              <AppIcon icon={appIcons.actions.search} inline="start" />
              Swap Pokémon
            </Button>
            <Link
              href={appRoutes.codexPokemonEntry(
                versionGroup.slug,
                pokemon.speciesSlug,
              )}
              className={buttonVariants({ size: "sm", variant: "tint" })}
            >
              <AppIcon icon={appIcons.modules.codex} inline="start" />
              Open in Codex
            </Link>
          </div>
        ),
      }}
      footer={
        <>
          <Button
            type="button"
            variant="destructive"
            size="sm"
            className="mr-auto"
            onClick={() => {
              onRemove(slotIndex);
              onClose();
            }}
          >
            Remove from Plan
          </Button>
          <Button type="button" size="sm" onClick={onClose}>
            <AppIcon icon={appIcons.status.active} inline="start" />
            Done
          </Button>
        </>
      }
    >
      <div className="grid gap-6">
        <SheetStep title="Slot" aside="Where it sits in the team">
          <div
            role="group"
            aria-label="Move to slot"
            className="grid grid-cols-6 gap-1.5"
          >
            {slots.map((other, otherIndex) => {
              const isHere = otherIndex === slotIndex;
              /* Every slot shows who sits in it, this one included. */
              const slotPokemon = other ? byId.get(other.speciesId) : undefined;
              const otherPokemon = isHere ? undefined : slotPokemon;

              return (
                <button
                  key={otherIndex}
                  type="button"
                  aria-pressed={isHere}
                  aria-label={
                    isHere
                      ? `Slot ${otherIndex + 1}`
                      : otherPokemon
                        ? `Move to slot ${otherIndex + 1}, swapping with ${otherPokemon.name}`
                        : `Move to slot ${otherIndex + 1}`
                  }
                  onClick={() => onMove(slotIndex, otherIndex)}
                  className={cn(
                    "text-13 focus-visible:outline-focus flex h-15 flex-col items-center justify-center gap-0.5 rounded-md font-extrabold tabular-nums outline-none focus-visible:outline-3 focus-visible:outline-solid",
                    isHere
                      ? "bg-select-soft text-select-ink"
                      : "bg-surface-2 text-ink-2 hover:bg-hover",
                  )}
                >
                  {slotPokemon?.imageUrl ? (
                    // eslint-disable-next-line @next/next/no-img-element
                    <img src={slotPokemon.imageUrl} alt="" className="size-8" />
                  ) : (
                    /* An open slot keeps the art's place, so numbers line up. */
                    <span
                      aria-hidden
                      className="empty-slot size-7 rounded-full [border-width:2px]"
                    />
                  )}
                  <span>{otherIndex + 1}</span>
                </button>
              );
            })}
          </div>
        </SheetStep>

        <SheetStep title="Role" aside="What it's for in this team">
          {/* Pills on the sheet's surface take the inset fill, as fields do. */}
          <div
            role="group"
            aria-label="Role"
            className="flex flex-wrap gap-1.5"
          >
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
                    onUpdate(slotIndex, { role: isPicked ? null : role })
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
          <Field>
            <FieldLabel htmlFor="plan-slot-note">Note</FieldLabel>
            <Textarea
              id="plan-slot-note"
              rows={2}
              maxLength={5000}
              value={member.notes ?? ""}
              placeholder="Why this one? For example, answers the Water gym"
              onChange={(event) =>
                onUpdate(slotIndex, {
                  notes: event.currentTarget.value || null,
                })
              }
            />
          </Field>
        </SheetStep>

        {isBuildOpen ? (
          <SheetStep
            title="Build"
            aside={`What ${versionGroup.name} lets you choose`}
          >
            <div className={fieldRowClassName}>
              {buildFields.ability && pokemon.abilities.length ? (
                <Field>
                  <FieldLabel htmlFor="plan-slot-ability">Ability</FieldLabel>
                  <SelectControl
                    id="plan-slot-ability"
                    ariaLabel="Ability"
                    placeholder="Any"
                    value={
                      member.abilityId ? String(member.abilityId) : anyValue
                    }
                    onValueChange={(value) =>
                      onUpdate(slotIndex, {
                        abilityId: value ? Number(value) : null,
                      })
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
                </Field>
              ) : null}
              {buildFields.nature && natures.length ? (
                <Field>
                  <FieldLabel htmlFor="plan-slot-nature">Nature</FieldLabel>
                  <SelectControl
                    id="plan-slot-nature"
                    ariaLabel="Nature"
                    placeholder="Any"
                    value={member.natureId ? String(member.natureId) : anyValue}
                    onValueChange={(value) =>
                      onUpdate(slotIndex, {
                        natureId: value ? Number(value) : null,
                      })
                    }
                    options={[
                      { label: "Any", value: anyValue },
                      ...natures.map((nature) => ({
                        label: nature.name,
                        value: String(nature.id),
                      })),
                    ]}
                  />
                </Field>
              ) : null}
            </div>
            {buildFields.gender ? (
              <Field className="w-auto max-w-full min-w-0 justify-self-start">
                <FieldLabel>Gender</FieldLabel>
                <SegmentedControl
                  ariaLabel="Gender"
                  variant="segment"
                  value={member.gender ?? "any"}
                  onValueChange={(value) =>
                    onUpdate(slotIndex, {
                      gender: value === "any" ? null : (value as PlanGender),
                    })
                  }
                  options={[
                    { label: "Any", value: "any" },
                    { label: "Male", value: "male" },
                    { label: "Female", value: "female" },
                  ]}
                />
              </Field>
            ) : null}
            <PlannerSlotMoves
              heldItemsApply={buildFields.heldItem}
              member={member}
              versionGroupSlug={versionGroup.slug}
              onChange={(changes) => onUpdate(slotIndex, changes)}
            />
            {unsupported.length ? (
              <p className="text-ink-3 text-13 font-semibold first-letter:uppercase">
                {unsupported.join(", ").replace(/, ([^,]*)$/, " and $1")}{" "}
                don&apos;t exist in {versionGroup.name}, so they aren&apos;t
                offered.
              </p>
            ) : null}
            {hasBuild ? (
              <TextLink
                standalone
                className="justify-self-start"
                onClick={() => {
                  setBuildOpenFor(null);
                  onUpdate(slotIndex, {
                    abilityId: null,
                    gender: null,
                    heldItemId: null,
                    moveIds: emptyPlanMoveSlots(),
                    natureId: null,
                  });
                }}
              >
                Remove build
              </TextLink>
            ) : null}
          </SheetStep>
        ) : offered.length ? (
          <button
            type="button"
            onClick={() => setBuildOpenFor(slotIndex)}
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
      </div>
    </FormOverlay>
  );
};
