"use client";

import {
  pokemonTeamSchema,
  type PokemonTeamFormValues,
} from "@/components/forms/schemas/pokemon-team-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
  FieldLegend,
  FieldSet,
} from "@/components/ui/field";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { useAbilities } from "@/hooks/useAbilities";
import { useMoves } from "@/hooks/useMoves";
import { useNatures } from "@/hooks/useNatures";
import { useAddPokemonToTeam, useUpdatePokemonInTeam } from "@/hooks/usePlay";
import { usePokemonForms, usePokemonSpecies } from "@/hooks/usePokemon";
import { toastPromise } from "@/lib/utils/toast-promise";
import { zodResolver } from "@hookform/resolvers/zod";
import { useEffect, useMemo } from "react";
import { Controller, useForm } from "react-hook-form";

interface PlayPokemonTeamFormProps {
  open: boolean;
  openOnChange: (open: boolean) => void;
  playId: string;
  generationId: number;
  pokemon: PlayPokemonTeam | null;
  position: number | null;
  onClose: () => void;
}

export const PlayPokemonTeamForm = ({
  open,
  openOnChange,
  playId,
  generationId,
  pokemon,
  position,
  onClose,
}: PlayPokemonTeamFormProps) => {
  const addPokemon = useAddPokemonToTeam();
  const updatePokemon = useUpdatePokemonInTeam();
  const isEditing = !!pokemon;

  // Lazy load metadata only when dialog is open
  const { data: speciesList = [] } = usePokemonSpecies(generationId, open);
  const { data: natures = [] } = useNatures(open);
  const { data: abilities = [] } = useAbilities(open);
  const { data: moves = [] } = useMoves(open);

  const {
    register,
    handleSubmit,
    watch,
    control,
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

  // Reset form when dialog opens
  useEffect(() => {
    if (open) {
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
    }
  }, [open, pokemon, position, reset]);

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

  return (
    <Dialog open={open} onOpenChange={openOnChange}>
      <DialogContent className="max-w-3xl gap-0 p-0">
        <DialogHeader className="border-border border-b p-4">
          <DialogTitle>
            {isEditing ? "Edit Pokémon" : "Add Pokémon"}
          </DialogTitle>
        </DialogHeader>
        <form
          onSubmit={handleSubmit(onSubmit)}
          className="flex max-h-[85vh] flex-col"
        >
          {/* Top Section - Pokemon Selection (Static) */}
          <div className="border-border border-b p-4">
            <FieldSet>
              <FieldLegend variant="label">Pokémon Selection</FieldLegend>
              <div className="flex gap-4">
                {/* Selection Fields */}
                <div className="flex-1 space-y-4">
                  <Field>
                    <FieldLabel htmlFor="species_id">Species</FieldLabel>
                    <Controller
                      name="species_id"
                      control={control}
                      render={({ field }) => (
                        <Select
                          value={field.value?.toString() || ""}
                          onValueChange={(value) =>
                            field.onChange(value ? Number(value) : undefined)
                          }
                        >
                          <SelectTrigger
                            id="species_id"
                            className="w-full"
                            aria-invalid={!!errors.species_id}
                          >
                            <SelectValue placeholder="Select a Pokémon..." />
                          </SelectTrigger>
                          <SelectContent>
                            {speciesList.map((species) => (
                              <SelectItem
                                key={species.id}
                                value={species.id.toString()}
                              >
                                {species.name}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      )}
                    />
                    {errors.species_id && (
                      <FieldDescription className="text-destructive">
                        {errors.species_id.message}
                      </FieldDescription>
                    )}
                  </Field>

                  <Field>
                    <FieldLabel htmlFor="form_id">Form</FieldLabel>
                    <Controller
                      name="form_id"
                      control={control}
                      render={({ field }) => (
                        <Select
                          value={field.value?.toString() || ""}
                          onValueChange={(value) =>
                            field.onChange(value ? Number(value) : undefined)
                          }
                          disabled={!selectedSpeciesId || forms.length === 0}
                        >
                          <SelectTrigger
                            id="form_id"
                            className="w-full"
                            aria-invalid={!!errors.form_id}
                          >
                            <SelectValue placeholder="Select a form..." />
                          </SelectTrigger>
                          <SelectContent>
                            {forms.map((form) => (
                              <SelectItem
                                key={form.id}
                                value={form.id.toString()}
                              >
                                {form.name}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      )}
                    />
                    {errors.form_id && (
                      <FieldDescription className="text-destructive">
                        {errors.form_id.message}
                      </FieldDescription>
                    )}
                  </Field>
                </div>

                {/* Pokemon Sprite Preview */}
                <div className="w-32 shrink-0">
                  <div className="bg-muted/30 flex h-full items-center justify-center rounded-lg p-2">
                    {selectedForm?.sprite_url ? (
                      <div className="flex flex-col items-center gap-2">
                        <img
                          src={selectedForm.sprite_url}
                          alt={selectedSpecies?.name || "Pokemon"}
                          width={96}
                          height={96}
                          className="object-contain"
                        />
                        {selectedSpecies && (
                          <p className="line-clamp-2 text-center text-xs font-medium">
                            {selectedSpecies.name}
                          </p>
                        )}
                      </div>
                    ) : (
                      <div className="flex h-24 w-24 items-center justify-center">
                        <span className="text-muted-foreground text-xs">
                          No preview
                        </span>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </FieldSet>
          </div>

          {/* Scrollable Section */}
          <div className="border-border flex-1 overflow-y-auto border-b p-4">
            <FieldGroup>
              <FieldSet>
                <FieldLegend variant="label">Basic Information</FieldLegend>
                <FieldGroup>
                  <FieldWrapper
                    id="nickname"
                    label="Nickname"
                    hint="Optional custom name"
                    error={errors.nickname?.message}
                  >
                    <Input
                      id="nickname"
                      placeholder={
                        selectedSpecies?.name ||
                        pokemon?.species.name ||
                        "Enter nickname"
                      }
                      {...register("nickname")}
                    />
                  </FieldWrapper>

                  <div className="grid grid-cols-2 gap-4">
                    <FieldWrapper
                      id="level"
                      label="Level"
                      error={errors.level?.message}
                    >
                      <Input
                        id="level"
                        type="number"
                        min={1}
                        max={100}
                        {...register("level", { valueAsNumber: true })}
                      />
                    </FieldWrapper>

                    <FieldWrapper
                      id="position"
                      label="Position"
                      hint="1-6: Active Team, 7-12: Box"
                      error={errors.position?.message}
                    >
                      <Input
                        id="position"
                        type="number"
                        min={1}
                        max={12}
                        {...register("position", { valueAsNumber: true })}
                      />
                    </FieldWrapper>
                  </div>

                  <div className="grid grid-cols-2 gap-4">
                    <Field>
                      <FieldLabel htmlFor="gender">Gender</FieldLabel>
                      <Controller
                        name="gender"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value || "unknown"}
                            onValueChange={field.onChange}
                          >
                            <SelectTrigger id="gender" className="w-full">
                              <SelectValue />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="unknown">Unknown</SelectItem>
                              <SelectItem value="male">Male</SelectItem>
                              <SelectItem value="female">Female</SelectItem>
                              <SelectItem value="genderless">
                                Genderless
                              </SelectItem>
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.gender && (
                        <FieldDescription className="text-destructive">
                          {errors.gender.message}
                        </FieldDescription>
                      )}
                    </Field>

                    <div className="flex items-end pb-2">
                      <Label className="flex cursor-pointer items-center gap-2">
                        <Controller
                          name="is_shiny"
                          control={control}
                          render={({ field }) => (
                            <Checkbox
                              checked={field.value}
                              onCheckedChange={field.onChange}
                            />
                          )}
                        />
                        <span className="text-sm font-normal">Shiny</span>
                      </Label>
                    </div>
                  </div>
                </FieldGroup>

                <FieldLegend variant="label">Attributes</FieldLegend>
                <FieldGroup>
                  <div className="grid grid-cols-2 gap-4">
                    <Field>
                      <FieldLabel htmlFor="nature_id">Nature</FieldLabel>
                      <Controller
                        name="nature_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="nature_id"
                              className="w-full"
                              aria-invalid={!!errors.nature_id}
                            >
                              <SelectValue placeholder="Select nature..." />
                            </SelectTrigger>
                            <SelectContent>
                              {natures.map((nature) => (
                                <SelectItem
                                  key={nature.id}
                                  value={nature.id.toString()}
                                >
                                  {nature.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.nature_id && (
                        <FieldDescription className="text-destructive">
                          {errors.nature_id.message}
                        </FieldDescription>
                      )}
                    </Field>

                    <Field>
                      <FieldLabel htmlFor="ability_id">Ability</FieldLabel>
                      <Controller
                        name="ability_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="ability_id"
                              className="w-full"
                              aria-invalid={!!errors.ability_id}
                            >
                              <SelectValue placeholder="Select ability..." />
                            </SelectTrigger>
                            <SelectContent>
                              {abilities.map((ability) => (
                                <SelectItem
                                  key={ability.id}
                                  value={ability.id.toString()}
                                >
                                  {ability.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.ability_id && (
                        <FieldDescription className="text-destructive">
                          {errors.ability_id.message}
                        </FieldDescription>
                      )}
                    </Field>
                  </div>
                </FieldGroup>

                <FieldLegend variant="label">Moves</FieldLegend>
                <FieldGroup>
                  <div className="grid grid-cols-2 gap-4">
                    <Field>
                      <FieldLabel htmlFor="move1_id">Move 1</FieldLabel>
                      <Controller
                        name="move1_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="move1_id"
                              className="w-full"
                              aria-invalid={!!errors.move1_id}
                            >
                              <SelectValue placeholder="Select move..." />
                            </SelectTrigger>
                            <SelectContent>
                              {moves.map((move) => (
                                <SelectItem
                                  key={move.id}
                                  value={move.id.toString()}
                                >
                                  {move.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.move1_id && (
                        <FieldDescription className="text-destructive">
                          {errors.move1_id.message}
                        </FieldDescription>
                      )}
                    </Field>

                    <Field>
                      <FieldLabel htmlFor="move2_id">Move 2</FieldLabel>
                      <Controller
                        name="move2_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="move2_id"
                              className="w-full"
                              aria-invalid={!!errors.move2_id}
                            >
                              <SelectValue placeholder="Select move..." />
                            </SelectTrigger>
                            <SelectContent>
                              {moves.map((move) => (
                                <SelectItem
                                  key={move.id}
                                  value={move.id.toString()}
                                >
                                  {move.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.move2_id && (
                        <FieldDescription className="text-destructive">
                          {errors.move2_id.message}
                        </FieldDescription>
                      )}
                    </Field>

                    <Field>
                      <FieldLabel htmlFor="move3_id">Move 3</FieldLabel>
                      <Controller
                        name="move3_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="move3_id"
                              className="w-full"
                              aria-invalid={!!errors.move3_id}
                            >
                              <SelectValue placeholder="Select move..." />
                            </SelectTrigger>
                            <SelectContent>
                              {moves.map((move) => (
                                <SelectItem
                                  key={move.id}
                                  value={move.id.toString()}
                                >
                                  {move.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.move3_id && (
                        <FieldDescription className="text-destructive">
                          {errors.move3_id.message}
                        </FieldDescription>
                      )}
                    </Field>

                    <Field>
                      <FieldLabel htmlFor="move4_id">Move 4</FieldLabel>
                      <Controller
                        name="move4_id"
                        control={control}
                        render={({ field }) => (
                          <Select
                            value={field.value?.toString() || ""}
                            onValueChange={(value) =>
                              field.onChange(value ? Number(value) : undefined)
                            }
                          >
                            <SelectTrigger
                              id="move4_id"
                              className="w-full"
                              aria-invalid={!!errors.move4_id}
                            >
                              <SelectValue placeholder="Select move..." />
                            </SelectTrigger>
                            <SelectContent>
                              {moves.map((move) => (
                                <SelectItem
                                  key={move.id}
                                  value={move.id.toString()}
                                >
                                  {move.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      />
                      {errors.move4_id && (
                        <FieldDescription className="text-destructive">
                          {errors.move4_id.message}
                        </FieldDescription>
                      )}
                    </Field>
                  </div>
                </FieldGroup>
              </FieldSet>
            </FieldGroup>
          </div>

          {/* Bottom Actions (Static) */}
          <div className="p-4">
            <div className="flex gap-2">
              <Button
                type="submit"
                className="flex-1"
                disabled={addPokemon.isPending || updatePokemon.isPending}
              >
                {isEditing ? "Save Changes" : "Add Pokémon"}
              </Button>
              <Button type="button" variant="outline" onClick={onClose}>
                Cancel
              </Button>
            </div>
          </div>
        </form>
      </DialogContent>
    </Dialog>
  );
};
