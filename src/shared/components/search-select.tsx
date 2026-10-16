"use client";

import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
} from "@/shared/components/ui/combobox";

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
  id,
  onValueChange,
  options,
  placeholder = "Not recorded",
  value,
}: {
  ariaLabel?: string;
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
      />
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
