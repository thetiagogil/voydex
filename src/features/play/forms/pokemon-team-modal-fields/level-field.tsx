"use client";
import { FieldWrapper } from "@/shared/components/field-wrapper";
import { Input } from "@/shared/components/ui/input";
import type { FieldError, UseFormRegister } from "react-hook-form";
import type { PokemonTeamFormValues } from "../pokemon-team-schemas";
type LevelFieldProps = {
  register: UseFormRegister<PokemonTeamFormValues>;
  error?: FieldError;
};
export const LevelField = ({ register, error }: LevelFieldProps) => {
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
};
