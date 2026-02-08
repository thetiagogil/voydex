"use client";

import type { PokemonTeamFormValues } from "@/components/forms/schemas/pokemon-team-schemas";
import { FieldWrapper } from "@/components/shared/field-wrapper";
import { Input } from "@/components/ui/input";
import type { FieldError, UseFormRegister } from "react-hook-form";

interface NicknameFieldProps {
  register: UseFormRegister<PokemonTeamFormValues>;
  placeholder?: string;
  error?: FieldError;
}

export function NicknameField({
  register,
  placeholder = "Enter nickname",
  error,
}: NicknameFieldProps) {
  return (
    <FieldWrapper id="nickname" label="Nickname" error={error?.message}>
      <Input
        id="nickname"
        placeholder={placeholder}
        {...register("nickname")}
      />
    </FieldWrapper>
  );
}
