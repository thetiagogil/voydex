"use client";

import { useEffect, useId, useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { playTeamSize } from "@/modules/mainline/features/plays/shared/utils/play-team-slots";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import {
  getPlayTeamMemberImageUrl,
  getPlayTeamMemberName,
} from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import {
  gameMechanics,
  supportsGameMechanic,
  type GameMechanicsProfile,
} from "@/modules/reference/features/games/domain/game-mechanics";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Button } from "@/shared/components/ui/button";
import { FieldError } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";

import { loadTeamMemberEditorOptionsAction } from "../../server/team-member-editor-options-action";
import { updateMainlinePlayPokemonAction } from "../../server/team-member-mutation-actions";
import {
  getTeamMemberEditorChanges,
  getTeamMemberEditorValues,
  toUpdateTeamMemberInput,
  type TeamMemberEditorField,
  type TeamMemberEditorValues,
} from "../../utils/team-member-editor-model";
import { getTeamMemberEditorHeadLine } from "../../utils/team-member-display";
import { TeamMemberEditorActions } from "./team-member-editor-actions";
import {
  TeamMemberEditorDetailsStep,
  type TeamMemberEditorOptionsState,
} from "./team-member-editor-details-step";
import { TeamMemberEditorMovesStep } from "./team-member-editor-moves-step";
import { TeamMemberEditorNotesStep } from "./team-member-editor-notes-step";
import { TeamMemberEditorReview } from "./team-member-editor-review";
import { TeamMemberEditorWhereStep } from "./team-member-editor-where-step";
import { TeamMemberEditorWhoStep } from "./team-member-editor-who-step";

/*
 * Edit Pokémon (v3 `editor`): a side sheet over the Roster (a bottom sheet
 * on phones). Who, Slot, Details, Moves and Notes, then Review changes before
 * Save. Only what the Play's game records is offered. Evolve, Change form,
 * Replace and Retire act straight away from the head, and a pick in Slot
 * moves it straight away; Delete record is for mistakes.
 */
export const TeamMemberEditorSheet = ({
  canGigantamax,
  isMoving,
  mechanics,
  member,
  onMove,
  onOpenChange,
  onReplace,
  open,
  playId,
  roster,
}: {
  /* It reaches a Gigantamax form, so the Gigantamax Factor is offered. */
  canGigantamax: boolean;
  isMoving: boolean;
  mechanics: GameMechanicsProfile;
  member: MainlinePlayTeamMember;
  onMove: (playPokemonId: string, toSlot: number) => void;
  onOpenChange: (open: boolean) => void;
  /* Opens the species picker to choose who takes its place. */
  onReplace: () => void;
  open: boolean;
  playId: string;
  roster: readonly MainlinePlayTeamMember[];
}) => {
  const router = useRouter();
  const id = useId();
  const initial = getTeamMemberEditorValues(member);
  const [values, setValues] = useState(initial);
  const [optionsState, setOptionsState] =
    useState<TeamMemberEditorOptionsState>({
      status: "loading",
    });
  const [isReviewing, setIsReviewing] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const playPokemonId = member.play_pokemon_id ?? "";
  const name = getPlayTeamMemberName(member);
  const options = optionsState.status === "ready" ? optionsState.options : null;
  const supports = {
    abilities: supportsGameMechanic(mechanics, gameMechanics.abilities),
    gender: supportsGameMechanic(mechanics, gameMechanics.pokemonGender),
    gigantamax:
      supportsGameMechanic(mechanics, gameMechanics.dynamax) &&
      (canGigantamax || member.has_gigantamax_factor === true),
    heldItems: supportsGameMechanic(mechanics, gameMechanics.heldItems),
    natures: supportsGameMechanic(mechanics, gameMechanics.natures),
    terastal: supportsGameMechanic(mechanics, gameMechanics.terastal),
  };

  useEffect(() => {
    if (!open || !playPokemonId) {
      return;
    }

    let isCurrent = true;

    void loadTeamMemberEditorOptionsAction({ playId, playPokemonId }).then(
      (result) => {
        if (!isCurrent) {
          return;
        }

        setOptionsState(
          result.status === "error"
            ? { message: result.message, status: "error" }
            : { options: result.options, status: "ready" },
        );
      },
    );

    return () => {
      isCurrent = false;
    };
  }, [open, playId, playPokemonId]);

  const nameOf = (field: TeamMemberEditorField, value: string) => {
    const lists: Partial<
      Record<TeamMemberEditorField, { id: number; name: string }[]>
    > = {
      abilityId: options?.abilities,
      ballItemId: options?.balls,
      heldItemId: options?.heldItems,
      moveIds: [
        ...(options?.moves ?? []),
        ...member.moves.map((move) => ({ id: move.id, name: move.name })),
      ],
      natureId: options?.natures,
      teraTypeId: options?.teraTypes,
    };
    const fromMember: Partial<Record<TeamMemberEditorField, string | null>> = {
      abilityId: member.ability_name,
      ballItemId: member.ball_item_name,
      heldItemId: member.held_item_name,
      natureId: member.nature_name,
      teraTypeId: member.tera_type_name,
    };

    return (
      lists[field]?.find((option) => String(option.id) === value)?.name ??
      (value === initial[field] ? fromMember[field] : null) ??
      value
    );
  };

  const changes = getTeamMemberEditorChanges(initial, values, nameOf);
  const edited = (field: TeamMemberEditorField) =>
    changes.some((change) => change.field === field);

  const change = <TField extends TeamMemberEditorField>(
    field: TField,
    value: TeamMemberEditorValues[TField],
  ) => {
    setValues((current) => ({ ...current, [field]: value }));
    setError(null);
  };

  const revert = (field: TeamMemberEditorField) => {
    setValues((current) => ({ ...current, [field]: initial[field] }));
  };

  const close = (nextOpen: boolean) => {
    if (isSaving) {
      return;
    }

    onOpenChange(nextOpen);

    if (!nextOpen) {
      setValues(initial);
      setIsReviewing(false);
      setError(null);
    }
  };

  const save = () => {
    startSaving(async () => {
      try {
        const result = await updateMainlinePlayPokemonAction({
          changes: toUpdateTeamMemberInput(values, supports),
          playId,
          playPokemonId,
        });

        if (result.status === "error") {
          setError(result.message);
          return;
        }

        onOpenChange(false);
        setIsReviewing(false);
        toast.success(`${values.nickname.trim() || member.species_name} saved`);
        router.refresh();
      } catch (saveError) {
        setError(
          saveError instanceof Error
            ? saveError.message
            : "Unable to save those changes.",
        );
      }
    });
  };

  const placeLabel =
    member.roster_state_slug === "active"
      ? `On the team · Slot ${member.slot ?? "?"}`
      : `In reserve · R${member.slot ? member.slot - playTeamSize : "?"}`;
  const primaryTypeSlug =
    member.primaryType && isPokemonTypeSlug(member.primaryType.slug)
      ? member.primaryType.slug
      : null;

  const stepProps = { change, edited, id, values };
  const details = (
    <form
      id={`${id}-form`}
      className="grid gap-6"
      onSubmit={(event) => {
        event.preventDefault();
        save();
      }}
    >
      <TeamMemberEditorWhoStep
        {...stepProps}
        member={member}
        supportsGender={supports.gender}
        supportsGigantamax={supports.gigantamax}
      />
      <TeamMemberEditorWhereStep
        isMoving={isMoving}
        member={member}
        onMove={onMove}
        placeLabel={placeLabel}
        roster={roster}
      />
      <TeamMemberEditorDetailsStep
        {...stepProps}
        member={member}
        optionsState={optionsState}
        supports={supports}
      />
      {options ? (
        <TeamMemberEditorMovesStep
          change={change}
          edited={edited}
          member={member}
          options={options}
          values={values}
        />
      ) : null}
      <TeamMemberEditorNotesStep {...stepProps} />
    </form>
  );

  return (
    <FormOverlay
      open={open}
      onOpenChange={close}
      presentation="side"
      size="lg"
      kicker={placeLabel}
      title={name}
      hero={{
        imageUrl: getPlayTeamMemberImageUrl(member),
        name,
        meta: (
          <div className="grid gap-2">
            <p className="text-ink-2 text-14 font-semibold">
              {getTeamMemberEditorHeadLine(member)}
            </p>
            <PokemonTypeList
              primaryType={member.primaryType}
              secondaryType={member.secondaryType}
              badgeDisplay="icon-label"
              badgeSize="sm"
              className="flex gap-1.5"
            />
          </div>
        ),
        type: primaryTypeSlug,
        actions: (
          <TeamMemberEditorActions
            member={member}
            options={options}
            onDone={() => close(false)}
            onReplace={onReplace}
            playId={playId}
          />
        ),
      }}
      footer={
        <>
          <Button
            type="button"
            variant="ghost"
            size="sm"
            className="mr-auto"
            disabled={!changes.length}
            aria-pressed={isReviewing}
            onClick={() => setIsReviewing((current) => !current)}
          >
            {changes.length
              ? `${changes.length} ${changes.length === 1 ? "change" : "changes"} · ${isReviewing ? "hide" : "review"}`
              : "No changes yet"}
          </Button>
          <Button
            type="button"
            variant="secondary"
            size="sm"
            disabled={isSaving}
            onClick={() => close(false)}
          >
            Cancel
          </Button>
          <Button
            type="submit"
            size="sm"
            form={`${id}-form`}
            disabled={isSaving || !changes.length}
            aria-busy={isSaving}
          >
            {isSaving ? <Spinner data-icon="inline-start" /> : null}
            Save
          </Button>
        </>
      }
    >
      {/* Review hides the form, but Save still submits it. */}
      <div hidden={isReviewing}>{details}</div>
      {isReviewing ? (
        <TeamMemberEditorReview changes={changes} id={id} onRevert={revert} />
      ) : null}
      {error ? <FieldError className="mt-4">{error}</FieldError> : null}
    </FormOverlay>
  );
};
