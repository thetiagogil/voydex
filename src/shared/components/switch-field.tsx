"use client";

import { useId, type ReactNode } from "react";

import { EditedMark } from "@/shared/components/edited-mark";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Switch } from "@/shared/components/ui/switch";

const yesNo = ["No", "Yes"] as const;

/*
 * A form's on or off choice (Shiny, Can Gigantamax): its name above, like any
 * field, and a large switch below it saying "No" or "Yes". Fields in a
 * two-column grid share a row and wrap, so more of them need no other layout.
 */
export const SwitchField = ({
  checked,
  className,
  edited = false,
  label,
  onCheckedChange,
}: {
  checked: boolean;
  className?: string;
  /* The field changed since it was loaded: a dot beside its name. */
  edited?: boolean;
  label: ReactNode;
  onCheckedChange: (checked: boolean) => void;
}) => {
  const labelId = useId();

  return (
    <Field className={className}>
      <FieldLabel id={labelId}>
        <EditedMark edited={edited}>{label}</EditedMark>
      </FieldLabel>
      <Switch
        size="lg"
        labels={yesNo}
        aria-labelledby={labelId}
        checked={checked}
        onCheckedChange={onCheckedChange}
      />
    </Field>
  );
};
