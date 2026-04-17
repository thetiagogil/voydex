"use client";

import { Combobox } from "@/shared/components/ui/combobox";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { FieldError } from "react-hook-form";

type AbilityOption = {
  id: number;
  slug: string;
  name: string;
  slot?: string;
};

type AbilityFieldProps = {
  abilities: AbilityOption[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: FieldError;
  required?: boolean;
  disabled?: boolean;
};

const SLOT_LABELS: Record<string, string> = {
  primary: "",
  secondary: "",
  hidden: " (Hidden)",
};

export const AbilityField = ({
  abilities,
  value,
  onChange,
  error,
  required = false,
  disabled = false,
}: AbilityFieldProps) => {
  const options = abilities.map((ability) => ({
    value: ability.id.toString(),
    label: `${ability.name}${ability.slot ? SLOT_LABELS[ability.slot] || "" : ""}`,
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
        onValueChange={(nextValue) =>
          onChange(nextValue ? Number(nextValue) : undefined)
        }
        placeholder={
          disabled && abilities.length === 0
            ? "Select a Pokemon first..."
            : "Select ability..."
        }
        searchPlaceholder="Search abilities..."
        disabled={disabled}
        aria-invalid={!!error}
      />
      {error ? (
        <FieldDescription className="text-destructive">
          {error.message}
        </FieldDescription>
      ) : null}
    </Field>
  );
};
