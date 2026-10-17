"use client";

import { SearchIcon } from "lucide-react";
import { useState, type ComponentProps, type ReactNode } from "react";

import { MenuOptionContent } from "@/shared/components/menu-option-content";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";
import { InputGroupAddon } from "@/shared/components/ui/input-group";
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectTrigger,
  selectTriggerVariants,
  SelectValue,
} from "@/shared/components/ui/select";
import { cn } from "@/shared/utils/cn";

const EMPTY_SELECT_VALUE = "";

/* Lists longer than this open with a search field at the top. */
const SEARCH_FROM_OPTION_COUNT = 10;

export type SelectControlOption = {
  /* A second, quieter line in the list, such as a generation's region. */
  description?: string;
  /* A picture on the option's tile: an icon, a game or type mark. */
  icon?: ReactNode;
  label: string;
  value: string;
};

type SelectControlProps = {
  ariaLabel: string;
  className?: string;
  defaultValue?: string;
  id?: string;
  name?: string;
  onValueChange?: (value: string) => void;
  options: readonly SelectControlOption[];
  placeholder: string;
  /* A quiet word before the value, as in v3's "Sort Recently played". */
  prefix?: string;
  /*
   * A search field at the top of the list. On by default for lists longer
   * than ten options.
   */
  searchable?: boolean;
  /* The search field's placeholder, such as "Search games". */
  searchPlaceholder?: string;
  size?: "default" | "sm";
  /*
   * The caller's own trigger in place of the prefix and value, such as the
   * Team Planner's game card; `className` then styles it. Its words name the
   * control, so `ariaLabel` only labels the search field.
   */
  triggerContent?: ReactNode;
  value?: string;
  variant?: ComponentProps<typeof SelectTrigger>["variant"];
};

const normalizeSelectValue = (nextValue?: string) => {
  return nextValue ?? EMPTY_SELECT_VALUE;
};

/* Searching ignores case and accents, so "pokedex" finds "Pokédex". */
const toSearchText = (text: string) =>
  text
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .toLowerCase();

const matchesQuery = (option: SelectControlOption, query: string) => {
  const needle = toSearchText(query.trim());

  return (
    !needle ||
    toSearchText(`${option.label} ${option.description ?? ""}`).includes(needle)
  );
};

/*
 * The picked option as the trigger shows it: its label, after its picture in
 * a field. A toolbar's quiet select shows the words alone.
 */
const SelectedOption = ({
  option,
  showIcon,
}: {
  option: SelectControlOption;
  showIcon: boolean;
}) => (
  <span className="flex min-w-0 items-center gap-2">
    {showIcon && option.icon ? (
      <span aria-hidden className="flex shrink-0">
        {option.icon}
      </span>
    ) : null}
    <span className="truncate">{option.label}</span>
  </span>
);

const OptionContent = ({ option }: { option: SelectControlOption }) => (
  <MenuOptionContent
    description={option.description}
    leading={option.icon}
    title={option.label}
  />
);

/*
 * Every select in Voydex: a field (`default`) or a toolbar's quiet select
 * (`ghost`), with an optional word before the value. Its list is the one
 * picker look every popup shares: each option a 48px row with an optional
 * picture and description, the pick in the selected tint with a check. Long
 * lists open with a search field at the top that matches the label and the
 * description.
 */
export const SelectControl = ({
  ariaLabel,
  className,
  defaultValue,
  id,
  name,
  onValueChange,
  options,
  placeholder,
  prefix,
  searchable = options.length > SEARCH_FROM_OPTION_COUNT,
  searchPlaceholder = "Search",
  size = "default",
  triggerContent,
  value,
  variant,
}: SelectControlProps) => {
  const isControlled = value !== undefined;
  const normalizedDefaultValue = normalizeSelectValue(defaultValue);
  const [uncontrolledValue, setUncontrolledValue] = useState(
    normalizedDefaultValue,
  );
  const currentValue = isControlled
    ? normalizeSelectValue(value)
    : uncontrolledValue;
  const getOptionByValue = (nextValue: unknown) => {
    return typeof nextValue === "string"
      ? options.find((option) => option.value === nextValue)
      : undefined;
  };
  const prefixWord = prefix ? (
    <span className="text-ink-3 font-semibold">{prefix}</span>
  ) : null;

  if (searchable) {
    const selectedOption = getOptionByValue(currentValue) ?? null;

    return (
      <Combobox
        items={options as SelectControlOption[]}
        value={selectedOption}
        onValueChange={(option: SelectControlOption | null) => {
          const nextValue = option?.value ?? EMPTY_SELECT_VALUE;

          if (!isControlled) {
            setUncontrolledValue(nextValue);
          }

          onValueChange?.(nextValue);
        }}
        itemToStringLabel={(option: SelectControlOption) => option.label}
        itemToStringValue={(option: SelectControlOption) => option.value}
        isItemEqualToValue={(
          left: SelectControlOption,
          right: SelectControlOption,
        ) => left.value === right.value}
        filter={(option: SelectControlOption, query: string) =>
          matchesQuery(option, query)
        }
        autoHighlight
      >
        <ComboboxTrigger
          id={id}
          aria-label={triggerContent ? undefined : ariaLabel}
          data-size={size}
          className={cn(selectTriggerVariants({ variant }), className)}
        >
          {triggerContent ?? (
            <>
              {prefixWord}
              <span
                className={cn(
                  "line-clamp-1 flex flex-1 items-center gap-1.5 text-left",
                  !selectedOption && "text-ink-3",
                )}
              >
                {selectedOption ? (
                  <SelectedOption
                    option={selectedOption}
                    showIcon={variant !== "ghost"}
                  />
                ) : (
                  placeholder
                )}
              </span>
            </>
          )}
        </ComboboxTrigger>
        {name ? <input type="hidden" name={name} value={currentValue} /> : null}
        <ComboboxContent className="w-max max-w-[min(24rem,calc(100vw-2rem))]">
          <ComboboxInput
            aria-label={`${searchPlaceholder} ${ariaLabel.toLowerCase()}`}
            placeholder={searchPlaceholder}
            showTrigger={false}
          >
            <InputGroupAddon align="inline-start">
              <SearchIcon className="text-ink-3 size-4.5" />
            </InputGroupAddon>
          </ComboboxInput>
          <ComboboxEmpty>Nothing matches.</ComboboxEmpty>
          <ComboboxList>
            {(option: SelectControlOption) => (
              <ComboboxItem key={option.value} value={option}>
                <OptionContent option={option} />
              </ComboboxItem>
            )}
          </ComboboxList>
        </ComboboxContent>
      </Combobox>
    );
  }

  const selectValueProps = isControlled
    ? { value: currentValue }
    : { defaultValue: normalizedDefaultValue };

  return (
    <Select
      key={
        isControlled
          ? undefined
          : `${name ?? ariaLabel}:${normalizedDefaultValue}`
      }
      name={name}
      {...selectValueProps}
      onValueChange={(nextValue) => {
        const normalizedValue =
          typeof nextValue === "string" ? nextValue : EMPTY_SELECT_VALUE;

        onValueChange?.(normalizedValue);
      }}
    >
      <SelectTrigger
        id={id}
        aria-label={triggerContent ? undefined : ariaLabel}
        className={className}
        size={size}
        variant={variant}
      >
        {triggerContent ?? (
          <>
            {prefixWord}
            <SelectValue placeholder={placeholder}>
              {(selectedValue) => {
                const selectedOption = getOptionByValue(selectedValue);

                return selectedOption ? (
                  <SelectedOption
                    option={selectedOption}
                    showIcon={variant !== "ghost"}
                  />
                ) : (
                  placeholder
                );
              }}
            </SelectValue>
          </>
        )}
      </SelectTrigger>
      <SelectContent>
        <SelectGroup>
          {options.map((option) => (
            <SelectItem key={option.value} value={option.value}>
              <OptionContent option={option} />
            </SelectItem>
          ))}
        </SelectGroup>
      </SelectContent>
    </Select>
  );
};
