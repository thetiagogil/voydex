"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";

interface SpeciesOption {
  id: number;
  slug: string;
  name: string;
  nationalNumber?: number;
}

interface SpeciesFieldProps {
  species: SpeciesOption[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: string;
}

export function SpeciesField({
  species,
  value,
  onChange,
  error,
}: SpeciesFieldProps) {
  const options = species.map((s) => ({
    value: s.id.toString(),
    label: s.nationalNumber ? `#${s.nationalNumber} ${s.name}` : s.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor="species_id">
        <span>
          Species
          <span className="text-destructive"> *</span>
        </span>
      </FieldLabel>
      <Combobox
        id="species_id"
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select a species..."
        searchPlaceholder="Search species..."
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
