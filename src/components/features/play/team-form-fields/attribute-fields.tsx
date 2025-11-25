"use client";

import { Combobox } from "@/components/ui/combobox";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import type { FieldError } from "react-hook-form";

interface AttributeFieldsProps {
  natures: BaseInfo[];
  abilities: BaseInfo[];
  natureValue?: number;
  abilityValue?: number;
  onNatureChange: (value: number | undefined) => void;
  onAbilityChange: (value: number | undefined) => void;
  errors: {
    nature_id?: FieldError;
    ability_id?: FieldError;
  };
}

export function AttributeFields({
  natures,
  abilities,
  natureValue,
  abilityValue,
  onNatureChange,
  onAbilityChange,
  errors,
}: AttributeFieldsProps) {
  const natureOptions = natures.map((n) => ({
    value: n.id.toString(),
    label: n.name,
  }));

  const abilityOptions = abilities.map((a) => ({
    value: a.id.toString(),
    label: a.name,
  }));

  return (
    <div className="grid grid-cols-2 gap-4">
      <Field>
        <FieldLabel htmlFor="nature_id">Nature</FieldLabel>
        <Combobox
          id="nature_id"
          options={natureOptions}
          value={natureValue?.toString() || ""}
          onValueChange={(val) => onNatureChange(val ? Number(val) : undefined)}
          placeholder="Select nature..."
          searchPlaceholder="Search natures..."
          aria-invalid={!!errors.nature_id}
        />
        {errors.nature_id && (
          <FieldDescription className="text-destructive">
            {errors.nature_id.message}
          </FieldDescription>
        )}
      </Field>

      <Field>
        <FieldLabel htmlFor="ability_id">Ability</FieldLabel>
        <Combobox
          id="ability_id"
          options={abilityOptions}
          value={abilityValue?.toString() || ""}
          onValueChange={(val) =>
            onAbilityChange(val ? Number(val) : undefined)
          }
          placeholder="Select ability..."
          searchPlaceholder="Search abilities..."
          aria-invalid={!!errors.ability_id}
        />
        {errors.ability_id && (
          <FieldDescription className="text-destructive">
            {errors.ability_id.message}
          </FieldDescription>
        )}
      </Field>
    </div>
  );
}
