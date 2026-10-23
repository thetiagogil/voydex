"use client";

import { useState, type ComponentProps, type ReactNode } from "react";

import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { HoverInfo } from "@/shared/components/hover-info";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import {
  Combobox,
  ComboboxCollection,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxGroup,
  ComboboxInput,
  ComboboxItem,
  ComboboxLabel,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
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
  /* Shown but not pickable, such as a move the rules refuse. */
  disabled?: boolean;
  /*
   * The heading it sits under in the list, such as an item's
   * category. Groups show in the order their first option appears; options
   * with none lead the list under no heading.
   */
  group?: string;
  /* A picture on the option's tile: an icon, a game or type mark. */
  icon?: ReactNode;
  /*
   * What the option is, behind an "i" beside its name in the list and beside
   * the picked value in the field (an ability's effect). Read aloud with the
   * option.
   */
  info?: string;
  label: string;
  /* A short mark at the end of the row and beside the picked value, such as a nature's stats. */
  trailing?: ReactNode;
  value: string;
};

type SelectControlProps = {
  ariaLabel: string;
  className?: string;
  defaultValue?: string;
  disabled?: boolean;
  id?: string;
  name?: string;
  onValueChange?: (value: string) => void;
  options: readonly SelectControlOption[];
  placeholder: string;
  /* A quiet word before the value, as in v3's "Sort Recently played". */
  prefix?: string;
  /*
   * The value Reset puts back. Any other value takes the selected tint, so
   * a list shows at a glance which controls moved off its default.
   */
  resetValue?: string;
  /*
   * A search field at the top of the list. On by default for lists longer
   * than ten options.
   */
  searchable?: boolean;
  /*
   * The search field's placeholder and name, such as "Search games";
   * otherwise "Search", named after `ariaLabel`.
   */
  searchPlaceholder?: string;
  size?: "default" | "sm";
  /*
   * The caller's own trigger in place of the prefix and value, such as the
   * Team Planner's game card; `className` then styles it. A list trigger
   * takes its name from `ariaLabel` alone, so the label should carry what
   * the card shows, such as "Game: Diamond / Pearl".
   */
  triggerContent?: ReactNode;
  value?: string;
  variant?: ComponentProps<typeof SelectTrigger>["variant"];
};

const normalizeSelectValue = (nextValue?: string) => {
  return nextValue ?? EMPTY_SELECT_VALUE;
};

type SelectControlGroup = { items: SelectControlOption[]; value: string };

/*
 * The options as the list's groups, in the order each group first appears.
 * Options with no `group` come first under an unnamed one; with no groups at
 * all there is nothing to draw.
 */
export const groupSelectOptions = (
  options: readonly SelectControlOption[],
): SelectControlGroup[] => {
  if (!options.some((option) => option.group)) {
    return [];
  }

  const groups = new Map<string, SelectControlOption[]>([["", []]]);

  for (const option of options) {
    const key = option.group ?? "";
    const group = groups.get(key) ?? [];

    group.push(option);
    groups.set(key, group);
  }

  return [...groups]
    .filter(([, items]) => items.length)
    .map(([value, items]) => ({ items, value }));
};

/*
 * Searching ignores case and accents, so "pokedex" finds "Pokédex", and it
 * reads the group too, so "berries" lists every berry.
 */
const toSearchText = (text: string) =>
  text
    .normalize("NFD")
    .replace(/\p{Diacritic}/gu, "")
    .toLowerCase();

export const matchesSelectQuery = (
  option: SelectControlOption,
  query: string,
) => {
  const needle = toSearchText(query.trim());

  return (
    !needle ||
    toSearchText(
      `${option.label} ${option.description ?? ""} ${option.group ?? ""}`,
    ).includes(needle)
  );
};

/*
 * The picked option as the trigger shows it: its label, after its picture in
 * a field. A toolbar's quiet select, and a pill on a picture (which would
 * only repeat the picture), show the words alone.
 */
const SelectedOption = ({
  option,
  showIcon,
}: {
  option: SelectControlOption;
  showIcon: boolean;
}) => (
  <span className="flex w-full min-w-0 items-center gap-2">
    {showIcon && option.icon ? (
      <span aria-hidden className="flex shrink-0">
        {option.icon}
      </span>
    ) : null}
    <span className="truncate">{option.label}</span>
    {option.trailing ? (
      <span className="ml-auto flex shrink-0 items-center pl-2">
        {option.trailing}
      </span>
    ) : null}
  </span>
);

const OptionContent = ({ option }: { option: SelectControlOption }) => (
  <MenuOptionContent
    description={option.description}
    leading={option.icon}
    title={
      <>
        {option.label}
        {option.info ? <span className="sr-only">, {option.info}</span> : null}
      </>
    }
    trailing={
      option.trailing || option.info ? (
        <span className="flex items-center gap-2.5">
          {option.trailing}
          {option.info ? (
            <ExplanatoryTip
              inert
              content={option.info}
              triggerVariant="subtle"
            />
          ) : null}
        </span>
      ) : undefined
    }
  />
);

/*
 * Every select in Voydex: a field (`default`) or a toolbar's quiet select
 * (`ghost`), with an optional word before the value. Its list is the one
 * picker look every popup shares: each option a 48px row with an optional
 * picture and description, the pick in the selected tint. Long
 * lists open with a search field at the top that matches the label and the
 * description.
 */
const SelectControlField = ({
  ariaLabel,
  className,
  defaultValue,
  disabled = false,
  id,
  name,
  onValueChange,
  options,
  placeholder,
  prefix,
  resetValue,
  searchable = options.length > SEARCH_FROM_OPTION_COUNT,
  searchPlaceholder,
  size = "default",
  triggerContent,
  value,
  variant,
  triggerDescription,
}: SelectControlProps & {
  /* Read with the field and shown on hover, such as the picked ability's effect. */
  triggerDescription?: string;
}) => {
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
  const isChanged = resetValue !== undefined && currentValue !== resetValue;
  const prefixWord = prefix ? (
    <span
      className={cn(
        "font-semibold",
        isChanged ? "text-select-ink" : "text-ink-3",
      )}
    >
      {prefix}
    </span>
  ) : null;

  if (searchable) {
    const selectedOption = getOptionByValue(currentValue) ?? null;
    const groups = groupSelectOptions(options);

    return (
      <Combobox
        disabled={disabled}
        items={groups.length ? groups : (options as SelectControlOption[])}
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
          matchesSelectQuery(option, query)
        }
        autoHighlight
      >
        <ComboboxTrigger
          id={id}
          aria-label={ariaLabel}
          aria-description={triggerDescription}
          data-changed={isChanged || undefined}
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
                    showIcon={variant !== "ghost" && variant !== "paper"}
                  />
                ) : (
                  placeholder
                )}
              </span>
            </>
          )}
        </ComboboxTrigger>
        {name ? <input type="hidden" name={name} value={currentValue} /> : null}
        <ComboboxContent
          aria-label={ariaLabel}
          className="w-max max-w-[min(24rem,calc(100vw-2rem))]"
        >
          <ComboboxInput
            aria-label={
              searchPlaceholder ?? `Search ${ariaLabel.toLowerCase()}`
            }
            placeholder={searchPlaceholder ?? "Search"}
            showTrigger={false}
          />
          <ComboboxEmpty>Nothing matches.</ComboboxEmpty>
          <ComboboxList>
            {groups.length
              ? (group: SelectControlGroup) => (
                  <ComboboxGroup key={group.value} items={group.items}>
                    {group.value ? (
                      <ComboboxLabel>{group.value}</ComboboxLabel>
                    ) : null}
                    <ComboboxCollection>
                      {(option: SelectControlOption) => (
                        <ComboboxItem
                          key={option.value}
                          value={option}
                          disabled={option.disabled}
                        >
                          <OptionContent option={option} />
                        </ComboboxItem>
                      )}
                    </ComboboxCollection>
                  </ComboboxGroup>
                )
              : (option: SelectControlOption) => (
                  <ComboboxItem
                    key={option.value}
                    value={option}
                    disabled={option.disabled}
                  >
                    <OptionContent option={option} />
                  </ComboboxItem>
                )}
          </ComboboxList>
        </ComboboxContent>
      </Combobox>
    );
  }

  const plainGroups = groupSelectOptions(options);
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
      disabled={disabled}
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
        aria-label={ariaLabel}
        aria-description={triggerDescription}
        className={className}
        data-changed={isChanged || undefined}
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
                    showIcon={variant !== "ghost" && variant !== "paper"}
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
        {(plainGroups.length
          ? plainGroups
          : [{ items: options, value: "" }]
        ).map((group) => (
          <SelectGroup key={group.value}>
            {group.value ? <SelectLabel>{group.value}</SelectLabel> : null}
            {group.items.map((option) => (
              <SelectItem
                key={option.value}
                value={option.value}
                disabled={option.disabled}
              >
                <OptionContent option={option} />
              </SelectItem>
            ))}
          </SelectGroup>
        ))}
      </SelectContent>
    </Select>
  );
};

/*
 * With options that carry `info`, the field shows the picked one's on hover
 * and reads it with the field; the list marks each row with a faint "i".
 */
export const SelectControl = (props: SelectControlProps) => {
  if (!props.options.some((option) => option.info)) {
    return <SelectControlField {...props} />;
  }

  const picked = props.options.find((option) => option.value === props.value);

  return (
    <HoverInfo info={picked?.info}>
      <SelectControlField
        {...props}
        className={cn("w-full", props.className)}
        triggerDescription={picked?.info}
      />
    </HoverInfo>
  );
};
