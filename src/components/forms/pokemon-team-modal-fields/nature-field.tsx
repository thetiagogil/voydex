"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { FieldError } from "react-hook-form";

interface NatureFieldProps {
  natures: BaseInfo[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: FieldError;
  required?: boolean;
}

export function NatureField({
  natures,
  value,
  onChange,
  error,
  required = false,
}: NatureFieldProps) {
  const options = natures.map((n) => ({
    value: n.id.toString(),
    label: n.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor="nature_id">
        Nature{required && <span className="text-destructive ml-1">*</span>}
      </FieldLabel>
      <Combobox
        id="nature_id"
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select nature..."
        searchPlaceholder="Search natures..."
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
