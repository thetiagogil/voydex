"use client";

import {
  pokemonTeamSchema,
  pokemonTeamSchemaGen1And2,
  type PokemonTeamFormValues,
} from "@/components/forms/schemas/pokemon-team-schemas";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { FieldGroup, FieldLegend, FieldSet } from "@/components/ui/field";
import { Label } from "@/components/ui/label";
import { Spinner } from "@/components/ui/spinner";
import { useAbilities, useMoves, useNatures } from "@/hooks/meta";
import { usePokemonForms, usePokemonSpecies } from "@/hooks/meta/usePokemon";
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect, useMemo } from "react";
import { useForm } from "react-hook-form";
import { AbilityField } from "./pokemon-team-modal-fields/ability-field";
import { FormField } from "./pokemon-team-modal-fields/form-field";
import { GenderField } from "./pokemon-team-modal-fields/gender-field";
import { LevelField } from "./pokemon-team-modal-fields/level-field";
import { MoveField } from "./pokemon-team-modal-fields/move-field";
import { NatureField } from "./pokemon-team-modal-fields/nature-field";
import { NicknameField } from "./pokemon-team-modal-fields/nickname-field";
import { PositionField } from "./pokemon-team-modal-fields/position-field";
import { SpeciesField } from "./pokemon-team-modal-fields/species-field";

interface PlayTeamFormContentProps {
  generationId: number;
  team?: PlayPokemon[];
  pokemon?: PlayPokemon | null;
  position?: number | null;
  isPending: boolean;
  onSubmit: (data: PokemonTeamFormValues) => Promise<void>;
  onCancel: () => void;
}

export const PlayTeamFormContent = ({
  generationId,
  team = [],
  pokemon,
  position,
  isPending,
  onSubmit,
  onCancel,
}: PlayTeamFormContentProps) => {
  const isEditing = !!pokemon;

  const { data: speciesList = [] } = usePokemonSpecies(generationId);
  const { data: natures = [] } = useNatures();
  const { data: abilities = [] } = useAbilities();
  const { data: moves = [] } = useMoves();

  // Determine if nature and ability are available (Gen 3+)
  const hasNatureAndAbility = generationId >= 3;

  // Calculate default position for new pokemon (last available position)
  const defaultPosition = useMemo(() => {
    if (isEditing || position) return position || 1;

    // Find the highest position in the current team
    if (team.length === 0) return 1;

    const maxPosition = Math.max(...team.map((p) => p.position));
    return maxPosition + 1;
  }, [isEditing, position, team]);

  const {
    register,
    handleSubmit,
    watch,
    reset,
    setValue,
    formState: { errors },
  } = useForm<PokemonTeamFormValues>({
    resolver: zodResolver(
      hasNatureAndAbility ? pokemonTeamSchema : pokemonTeamSchemaGen1And2,
    ) as any,
    defaultValues: {
      species_id: undefined,
      form_id: undefined,
      nickname: "",
      level: 5,
      position: defaultPosition,
      gender: undefined,
      is_shiny: false,
      nature_id: undefined,
      ability_id: undefined,
      move1_id: undefined,
      move2_id: undefined,
      move3_id: undefined,
      move4_id: undefined,
    } as any,
  });

  const selectedSpeciesId = watch("species_id");
  const { data: forms = [], isLoading: isLoadingForms } =
    usePokemonForms(selectedSpeciesId);

  // Get selected species and form for sprite display
  const selectedSpecies = useMemo(
    () => speciesList.find((s) => s.id === selectedSpeciesId),
    [speciesList, selectedSpeciesId],
  );

  const selectedFormId = watch("form_id");
  const selectedForm = useMemo(
    () => forms.find((f) => f.id === selectedFormId),
    [forms, selectedFormId],
  );

  // Reset form when pokemon or position changes
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
        is_shiny: pokemon.is_shiny || false,
        nature_id: pokemon.nature?.id,
        ability_id: pokemon.ability?.id,
        move1_id: pokemon.moves[0]?.id,
        move2_id: pokemon.moves[1]?.id,
        move3_id: pokemon.moves[2]?.id,
        move4_id: pokemon.moves[3]?.id,
      } as any);
    } else {
      reset({
        species_id: undefined,
        form_id: undefined,
        nickname: "",
        level: 5,
        position: defaultPosition,
        gender: undefined,
        is_shiny: false,
        nature_id: undefined,
        ability_id: undefined,
        move1_id: undefined,
        move2_id: undefined,
        move3_id: undefined,
        move4_id: undefined,
      } as any);
    }
  }, [pokemon, position, reset, defaultPosition]);

  // Auto-select form when species changes
  useEffect(() => {
    if (forms.length === 1) {
      // Auto-select if only one form
      setValue("form_id", forms[0].id);
    } else if (forms.length > 1 && !isEditing) {
      // Auto-select first form only when adding new pokemon with multiple forms
      setValue("form_id", forms[0].id);
    }
  }, [forms, setValue, isEditing]);

  const handleFormSubmit = async (data: PokemonTeamFormValues) => {
    await onSubmit(data);
  };

  return (
    <form
      onSubmit={handleSubmit(handleFormSubmit)}
      className="flex max-h-[80vh] flex-col"
    >
      {/* Top Section */}
      <div className="border-border flex gap-4 border-b p-6">
        <FieldSet className="flex-1">
          <FieldLegend>Pokémon Selection</FieldLegend>
          <div className="flex gap-2">
            <FieldGroup>
              <SpeciesField
                species={speciesList}
                value={selectedSpeciesId}
                onChange={(value) => setValue("species_id", value as any)}
                error={errors.species_id?.message}
              />

              <FormField
                forms={forms}
                value={selectedFormId}
                onChange={(value) => setValue("form_id", value as any)}
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
                  ) : selectedForm?.sprite_url ? (
                    <div className="flex flex-col items-center gap-2">
                      <img
                        src={selectedForm.sprite_url}
                        alt={selectedSpecies?.name || "Pokemon"}
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
                  checked={watch("is_shiny")}
                  onCheckedChange={(checked) =>
                    setValue("is_shiny", checked === true)
                  }
                />
                <span className="text-sm font-normal">Shiny</span>
              </Label>
            </div>
          </div>
        </FieldSet>
      </div>

      {/* Scrollable Section */}
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
              value={watch("gender")}
              onChange={(value: any) => setValue("gender", value)}
              error={errors.gender}
            />

            <PositionField
              value={watch("position")}
              onChange={(value: any) => setValue("position", value)}
              team={team}
              currentPokemonId={pokemon?.id}
              isEditing={isEditing}
              error={errors.position?.message}
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
                  value={watch("nature_id")}
                  onChange={(value: any) => setValue("nature_id", value)}
                  error={errors.nature_id}
                  required
                />

                <AbilityField
                  abilities={abilities}
                  value={watch("ability_id")}
                  onChange={(value: any) => setValue("ability_id", value)}
                  error={errors.ability_id}
                  required
                />
              </div>
            </FieldGroup>
          )}

          <FieldGroup>
            <div className="grid grid-cols-2 gap-4">
              <MoveField
                moves={moves}
                value={watch("move1_id")}
                onChange={(value: any) => setValue("move1_id", value)}
                label="Move 1"
                id="move1_id"
                error={errors.move1_id}
              />

              <MoveField
                moves={moves}
                value={watch("move2_id")}
                onChange={(value: any) => setValue("move2_id", value)}
                label="Move 2"
                id="move2_id"
                error={errors.move2_id}
                disabled={!watch("move1_id")}
              />

              <MoveField
                moves={moves}
                value={watch("move3_id")}
                onChange={(value: any) => setValue("move3_id", value)}
                label="Move 3"
                id="move3_id"
                error={errors.move3_id}
                disabled={!watch("move2_id")}
              />

              <MoveField
                moves={moves}
                value={watch("move4_id")}
                onChange={(value: any) => setValue("move4_id", value)}
                label="Move 4"
                id="move4_id"
                error={errors.move4_id}
                disabled={!watch("move3_id")}
              />
            </div>
          </FieldGroup>
        </FieldSet>
      </div>

      {/* Bottom Section */}
      <div className="p-6">
        <div className="flex gap-2">
          <Button type="submit" className="flex-1" disabled={isPending}>
            {isEditing ? "Save Changes" : "Add Pokémon"}
          </Button>
          <Button type="button" variant="outline" onClick={onCancel}>
            Cancel
          </Button>
        </div>
      </div>
    </form>
  );
};
