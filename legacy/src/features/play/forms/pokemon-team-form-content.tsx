"use client";

import { usePokemonForms } from "@/features/play/hooks/usePokemon";
import {
  useAvailablePokemon,
  useNaturesWithStats,
  usePokemonAbilities,
  usePokemonLearnset,
} from "@/features/play/hooks/usePokemonGame";
import { ApiRequestError } from "@/lib/utils/fetcher";
import { Button } from "@/shared/components/ui/button";
import { Checkbox } from "@/shared/components/ui/checkbox";
import {
  FieldGroup,
  FieldLegend,
  FieldSet,
} from "@/shared/components/ui/field";
import { Label } from "@/shared/components/ui/label";
import { Spinner } from "@/shared/components/ui/spinner";
import { getPokemonSpriteUrl } from "@/shared/utils";
import { zodResolver } from "@hookform/resolvers/zod";
import Image from "next/image";
import { useEffect, useMemo } from "react";
import { type FieldErrors, useForm } from "react-hook-form";
import type { PlayPokemon } from "../types";
import { AbilityField } from "./pokemon-team-modal-fields/ability-field";
import { FormField } from "./pokemon-team-modal-fields/form-field";
import { GenderField } from "./pokemon-team-modal-fields/gender-field";
import { LevelField } from "./pokemon-team-modal-fields/level-field";
import { MoveField } from "./pokemon-team-modal-fields/move-field";
import { NatureField } from "./pokemon-team-modal-fields/nature-field";
import { NicknameField } from "./pokemon-team-modal-fields/nickname-field";
import { PositionField } from "./pokemon-team-modal-fields/position-field";
import { SpeciesField } from "./pokemon-team-modal-fields/species-field";
import {
  pokemonTeamSchema,
  pokemonTeamSchemaGen1And2,
  type PokemonTeamFormValues,
} from "./pokemon-team-schemas";

const TEAM_FIELD_IDS: Record<keyof PokemonTeamFormValues, string> = {
  species_id: "species_id",
  form_id: "form_id",
  nickname: "nickname",
  level: "level",
  position: "position",
  gender: "gender",
  is_shiny: "is_shiny",
  nature_id: "nature_id",
  ability_id: "ability_id",
  move1_id: "move1_id",
  move2_id: "move2_id",
  move3_id: "move3_id",
  move4_id: "move4_id",
};

const TEAM_FIELD_ORDER: Array<keyof PokemonTeamFormValues> = [
  "species_id",
  "form_id",
  "nickname",
  "level",
  "gender",
  "position",
  "nature_id",
  "ability_id",
  "move1_id",
  "move2_id",
  "move3_id",
  "move4_id",
];

const focusFieldElement = (id?: string) => {
  if (!id || typeof document === "undefined") {
    return;
  }

  window.requestAnimationFrame(() => {
    const element = document.getElementById(id);

    if (!(element instanceof HTMLElement)) {
      return;
    }

    element.focus();
    element.scrollIntoView({ block: "center", behavior: "smooth" });
  });
};

const getFirstTeamErrorField = (errors: FieldErrors<PokemonTeamFormValues>) => {
  return TEAM_FIELD_ORDER.find((field) => errors[field]);
};

const getDefaultPosition = (
  team: PlayPokemon[],
  isEditing: boolean,
  position?: number | null,
) => {
  if (isEditing) {
    return position || 1;
  }

  if (position) {
    return position;
  }

  const occupiedPositions = new Set(team.map((member) => member.position));

  for (let nextPosition = 1; nextPosition <= 12; nextPosition += 1) {
    if (!occupiedPositions.has(nextPosition)) {
      return nextPosition;
    }
  }

  return undefined;
};

const buildDefaultValues = (
  defaultPosition?: number,
): PokemonTeamFormValues => ({
  species_id: undefined as never,
  form_id: undefined as never,
  nickname: "",
  level: 5,
  position: defaultPosition as never,
  gender: undefined,
  is_shiny: false,
  nature_id: undefined,
  ability_id: undefined,
  move1_id: undefined,
  move2_id: undefined,
  move3_id: undefined,
  move4_id: undefined,
});

type PlayTeamFormContentProps = {
  generationId: number;
  versionGroupId?: number;
  gameId?: number;
  team?: PlayPokemon[];
  pokemon?: PlayPokemon | null;
  position?: number | null;
  isPending: boolean;
  onSubmit: (data: PokemonTeamFormValues) => Promise<void>;
  onCancel: () => void;
};

export const PlayTeamFormContent = ({
  generationId,
  versionGroupId,
  gameId,
  team = [],
  pokemon,
  position,
  isPending,
  onSubmit,
  onCancel,
}: PlayTeamFormContentProps) => {
  const isEditing = !!pokemon;
  const isTeamAtCapacity = !isEditing && team.length >= 12;

  const { data: availablePokemon = [] } = useAvailablePokemon(
    versionGroupId,
    gameId,
  );
  const { data: natures = [] } = useNaturesWithStats();

  const speciesList = useMemo(() => {
    const speciesMap = new Map<
      number,
      { id: number; slug: string; name: string; nationalNumber: number }
    >();

    for (const availableEntry of availablePokemon) {
      if (!speciesMap.has(availableEntry.speciesId)) {
        speciesMap.set(availableEntry.speciesId, {
          id: availableEntry.species.id,
          slug: availableEntry.species.slug,
          name: availableEntry.species.name,
          nationalNumber: availableEntry.species.nationalNumber,
        });
      }
    }

    return Array.from(speciesMap.values()).sort(
      (left, right) => left.nationalNumber - right.nationalNumber,
    );
  }, [availablePokemon]);

  const hasNatureAndAbility = generationId >= 3;
  const defaultPosition = useMemo(
    () => getDefaultPosition(team, isEditing, position),
    [team, isEditing, position],
  );

  const {
    register,
    handleSubmit,
    watch,
    reset,
    setValue,
    setError,
    clearErrors,
    formState: { errors },
  } = useForm<PokemonTeamFormValues>({
    resolver: zodResolver(
      hasNatureAndAbility ? pokemonTeamSchema : pokemonTeamSchemaGen1And2,
    ) as never,
    shouldFocusError: false,
    defaultValues: buildDefaultValues(defaultPosition),
  });

  const selectedSpeciesId = watch("species_id");
  const selectedFormId = watch("form_id");
  const selectedAbilityId = watch("ability_id");
  const selectedPosition = watch("position");
  const isShiny = watch("is_shiny");
  const selectedGender = watch("gender");
  const selectedNatureId = watch("nature_id");
  const move1Id = watch("move1_id");
  const move2Id = watch("move2_id");
  const move3Id = watch("move3_id");
  const move4Id = watch("move4_id");

  const { data: forms = [], isLoading: isLoadingForms } =
    usePokemonForms(selectedSpeciesId);

  const selectedSpecies = useMemo(
    () => speciesList.find((species) => species.id === selectedSpeciesId),
    [speciesList, selectedSpeciesId],
  );

  const selectedForm = useMemo(
    () => forms.find((form) => form.id === selectedFormId),
    [forms, selectedFormId],
  );

  const { data: abilities = [], isLoading: isLoadingAbilities } =
    usePokemonAbilities(selectedSpeciesId, selectedFormId, generationId);

  const { data: learnsetMoves = [], isLoading: isLoadingLearnset } =
    usePokemonLearnset(selectedSpeciesId, selectedFormId, versionGroupId);

  const moves = useMemo(() => {
    const moveMap = new Map<
      number,
      {
        id: number;
        slug: string;
        name: string;
        learnMethod: string;
        levelLearnedAt: number | null;
      }
    >();

    for (const learnsetEntry of learnsetMoves) {
      if (!moveMap.has(learnsetEntry.moveId)) {
        moveMap.set(learnsetEntry.moveId, {
          id: learnsetEntry.moveId,
          slug: learnsetEntry.moveSlug,
          name: learnsetEntry.moveName,
          learnMethod: learnsetEntry.learnMethod,
          levelLearnedAt: learnsetEntry.levelLearnedAt,
        });
      }
    }

    return Array.from(moveMap.values()).sort((left, right) =>
      left.name.localeCompare(right.name),
    );
  }, [learnsetMoves]);

  const setTeamValue = (
    name: keyof PokemonTeamFormValues,
    value: PokemonTeamFormValues[keyof PokemonTeamFormValues],
  ) => {
    setValue(name as never, value as never, {
      shouldDirty: true,
      shouldValidate: true,
    });
  };

  useEffect(() => {
    if (pokemon) {
      reset({
        species_id: pokemon.species.id,
        form_id: pokemon.form?.id,
        nickname: pokemon.nickname || "",
        level: pokemon.level || 5,
        position: pokemon.position || position || 1,
        gender:
          pokemon.gender === "unknown"
            ? undefined
            : (pokemon.gender as "male" | "female" | "genderless"),
        is_shiny: pokemon.isShiny || false,
        nature_id: pokemon.nature?.id,
        ability_id: pokemon.ability?.id,
        move1_id: pokemon.moves[0]?.id,
        move2_id: pokemon.moves[1]?.id,
        move3_id: pokemon.moves[2]?.id,
        move4_id: pokemon.moves[3]?.id,
      });
      return;
    }

    reset(buildDefaultValues(defaultPosition));
  }, [pokemon, position, reset, defaultPosition]);

  useEffect(() => {
    if (!selectedSpeciesId) {
      if (selectedFormId !== undefined) {
        setValue("form_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
      }
      return;
    }

    if (isLoadingForms) {
      return;
    }

    if (forms.length === 0) {
      if (selectedFormId !== undefined) {
        setValue("form_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
      }
      return;
    }

    const hasSelectedForm = forms.some((form) => form.id === selectedFormId);

    if (!hasSelectedForm) {
      setValue("form_id", forms[0].id as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
    }
  }, [forms, isLoadingForms, selectedFormId, selectedSpeciesId, setValue]);

  useEffect(() => {
    if (!hasNatureAndAbility) {
      return;
    }

    if (!selectedSpeciesId || !selectedFormId) {
      if (selectedAbilityId !== undefined) {
        setValue("ability_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
      }
      return;
    }

    if (isLoadingAbilities) {
      return;
    }

    const hasSelectedAbility = abilities.some(
      (ability) => ability.id === selectedAbilityId,
    );

    if (hasSelectedAbility) {
      return;
    }

    if (abilities.length === 1) {
      setValue("ability_id", abilities[0].id as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
      return;
    }

    if (selectedAbilityId !== undefined) {
      setValue("ability_id", undefined as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
    }
  }, [
    abilities,
    hasNatureAndAbility,
    isLoadingAbilities,
    selectedAbilityId,
    selectedFormId,
    selectedSpeciesId,
    setValue,
  ]);

  useEffect(() => {
    const currentMoveIds = [move1Id, move2Id, move3Id, move4Id];

    if (!selectedSpeciesId || !selectedFormId) {
      if (currentMoveIds.some(Boolean)) {
        setValue("move1_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
        setValue("move2_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
        setValue("move3_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
        setValue("move4_id", undefined as never, {
          shouldDirty: true,
          shouldValidate: true,
        });
      }
      return;
    }

    if (isLoadingLearnset) {
      return;
    }

    const validMoveIds = new Set(moves.map((move) => move.id));
    const nextMoveIds = currentMoveIds.map((moveId) =>
      moveId && validMoveIds.has(moveId) ? moveId : undefined,
    );

    for (let index = 1; index < nextMoveIds.length; index += 1) {
      if (!nextMoveIds[index - 1]) {
        nextMoveIds[index] = undefined;
      }
    }

    if (
      nextMoveIds[0] !== move1Id ||
      nextMoveIds[1] !== move2Id ||
      nextMoveIds[2] !== move3Id ||
      nextMoveIds[3] !== move4Id
    ) {
      setValue("move1_id", nextMoveIds[0] as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
      setValue("move2_id", nextMoveIds[1] as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
      setValue("move3_id", nextMoveIds[2] as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
      setValue("move4_id", nextMoveIds[3] as never, {
        shouldDirty: true,
        shouldValidate: true,
      });
    }
  }, [
    isLoadingLearnset,
    move1Id,
    move2Id,
    move3Id,
    move4Id,
    moves,
    selectedFormId,
    selectedSpeciesId,
    setValue,
  ]);

  const handleFormSubmit = async (data: PokemonTeamFormValues) => {
    clearErrors("root");

    try {
      await onSubmit(data);
    } catch (error) {
      if (error instanceof ApiRequestError && error.fieldErrors?.position) {
        setError("position", {
          type: "server",
          message: error.fieldErrors.position,
        });
        focusFieldElement(TEAM_FIELD_IDS.position);
        return;
      }

      const message =
        error instanceof Error
          ? error.message
          : "Failed to save the Pokemon.";

      if (message.toLowerCase().includes("position")) {
        setError("position", {
          type: "server",
          message,
        });
        focusFieldElement(TEAM_FIELD_IDS.position);
        return;
      }

      setError("root", {
        type: "server",
        message,
      });
    }
  };

  const handleFormError = (formErrors: FieldErrors<PokemonTeamFormValues>) => {
    const firstErrorField = getFirstTeamErrorField(formErrors);
    focusFieldElement(
      firstErrorField ? TEAM_FIELD_IDS[firstErrorField] : undefined,
    );
  };

  const positionError =
    errors.position?.message ||
    (isTeamAtCapacity
      ? "Your roster is full. Remove a Pokemon or edit an existing one before adding more."
      : undefined);

  return (
    <form
      onSubmit={handleSubmit(handleFormSubmit, handleFormError)}
      className="flex max-h-[80vh] flex-col"
    >
      <div className="border-border flex gap-4 border-b p-6">
        <FieldSet className="flex-1">
          <FieldLegend>Pokemon Selection</FieldLegend>
          <div className="flex gap-2">
            <FieldGroup>
              <SpeciesField
                species={speciesList}
                value={selectedSpeciesId}
                onChange={(value) => setTeamValue("species_id", value as never)}
                error={errors.species_id?.message}
              />

              <FormField
                forms={forms}
                value={selectedFormId}
                onChange={(value) => setTeamValue("form_id", value as never)}
                disabled={
                  !selectedSpeciesId || forms.length === 0 || forms.length === 1
                }
                loading={isLoadingForms}
                error={errors.form_id?.message}
              />
            </FieldGroup>

            <div className="flex flex-col items-center justify-end gap-2">
              <div className="h-28 w-28 shrink-0">
                <div className="flex h-full items-center justify-center rounded-lg p-2">
                  {isLoadingForms ? (
                    <div className="flex h-full w-full items-center justify-center">
                      <Spinner className="text-muted size-8" />
                    </div>
                  ) : selectedForm?.pokemonDbSpriteSlug || selectedFormId ? (
                    <div className="flex flex-col items-center gap-2">
                      <Image
                        src={
                          getPokemonSpriteUrl(
                            isShiny,
                            selectedForm?.pokemonDbSpriteSlug || "unknown",
                          ) || ""
                        }
                        alt={selectedSpecies?.name || "Pokemon"}
                        width={112}
                        height={112}
                        className="h-full w-full object-contain"
                      />
                    </div>
                  ) : (
                    <div className="flex h-full w-full items-center justify-center">
                      <span className="text-muted-foreground text-xs">
                        No preview
                      </span>
                    </div>
                  )}
                </div>
              </div>

              <Label className="flex cursor-pointer items-center gap-2">
                <Checkbox
                  id="is_shiny"
                  checked={isShiny}
                  onCheckedChange={(checked) =>
                    setTeamValue("is_shiny", (checked === true) as never)
                  }
                />
                <span className="text-sm font-normal">Shiny</span>
              </Label>
            </div>
          </div>
        </FieldSet>
      </div>

      <div className="border-border flex flex-1 flex-col gap-7 overflow-y-auto border-b p-6">
        <FieldSet>
          <FieldLegend>Basic Information</FieldLegend>
          <FieldGroup>
            <NicknameField
              register={register}
              placeholder={
                selectedSpecies?.name ||
                pokemon?.species.name ||
                "Enter nickname"
              }
              error={errors.nickname}
            />

            <LevelField register={register} error={errors.level} />

            <GenderField
              value={selectedGender}
              onChange={(value) => setTeamValue("gender", value as never)}
              error={errors.gender}
            />

            <PositionField
              value={selectedPosition}
              onChange={(value) => setTeamValue("position", value as never)}
              team={team}
              currentPokemonId={pokemon?.id}
              isEditing={isEditing}
              error={positionError}
            />
          </FieldGroup>
        </FieldSet>

        <FieldSet>
          <FieldLegend>Battle Attributes</FieldLegend>
          {hasNatureAndAbility && (
            <FieldGroup>
              <div className="grid grid-cols-2 gap-4">
                <NatureField
                  natures={natures}
                  value={selectedNatureId}
                  onChange={(value) => setTeamValue("nature_id", value as never)}
                  error={errors.nature_id}
                  required
                />

                <AbilityField
                  abilities={abilities}
                  value={selectedAbilityId}
                  onChange={(value) => setTeamValue("ability_id", value as never)}
                  error={errors.ability_id}
                  required
                  disabled={
                    !selectedSpeciesId ||
                    !selectedFormId ||
                    isLoadingAbilities ||
                    abilities.length === 0
                  }
                />
              </div>
            </FieldGroup>
          )}

          <FieldGroup>
            <div className="grid grid-cols-2 gap-4">
              <MoveField
                moves={moves}
                value={move1Id}
                onChange={(value) => setTeamValue("move1_id", value as never)}
                label="Move 1"
                id="move1_id"
                error={errors.move1_id}
                disabled={
                  !selectedSpeciesId ||
                  !selectedFormId ||
                  isLoadingLearnset ||
                  moves.length === 0
                }
              />

              <MoveField
                moves={moves}
                value={move2Id}
                onChange={(value) => setTeamValue("move2_id", value as never)}
                label="Move 2"
                id="move2_id"
                error={errors.move2_id}
                disabled={
                  !selectedSpeciesId ||
                  !selectedFormId ||
                  isLoadingLearnset ||
                  !move1Id
                }
              />

              <MoveField
                moves={moves}
                value={move3Id}
                onChange={(value) => setTeamValue("move3_id", value as never)}
                label="Move 3"
                id="move3_id"
                error={errors.move3_id}
                disabled={
                  !selectedSpeciesId ||
                  !selectedFormId ||
                  isLoadingLearnset ||
                  !move2Id
                }
              />

              <MoveField
                moves={moves}
                value={move4Id}
                onChange={(value) => setTeamValue("move4_id", value as never)}
                label="Move 4"
                id="move4_id"
                error={errors.move4_id}
                disabled={
                  !selectedSpeciesId ||
                  !selectedFormId ||
                  isLoadingLearnset ||
                  !move3Id
                }
              />
            </div>
          </FieldGroup>
        </FieldSet>
      </div>

      <div className="p-6">
        {errors.root?.message ? (
          <p role="alert" className="text-destructive mb-4 text-sm">
            {errors.root.message}
          </p>
        ) : null}

        <div className="flex gap-2">
          <Button
            type="submit"
            className="flex-1"
            disabled={isPending || isTeamAtCapacity}
          >
            {isEditing ? "Save Changes" : "Add Pokemon"}
          </Button>
          <Button type="button" variant="outline" onClick={onCancel}>
            Cancel
          </Button>
        </div>
      </div>
    </form>
  );
};
