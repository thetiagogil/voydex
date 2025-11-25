"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";

interface PokemonForm extends BaseInfo {
  species_id: number;
  is_default: boolean;
  sprite_url: string | null;
}

interface FormFieldProps {
  forms: PokemonForm[];
  value?: number;
  onChange: (value: number | undefined) => void;
  disabled?: boolean;
  error?: string;
}

export function FormField({
  forms,
  value,
  onChange,
  disabled,
  error,
}: FormFieldProps) {
  const options = forms.map((f) => ({
    value: f.id.toString(),
    label: f.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor="form_id">Form</FieldLabel>
      <Combobox
        id="form_id"
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select a form..."
        searchPlaceholder="Search forms..."
        disabled={disabled}
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
