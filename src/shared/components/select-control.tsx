"use client";

import type { ComponentProps, ReactNode } from "react";

import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";

const EMPTY_SELECT_VALUE = "";

export type SelectControlOption = {
  description?: string;
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
  size?: "default" | "sm";
  value?: string;
  variant?: ComponentProps<typeof SelectTrigger>["variant"];
};

const normalizeSelectValue = (nextValue?: string) => {
  return nextValue ?? EMPTY_SELECT_VALUE;
};

const SelectControlOptionContent = ({
  option,
  showDescription = false,
}: {
  option: SelectControlOption;
  showDescription?: boolean;
}) => {
  return (
    <span className="flex min-w-0 items-center gap-2 text-left">
      {option.icon ? (
        <span aria-hidden className="shrink-0">
          {option.icon}
        </span>
      ) : null}
      <span className="min-w-0">
        <span className="block truncate">{option.label}</span>
        {showDescription && option.description ? (
          <span className="text-ink-2 text-12 mt-0.5 block truncate font-semibold">
            {option.description}
          </span>
        ) : null}
      </span>
    </span>
  );
};

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
  size,
  value,
  variant,
}: SelectControlProps) => {
  const isControlled = value !== undefined;
  const normalizedDefaultValue = normalizeSelectValue(defaultValue);
  const selectValueProps = isControlled
    ? { value: normalizeSelectValue(value) }
    : { defaultValue: normalizedDefaultValue };
  const getOptionByValue = (nextValue: unknown) => {
    return typeof nextValue === "string"
      ? options.find((option) => option.value === nextValue)
      : undefined;
  };

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
        aria-label={ariaLabel}
        className={className}
        size={size}
        variant={variant}
      >
        {prefix ? (
          <span className="text-ink-3 font-semibold">{prefix}</span>
        ) : null}
        <SelectValue placeholder={placeholder}>
          {(selectedValue) => {
            const selectedOption = getOptionByValue(selectedValue);

            return selectedOption ? (
              <SelectControlOptionContent option={selectedOption} />
            ) : (
              placeholder
            );
          }}
        </SelectValue>
      </SelectTrigger>
      <SelectContent>
        <SelectGroup>
          {options.map((option) => (
            <SelectItem key={option.value} value={option.value}>
              <SelectControlOptionContent option={option} showDescription />
            </SelectItem>
          ))}
        </SelectGroup>
      </SelectContent>
    </Select>
  );
};
