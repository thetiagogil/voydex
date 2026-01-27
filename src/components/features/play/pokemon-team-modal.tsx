"use client";

import {
  pokemonTeamSchema,
  pokemonTeamSchemaGen1And2,
  type PokemonTeamFormValues,
} from "@/components/forms/schemas/pokemon-team-schemas";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { FieldGroup, FieldLegend, FieldSet } from "@/components/ui/field";
import { Label } from "@/components/ui/label";
import { Spinner } from "@/components/ui/spinner";
import {
  useAddPokemonToTeam,
  useUpdatePokemonInTeam,
} from "@/hooks/gameplay/usePlayPokemonTeam";
import { useAbilities } from "@/hooks/meta/useAbilities";
import { useMoves } from "@/hooks/meta/useMoves";
import { useNatures } from "@/hooks/meta/useNatures";
import { usePokemonForms, usePokemonSpecies } from "@/hooks/meta/usePokemon";
import { toastPromise } from "@/lib/utils/toast-promise";
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

interface PokemonTeamModalProps {
  openDialog: boolean;
  setOpenDialog: (open: boolean) => void;
  playId: string;
  generationId: number;
  pokemon: PlayPokemon | null;
  position: number | null;
  team?: PlayPokemon[];
  onClose: () => void;
}

export const PokemonTeamModal = ({
  openDialog,
  setOpenDialog,
  playId,
  generationId,
  pokemon,
  position,
  team = [],
  onClose,
}: PokemonTeamModalProps) => {
  const addPokemon = useAddPokemonToTeam();
  const updatePokemon = useUpdatePokemonInTeam();
  const isEditing = !!pokemon;

  const { data: speciesList = [] } = usePokemonSpecies(generationId);
  const { data: natures = [] } = useNatures();
  const { data: abilities = [] } = useAbilities();
  const { data: moves = [] } = useMoves();

  // Determine if nature and ability are available (Gen 3+)
  const hasNatureAndAbility = generationId >= 3;

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
      position: position || 1,
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

  const onSubmit = async (data: PokemonTeamFormValues) => {
    try {
      if (isEditing && pokemon) {
        await toastPromise(
          updatePokemon.mutateAsync({
            playId,
            pokemonId: pokemon.id,
            updates: {
              nickname: data.nickname || undefined,
              level: data.level || 5,
              position: data.position,
              gender: data.gender,
              is_shiny: data.is_shiny,
              nature_id: data.nature_id,
              ability_id: data.ability_id,
              move1_id: data.move1_id,
              move2_id: data.move2_id,
              move3_id: data.move3_id,
              move4_id: data.move4_id,
            },
          }),
          {
            loading: "Updating Pokémon...",
            success: "Pokémon updated successfully!",
            error: (err) => err?.message || "Failed to update Pokémon",
          },
        );
      } else {
        await toastPromise(
          addPokemon.mutateAsync({
            playId,
            pokemon: {
              species_id: data.species_id,
              form_id: data.form_id,
              nickname: data.nickname || undefined,
              level: data.level || 5,
              position: data.position,
              gender: data.gender,
              is_shiny: data.is_shiny,
              nature_id: data.nature_id,
              ability_id: data.ability_id,
              move1_id: data.move1_id,
              move2_id: data.move2_id,
              move3_id: data.move3_id,
              move4_id: data.move4_id,
            },
          }),
          {
            loading: "Adding Pokémon...",
            success: "Pokémon added successfully!",
            error: (err) => err?.message || "Failed to add Pokémon",
          },
        );
      }
      onClose();
    } catch (error) {
      console.error("Failed to save pokemon:", error);
    }
  };

  // Reset form when dialog opens
  useEffect(() => {
    if (openDialog) {
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
          position: position || 1,
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
    }
  }, [openDialog, pokemon, position, reset]);

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

  return (
    <Dialog open={openDialog} onOpenChange={setOpenDialog}>
      <DialogContent className="max-w-3xl gap-0 p-0">
        <DialogHeader className="border-border border-b p-6">
          <DialogTitle>
            {isEditing ? "Edit Pokémon" : "Add Pokémon"}
          </DialogTitle>
          <DialogDescription>
            {isEditing
              ? "Update the details of your Pokémon"
              : "Add a new Pokémon to your team"}
          </DialogDescription>
        </DialogHeader>

        <form
          onSubmit={handleSubmit(onSubmit)}
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
                      !selectedSpeciesId ||
                      forms.length === 0 ||
                      forms.length === 1
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
              <Button
                type="submit"
                className="flex-1"
                disabled={addPokemon.isPending || updatePokemon.isPending}
              >
                {isEditing ? "Save Changes" : "Add Pokémon"}
              </Button>
              <Button type="button" variant="outline-primary" onClick={onClose}>
                Cancel
              </Button>
            </div>
          </div>
        </form>
      </DialogContent>
    </Dialog>
  );
};
