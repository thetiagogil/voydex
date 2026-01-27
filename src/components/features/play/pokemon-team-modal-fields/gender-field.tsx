"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { FieldError } from "react-hook-form";

interface GenderFieldProps {
  value?: string;
  onChange: (value: string) => void;
  error?: FieldError;
}

const genderOptions = [
  { value: "male", label: "Male" },
  { value: "female", label: "Female" },
  { value: "genderless", label: "Genderless" },
];

export function GenderField({ value, onChange, error }: GenderFieldProps) {
  return (
    <Field>
      <FieldLabel htmlFor="gender">Gender</FieldLabel>
      <Combobox
        id="gender"
        options={genderOptions}
        value={value || "unknown"}
        onValueChange={onChange}
        aria-invalid={!!error}
      />
      {error && (
        <FieldDescription className="text-destructive">
          {error.message}
        </FieldDescription>
      )}
    </Field>
  );
}
