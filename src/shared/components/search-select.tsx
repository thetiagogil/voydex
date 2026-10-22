"use client";

import type { ReactNode } from "react";

import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
} from "@/shared/components/ui/combobox";
import { InputGroupAddon } from "@/shared/components/ui/input-group";

export type SearchSelectOption = {
  /* A second, quieter line, such as a move's type. */
  detail?: string | null;
  label: string;
  value: string;
};

/*
 * A searchable pick from a long list (held items, moves), on the shared
 * Combobox: type to filter, clear to leave it empty. Used by a Play's roster
 * editor and the Team Planner's slot sheet.
 */
export const SearchSelect = ({
  ariaLabel,
  icon,
  id,
  onValueChange,
  options,
  placeholder = "Not recorded",
  value,
}: {
  ariaLabel?: string;
  /* A picture at the start of the field, such as an item's sprite. */
  icon?: ReactNode;
  id?: string;
  onValueChange: (value: string | null) => void;
  options: SearchSelectOption[];
  placeholder?: string;
  value: string | null;
}) => {
  const selected = options.find((option) => option.value === value) ?? null;

  return (
    <Combobox
      items={options}
      value={selected}
      onValueChange={(option: SearchSelectOption | null) =>
        onValueChange(option?.value ?? null)
      }
      itemToStringLabel={(option: SearchSelectOption) => option.label}
      itemToStringValue={(option: SearchSelectOption) => option.value}
      isItemEqualToValue={(
        left: SearchSelectOption,
        right: SearchSelectOption,
      ) => left.value === right.value}
      autoHighlight
    >
      <ComboboxInput
        id={id}
        aria-label={ariaLabel}
        placeholder={placeholder}
        showClear={Boolean(selected)}
        className="w-full"
      >
        {icon ? (
          <InputGroupAddon align="inline-start" aria-hidden>
            {icon}
          </InputGroupAddon>
        ) : null}
      </ComboboxInput>
      <ComboboxContent>
        <ComboboxEmpty>Nothing matches.</ComboboxEmpty>
        <ComboboxList className="max-h-72">
          {(option: SearchSelectOption) => (
            <ComboboxItem key={option.value} value={option}>
              <span className="grid min-w-0">
                <span className="truncate">{option.label}</span>
                {option.detail ? (
                  <span className="text-ink-3 text-12 font-semibold">
                    {option.detail}
                  </span>
                ) : null}
              </span>
            </ComboboxItem>
          )}
        </ComboboxList>
      </ComboboxContent>
    </Combobox>
  );
};
