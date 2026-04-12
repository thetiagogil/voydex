"use client";

import { Combobox } from "@/shared/components/ui/combobox";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { FieldError } from "react-hook-form";

interface AbilityOption {
  id: number;
  slug: string;
  name: string;
  slot?: string;
}

interface AbilityFieldProps {
  abilities: AbilityOption[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: FieldError;
  required?: boolean;
}

const SLOT_LABELS: Record<string, string> = {
  primary: "",
  secondary: "",
  hidden: " (Hidden)",
};

export function AbilityField({
  abilities,
  value,
  onChange,
  error,
  required = false,
}: AbilityFieldProps) {
  const options = abilities.map((a) => ({
    value: a.id.toString(),
    label: `${a.name}${a.slot ? SLOT_LABELS[a.slot] || "" : ""}`,
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
        placeholder={
          abilities.length === 0
            ? "Select a Pokémon first..."
            : "Select ability..."
        }
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
