"use client";

import type { PokemonTeamFormValues } from "@/components/forms/schemas/pokemon-team-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import { Input } from "@/components/ui/input";
import type { FieldError, UseFormRegister } from "react-hook-form";

interface BasicInfoFieldsProps {
  register: UseFormRegister<PokemonTeamFormValues>;
  speciesName?: string;
  pokemonName?: string;
  genderValue?: string;
  onGenderChange: (value: string) => void;
  errors: {
    nickname?: FieldError;
    level?: FieldError;
    position?: FieldError;
    gender?: FieldError;
  };
}

const genderOptions = [
  { value: "male", label: "Male" },
  { value: "female", label: "Female" },
  { value: "genderless", label: "Genderless" },
];

export function BasicInfoFields({
  register,
  speciesName,
  pokemonName,
  genderValue,
  onGenderChange,

  errors,
}: BasicInfoFieldsProps) {
  return (
    <>
      <FieldWrapper
        id="nickname"
        label="Nickname"
        optional
        error={errors.nickname?.message}
      >
        <Input
          id="nickname"
          placeholder={speciesName || pokemonName || "Enter nickname"}
          {...register("nickname")}
        />
      </FieldWrapper>

      <FieldWrapper
        id="level"
        label="Level"
        optional
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

      <div className="grid grid-cols-2 gap-4">
        <FieldWrapper
          id="position"
          label="Position"
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

        <Field>
          <FieldLabel htmlFor="gender">Gender</FieldLabel>
          <Combobox
            id="gender"
            options={genderOptions}
            value={genderValue || "unknown"}
            onValueChange={onGenderChange}
            aria-invalid={!!errors.gender}
          />
          {errors.gender && (
            <FieldDescription className="text-destructive">
              {errors.gender.message}
            </FieldDescription>
          )}
        </Field>
      </div>
    </>
  );
}
