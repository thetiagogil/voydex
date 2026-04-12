"use client";

import { Combobox } from "@/shared/components/ui/combobox";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { FieldError } from "react-hook-form";

interface MoveOption {
  id: number;
  slug: string;
  name: string;
  learnMethod?: string;
  levelLearnedAt?: number | null;
}

interface MoveFieldProps {
  moves: MoveOption[];
  value?: number;
  onChange: (value: number | undefined) => void;
  label: string;
  id: string;
  error?: FieldError;
  disabled?: boolean;
}

export function MoveField({
  moves,
  value,
  onChange,
  label,
  id,
  error,
  disabled = false,
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
        placeholder={
          moves.length === 0 ? "Select a Pokémon first..." : "Select move..."
        }
        searchPlaceholder="Search moves..."
        disabled={disabled}
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
