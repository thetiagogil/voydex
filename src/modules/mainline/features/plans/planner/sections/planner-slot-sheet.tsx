"use client";

import { SheetSection } from "@/shared/components/sheet-section";
import { TextLink } from "@/shared/components/text-link";
import Link from "next/link";
import { useState } from "react";

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
import { toNatureOptions } from "@/modules/reference/features/pokemon/components/nature-options";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";
import { SlotPicker } from "@/shared/components/slot-picker";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Textarea } from "@/shared/components/ui/textarea";
import {
  AlertDialog,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/shared/components/ui/alert-dialog";

type PlannerSlotSheetProps = {
  buildFields: PlannerBuildFields;
  byId: Map<number, PlannerPokemon>;
  index: number | null;
  natures: {
    decreased_stat: string | null;
    id: number;
    increased_stat: string | null;
    name: string;
  }[];
  onClose: () => void;
  onMove: (from: number, to: number) => void;
  onRemove: (index: number) => void;
  onSwap: (index: number) => void;
  /* A locked Plan's sheet reads; this asks to unlock it. */
  onUnlock: () => void;
  onUpdate: (index: number, changes: Partial<PlanMember>) => void;
  /* While the Plan is locked: every field reads, nothing changes. */
  readOnly: boolean;
  slots: PlannerSlots;
  versionGroup: PlannerVersionGroup;
};

/*
 * Fields side by side that share the row: each fills its share, wraps when
 * narrower than 15rem, and one alone takes the whole width.
 */
const fieldRowClassName =
  "flex flex-wrap gap-4 *:min-w-[min(100%,15rem)] *:flex-1";

const anyValue = "";

/*
 * v3's slot sheet (`targetSheet`): one planned Pokémon. Move it to another
 * slot (swapping), give it a note (its role, or why it's here), and, if you like, a build: the
 * ability, nature, gender and held item the version group lets you choose
 * (offered only when its capability profile supports them) and four moves.
 * Changes wait in the sheet until Save; closing with some unsaved asks
 * first. On a locked Plan it reads, with Unlock to edit in Save's place.
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
  onUnlock,
  onUpdate,
  readOnly,
  slots,
  versionGroup,
}: PlannerSlotSheetProps) => {
  const isOpen = index !== null && Boolean(slots[index]);
  /* Stays mounted so it slides in and out with the slot it showed. */
  const [shown, setShown] = useState<ShownPlanSlot | null>(null);
  const [buildOpenFor, setBuildOpenFor] = useState<number | null>(null);
  /* The sheet's own edits and the slot it moves to, until Save. */
  const [draft, setDraft] = useState<Partial<PlanMember>>({});
  const [draftSlot, setDraftSlot] = useState<number | null>(null);
  const [draftFor, setDraftFor] = useState<number | null>(null);
  const [isDiscardOpen, setIsDiscardOpen] = useState(false);
  const nextShown = getShownPlanSlot(shown, index, slots);

  if (nextShown !== shown) {
    setShown(nextShown);
  }

  /* A sheet opened on another slot, or opened again, starts clean. */
  const openedFor = isOpen ? index : null;

  if (openedFor !== draftFor) {
    setDraftFor(openedFor);
    setDraft({});
    setDraftSlot(null);
  }

  const savedMember = shown?.member ?? null;
  const member = savedMember ? { ...savedMember, ...draft } : null;
  const pokemon = member ? byId.get(member.speciesId) : undefined;

  if (!shown || !member || !pokemon) {
    return null;
  }

  const slotIndex = shown.index;
  const targetSlot = draftSlot ?? slotIndex;
  const isDirty = Object.keys(draft).length > 0 || targetSlot !== slotIndex;
  const change = (changes: Partial<PlanMember>) =>
    setDraft((current) => ({ ...current, ...changes }));
  const save = () => {
    if (Object.keys(draft).length) onUpdate(slotIndex, draft);
    if (targetSlot !== slotIndex) onMove(slotIndex, targetSlot);
    onClose();
  };
  /* Closing with unsaved changes asks first. */
  const requestClose = () => {
    if (isDirty) {
      setIsDiscardOpen(true);
      return;
    }

    onClose();
  };

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
        if (!open) requestClose();
      }}
      presentation="side"
      kicker={`Plan slot ${slotIndex + 1} · ${versionGroup.name}`}
      title={pokemon.name}
      hero={{
        imageUrl: pokemon.imageUrl,
        name: pokemon.name,
        planned: true,
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
            {readOnly ? null : (
              <Button
                type="button"
                variant="tint"
                size="sm"
                onClick={() => onSwap(slotIndex)}
              >
                <AppIcon icon={appIcons.actions.search} inline="start" />
                Swap Pokémon
              </Button>
            )}
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
        readOnly ? (
          <Button
            type="button"
            size="sm"
            className="ml-auto"
            onClick={onUnlock}
          >
            <AppIcon icon={appIcons.actions.unlock} inline="start" />
            Unlock to edit
          </Button>
        ) : (
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
            <Button type="button" size="sm" disabled={!isDirty} onClick={save}>
              Save
            </Button>
          </>
        )
      }
    >
      {/* Locked, every field reads and none changes. */}
      <fieldset disabled={readOnly} className="m-0 min-w-0 border-0 p-0">
        <div className="grid gap-6">
          <SheetSection title="Slot" aside="Where it sits in the team">
            <SlotPicker
              ariaLabel="Move to slot"
              selected={targetSlot}
              onPick={setDraftSlot}
              groups={[
                {
                  slots: slots.map((other, otherIndex) => {
                    const isHere = otherIndex === targetSlot;
                    /* Every slot shows who sits in it, this one included. */
                    const slotPokemon = other
                      ? byId.get(other.speciesId)
                      : undefined;
                    const otherPokemon = isHere ? undefined : slotPokemon;

                    return {
                      image: slotPokemon
                        ? { name: slotPokemon.name, url: slotPokemon.imageUrl }
                        : null,
                      label: isHere
                        ? `Slot ${otherIndex + 1}`
                        : otherPokemon
                          ? `Move to slot ${otherIndex + 1}, swapping with ${otherPokemon.name}`
                          : `Move to slot ${otherIndex + 1}`,
                      mark: String(otherIndex + 1),
                      value: otherIndex,
                    };
                  }),
                },
              ]}
            />
          </SheetSection>

          <SheetSection title="Note" aside="Its role, or why this one">
            <Textarea
              id="plan-slot-note"
              aria-label="Note"
              rows={2}
              maxLength={5000}
              value={member.notes ?? ""}
              placeholder="For example, a special sweeper that answers the Water gym"
              onChange={(event) =>
                change({ notes: event.currentTarget.value || null })
              }
            />
          </SheetSection>

          {isBuildOpen ? (
            <SheetSection
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
                        change({ abilityId: value ? Number(value) : null })
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
                      value={
                        member.natureId ? String(member.natureId) : anyValue
                      }
                      onValueChange={(value) =>
                        change({ natureId: value ? Number(value) : null })
                      }
                      options={[
                        { label: "Any", value: anyValue },
                        ...toNatureOptions(
                          natures.map((nature) => ({
                            decreased: nature.decreased_stat,
                            id: nature.id,
                            increased: nature.increased_stat,
                            name: nature.name,
                          })),
                        ),
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
                      change({
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
                onChange={change}
              />
              {unsupported.length ? (
                <p className="text-ink-3 text-13 font-semibold first-letter:uppercase">
                  {unsupported.join(", ").replace(/, ([^,]*)$/, " and $1")}{" "}
                  don&apos;t exist in {versionGroup.name}, so they aren&apos;t
                  offered.
                </p>
              ) : null}
              {hasBuild && !readOnly ? (
                <TextLink
                  standalone
                  className="justify-self-start"
                  onClick={() => {
                    setBuildOpenFor(null);
                    change({
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
            </SheetSection>
          ) : offered.length && !readOnly ? (
            <button
              type="button"
              onClick={() => setBuildOpenFor(slotIndex)}
              className="empty-slot hover:bg-hover focus-ring flex items-center gap-3 rounded-md px-4 py-3 text-left"
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
      </fieldset>

      <AlertDialog open={isDiscardOpen} onOpenChange={setIsDiscardOpen}>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Discard your changes?</AlertDialogTitle>
            <AlertDialogDescription>
              You changed {pokemon.name} without saving. Closing now keeps it as
              it was.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel>Keep editing</AlertDialogCancel>
            <Button
              type="button"
              variant="destructive"
              onClick={() => {
                setIsDiscardOpen(false);
                onClose();
              }}
            >
              Discard changes
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </FormOverlay>
  );
};
