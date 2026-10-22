"use client";

import { SegmentedControl } from "@/shared/components/segmented-control";

const options = [
  { label: "No", pickedTone: "plain", value: "no" },
  { label: "Yes", pickedTone: "ok", value: "yes" },
] as const;

/*
 * A yes or no you set, as two segments as tall as a form field: No picks a
 * white sticker, Yes a green one, so the answer reads at a glance. For a
 * form's on or off choice (Shiny, Can Gigantamax); `Switch` stays for a
 * setting that applies the moment it flips.
 */
export const YesNoControl = ({
  ariaLabel,
  onValueChange,
  value,
}: {
  ariaLabel: string;
  onValueChange: (value: boolean) => void;
  value: boolean;
}) => (
  <SegmentedControl
    ariaLabel={ariaLabel}
    variant="segment"
    value={value ? "yes" : "no"}
    onValueChange={(next) => onValueChange(next === "yes")}
    options={options}
  />
);
