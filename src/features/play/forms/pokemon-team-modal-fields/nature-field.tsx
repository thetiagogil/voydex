"use client";
import type { NatureWithStats } from "@/features/play/hooks/usePokemonGame";
import { Combobox } from "@/shared/components/ui/combobox";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import type { FieldError } from "react-hook-form";
const STAT_ABBREVIATIONS: Record<string, string> = {
  hp: "HP",
  attack: "Atk",
  defense: "Def",
  special_attack: "SpA",
  special_defense: "SpD",
  speed: "Spe",
};
type NatureFieldProps = {
  natures: NatureWithStats[];
  value?: number;
  onChange: (value: number | undefined) => void;
  error?: FieldError;
  required?: boolean;
};
export const NatureField = ({
  natures,
  value,
  onChange,
  error,
  required = false,
}: NatureFieldProps) => {
  const options = natures.map((n) => {
    const inc = n.increasedStat
      ? STAT_ABBREVIATIONS[n.increasedStat] || n.increasedStat
      : null;
    const dec = n.decreasedStat
      ? STAT_ABBREVIATIONS[n.decreasedStat] || n.decreasedStat
      : null;
    const statText = inc && dec ? ` (+${inc} / -${dec})` : " (Neutral)";
    return {
      value: n.id.toString(),
      label: `${n.name}${statText}`,
    };
  });
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
};
