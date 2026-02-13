"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { BaseInfo } from "@/types/common";
import type { FieldError } from "react-hook-form";

interface AbilityFieldProps {
  abilities: BaseInfo[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: FieldError;
  required?: boolean;
}

export function AbilityField({
  abilities,
  value,
  onChange,
  error,
  required = false,
}: AbilityFieldProps) {
  const options = abilities.map((a) => ({
    value: a.id.toString(),
    label: a.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor="ability_id">
        Ability{required && <span className="text-destructive ml-1">*</span>}
      </FieldLabel>
      <Combobox
        id="ability_id"
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select ability..."
        searchPlaceholder="Search abilities..."
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
