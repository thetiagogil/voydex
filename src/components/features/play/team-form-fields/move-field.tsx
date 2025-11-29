"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { FieldError } from "react-hook-form";

interface MoveFieldProps {
  moves: BaseInfo[];
  value?: number;
  onChange: (value: number | undefined) => void;
  label: string;
  id: string;
  error?: FieldError;
}

export function MoveField({
  moves,
  value,
  onChange,
  label,
  id,
  error,
}: MoveFieldProps) {
  const options = moves.map((m) => ({
    value: m.id.toString(),
    label: m.name,
  }));

  return (
    <Field>
      <FieldLabel htmlFor={id}>{label}</FieldLabel>
      <Combobox
        id={id}
        options={options}
        value={value?.toString() || ""}
        onValueChange={(val) => onChange(val ? Number(val) : undefined)}
        placeholder="Select move..."
        searchPlaceholder="Search moves..."
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
