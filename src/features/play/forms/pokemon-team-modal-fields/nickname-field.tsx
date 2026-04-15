"use client";
import { FieldWrapper } from "@/shared/components/field-wrapper";
import { Input } from "@/shared/components/ui/input";
import type { FieldError, UseFormRegister } from "react-hook-form";
import type { PokemonTeamFormValues } from "../pokemon-team-schemas";
type NicknameFieldProps = {
  register: UseFormRegister<PokemonTeamFormValues>;
  placeholder?: string;
  error?: FieldError;
};
export const NicknameField = ({
  register,
  placeholder = "Enter nickname",
  error,
}: NicknameFieldProps) => {
  return (
    <FieldWrapper id="nickname" label="Nickname" error={error?.message}>
      <Input
        id="nickname"
        placeholder={placeholder}
        {...register("nickname")}
      />
    </FieldWrapper>
  );
};
