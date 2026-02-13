"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { BaseInfo } from "@/types/common";

interface PokemonForm extends BaseInfo {
  speciesId: number;
  isDefault: boolean;
  spriteUrl: string | null;
}

interface FormFieldProps {
  forms: PokemonForm[];
  value?: number;
  onChange: (value: number | undefined) => void;
  disabled?: boolean;
  loading?: boolean;
  error?: string;
}

export function FormField({
  forms,
  value,
  onChange,
  disabled,
  loading,
  error,
}: FormFieldProps) {
  const options = forms.map((f) => ({
    value: f.id.toString(),
    label: f.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor="form_id">
        <span>
          Form
          <span className="text-destructive"> *</span>
        </span>
      </FieldLabel>
      <Combobox
        id="form_id"
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select a form..."
        searchPlaceholder="Search forms..."
        disabled={disabled}
        loading={loading}
        aria-invalid={!!error}
      />
      {error && (
        <FieldDescription className="text-destructive">
          {error}
        </FieldDescription>
      )}
    </Field>
  );
}
