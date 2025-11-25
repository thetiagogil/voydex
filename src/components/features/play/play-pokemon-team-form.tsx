"use client";

import {
  pokemonTeamSchema,
  type PokemonTeamFormValues,
} from "@/components/forms/schemas/pokemon-team-schemas";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { FieldGroup, FieldLegend, FieldSet } from "@/components/ui/field";
import { Label } from "@/components/ui/label";
import { useAbilities } from "@/hooks/useAbilities";
import { useMoves } from "@/hooks/useMoves";
import { useNatures } from "@/hooks/useNatures";
import { useAddPokemonToTeam, useUpdatePokemonInTeam } from "@/hooks/usePlay";
import { usePokemonForms, usePokemonSpecies } from "@/hooks/usePokemon";
import { toastPromise } from "@/lib/utils/toast-promise";
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect, useMemo } from "react";
import { useForm } from "react-hook-form";
import {
  AttributeFields,
  BasicInfoFields,
  MoveFields,
  FormField as PokemonFormField,
  SpeciesField,
} from "./team-form-fields";

interface PlayPokemonTeamFormProps {
  openDialog: boolean;
  setOpenDialog: (open: boolean) => void;
  playId: string;
  generationId: number;
  pokemon: PlayPokemonTeam | null;
  position: number | null;
  onClose: () => void;
}

export const PlayPokemonTeamForm = ({
  openDialog,
  setOpenDialog,
  playId,
  generationId,
  pokemon,
  position,
  onClose,
}: PlayPokemonTeamFormProps) => {
  const addPokemon = useAddPokemonToTeam();
  const updatePokemon = useUpdatePokemonInTeam();
  const isEditing = !!pokemon;

  const { data: speciesList = [] } = usePokemonSpecies(generationId);
  const { data: natures = [] } = useNatures();
  const { data: abilities = [] } = useAbilities();
  const { data: moves = [] } = useMoves();

  const {
    register,
    handleSubmit,
    watch,
    reset,
    setValue,
    formState: { errors },
  } = useForm<PokemonTeamFormValues>({
    resolver: zodResolver(pokemonTeamSchema),
    defaultValues: {
      species_id: undefined,
      form_id: undefined,
      nickname: "",
      level: 5,
      position: position || 1,
      gender: "unknown",
      is_shiny: false,
      nature_id: undefined,
      ability_id: undefined,
      move1_id: undefined,
      move2_id: undefined,
      move3_id: undefined,
      move4_id: undefined,
    },
  });

  const selectedSpeciesId = watch("species_id");
  const { data: forms = [] } = usePokemonForms(selectedSpeciesId);

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
              level: data.level,
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
              level: data.level,
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
    if (pokemon) {
      reset({
        species_id: pokemon.species.id,
        form_id: pokemon.form?.id,
        nickname: pokemon.nickname || "",
        level: pokemon.level || 5,
        position: pokemon.position || position || 1,
        gender:
          (pokemon.gender as "male" | "female" | "genderless" | "unknown") ||
          "unknown",
        is_shiny: pokemon.is_shiny || false,
        nature_id: pokemon.nature?.id,
        ability_id: pokemon.ability?.id,
        move1_id: pokemon.moves[0]?.id,
        move2_id: pokemon.moves[1]?.id,
        move3_id: pokemon.moves[2]?.id,
        move4_id: pokemon.moves[3]?.id,
      });
    } else {
      reset({
        species_id: undefined,
        form_id: undefined,
        nickname: "",
        level: 5,
        position: position || 1,
        gender: "unknown",
        is_shiny: false,
        nature_id: undefined,
        ability_id: undefined,
        move1_id: undefined,
        move2_id: undefined,
        move3_id: undefined,
        move4_id: undefined,
      });
    }
  }, [pokemon, position, reset]);

  // Auto-select first form when species changes
  useEffect(() => {
    if (forms.length > 0 && !selectedFormId) {
      setValue("form_id", forms[0].id);
    }
  }, [forms, selectedFormId, setValue]);

  // Reset form when species changes (except form_id which auto-selects)
  useEffect(() => {
    if (selectedSpeciesId) {
      setValue("nickname", "");
      setValue("level", 5);
      setValue("gender", "unknown");
      setValue("is_shiny", false);
      setValue("nature_id", undefined);
      setValue("ability_id", undefined);
      setValue("move1_id", undefined);
      setValue("move2_id", undefined);
      setValue("move3_id", undefined);
      setValue("move4_id", undefined);
    }
  }, [selectedSpeciesId, setValue]);

  return (
    <Dialog open={openDialog} onOpenChange={setOpenDialog}>
      <DialogContent className="max-w-3xl gap-0 p-0">
        <DialogHeader className="border-border border-b p-6">
          <DialogTitle>
            {isEditing ? "Edit Pokémon" : "Add Pokémon"}
          </DialogTitle>
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

                  <PokemonFormField
                    forms={forms}
                    value={selectedFormId}
                    onChange={(value) => setValue("form_id", value as any)}
                    disabled={!selectedSpeciesId || forms.length === 0}
                    error={errors.form_id?.message}
                  />
                </FieldGroup>

                <div className="flex flex-col items-center justify-end gap-2">
                  <div className="h-28 w-28 shrink-0">
                    <div className="flex h-full items-center justify-center rounded-lg p-2">
                      {selectedForm?.sprite_url ? (
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
                <BasicInfoFields
                  register={register}
                  speciesName={selectedSpecies?.name}
                  pokemonName={pokemon?.species.name}
                  genderValue={watch("gender")}
                  onGenderChange={(value) => setValue("gender", value as any)}
                  errors={{
                    nickname: errors.nickname,
                    level: errors.level,
                    position: errors.position,
                    gender: errors.gender,
                  }}
                />
              </FieldGroup>
            </FieldSet>

            <FieldSet>
              <FieldLegend>Battle Attributes</FieldLegend>
              <FieldGroup>
                <AttributeFields
                  natures={natures}
                  abilities={abilities}
                  natureValue={watch("nature_id")}
                  abilityValue={watch("ability_id")}
                  onNatureChange={(value) =>
                    setValue("nature_id", value as any)
                  }
                  onAbilityChange={(value) =>
                    setValue("ability_id", value as any)
                  }
                  errors={{
                    nature_id: errors.nature_id,
                    ability_id: errors.ability_id,
                  }}
                />
              </FieldGroup>

              <FieldGroup>
                <MoveFields
                  moves={moves}
                  move1Value={watch("move1_id")}
                  move2Value={watch("move2_id")}
                  move3Value={watch("move3_id")}
                  move4Value={watch("move4_id")}
                  onMove1Change={(value) => setValue("move1_id", value as any)}
                  onMove2Change={(value) => setValue("move2_id", value as any)}
                  onMove3Change={(value) => setValue("move3_id", value as any)}
                  onMove4Change={(value) => setValue("move4_id", value as any)}
                  errors={{
                    move1_id: errors.move1_id,
                    move2_id: errors.move2_id,
                    move3_id: errors.move3_id,
                    move4_id: errors.move4_id,
                  }}
                />
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
