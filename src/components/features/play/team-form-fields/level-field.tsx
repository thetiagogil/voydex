"use client";

import type { PokemonTeamFormValues } from "@/components/forms/schemas/pokemon-team-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Input } from "@/components/ui/input";
import type { FieldError, UseFormRegister } from "react-hook-form";

interface LevelFieldProps {
  register: UseFormRegister<PokemonTeamFormValues>;
  error?: FieldError;
}

export function LevelField({ register, error }: LevelFieldProps) {
  return (
    <FieldWrapper id="level" label="Level" error={error?.message}>
      <Input
        id="level"
        type="number"
        min={1}
        max={100}
        {...register("level", { valueAsNumber: true })}
      />
    </FieldWrapper>
  );
}
