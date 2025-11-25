"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { FieldError } from "react-hook-form";

interface MoveFieldsProps {
  moves: BaseInfo[];
  move1Value?: number;
  move2Value?: number;
  move3Value?: number;
  move4Value?: number;
  onMove1Change: (value: number | undefined) => void;
  onMove2Change: (value: number | undefined) => void;
  onMove3Change: (value: number | undefined) => void;
  onMove4Change: (value: number | undefined) => void;
  errors: {
    move1_id?: FieldError;
    move2_id?: FieldError;
    move3_id?: FieldError;
    move4_id?: FieldError;
  };
}

export function MoveFields({
  moves,
  move1Value,
  move2Value,
  move3Value,
  move4Value,
  onMove1Change,
  onMove2Change,
  onMove3Change,
  onMove4Change,
  errors,
}: MoveFieldsProps) {
  const moveOptions = moves.map((m) => ({
    value: m.id.toString(),
    label: m.name,
  }));

  return (
    <div className="grid grid-cols-2 gap-4">
      <Field>
        <FieldLabel htmlFor="move1_id">Move 1</FieldLabel>
        <Combobox
          id="move1_id"
          options={moveOptions}
          value={move1Value?.toString() || ""}
          onValueChange={(val) => onMove1Change(val ? Number(val) : undefined)}
          placeholder="Select move..."
          searchPlaceholder="Search moves..."
          aria-invalid={!!errors.move1_id}
        />
        {errors.move1_id && (
          <FieldDescription className="text-destructive">
            {errors.move1_id.message}
          </FieldDescription>
        )}
      </Field>

      <Field>
        <FieldLabel htmlFor="move2_id">Move 2</FieldLabel>
        <Combobox
          id="move2_id"
          options={moveOptions}
          value={move2Value?.toString() || ""}
          onValueChange={(val) => onMove2Change(val ? Number(val) : undefined)}
          placeholder="Select move..."
          searchPlaceholder="Search moves..."
          aria-invalid={!!errors.move2_id}
        />
        {errors.move2_id && (
          <FieldDescription className="text-destructive">
            {errors.move2_id.message}
          </FieldDescription>
        )}
      </Field>

      <Field>
        <FieldLabel htmlFor="move3_id">Move 3</FieldLabel>
        <Combobox
          id="move3_id"
          options={moveOptions}
          value={move3Value?.toString() || ""}
          onValueChange={(val) => onMove3Change(val ? Number(val) : undefined)}
          placeholder="Select move..."
          searchPlaceholder="Search moves..."
          aria-invalid={!!errors.move3_id}
        />
        {errors.move3_id && (
          <FieldDescription className="text-destructive">
            {errors.move3_id.message}
          </FieldDescription>
        )}
      </Field>

      <Field>
        <FieldLabel htmlFor="move4_id">Move 4</FieldLabel>
        <Combobox
          id="move4_id"
          options={moveOptions}
          value={move4Value?.toString() || ""}
          onValueChange={(val) => onMove4Change(val ? Number(val) : undefined)}
          placeholder="Select move..."
          searchPlaceholder="Search moves..."
          aria-invalid={!!errors.move4_id}
        />
        {errors.move4_id && (
          <FieldDescription className="text-destructive">
            {errors.move4_id.message}
          </FieldDescription>
        )}
      </Field>
    </div>
  );
}
