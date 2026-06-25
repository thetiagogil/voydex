"use client";

import type { ReactNode } from "react";

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
  icon?: ReactNode;
  label: string;
  value: string;
};

type SelectControlProps = {
  ariaLabel: string;
  className?: string;
  defaultValue?: string;
  name?: string;
  onValueChange?: (value: string) => void;
  options: readonly SelectControlOption[];
  placeholder: string;
  size?: "default" | "sm" | "lg";
  value?: string;
};

const normalizeSelectValue = (nextValue?: string) => {
  return nextValue ?? EMPTY_SELECT_VALUE;
};

const SelectControlOptionContent = ({
  option,
}: {
  option: SelectControlOption;
}) => {
  return (
    <span className="flex min-w-0 items-center gap-2">
      {option.icon ? (
        <span aria-hidden className="shrink-0">
          {option.icon}
        </span>
      ) : null}
      <span className="truncate">{option.label}</span>
    </span>
  );
};

export const SelectControl = ({
  ariaLabel,
  className,
  defaultValue,
  name,
  onValueChange,
  options,
  placeholder,
  size,
  value,
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
      <SelectTrigger aria-label={ariaLabel} className={className} size={size}>
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
              <SelectControlOptionContent option={option} />
            </SelectItem>
          ))}
        </SelectGroup>
      </SelectContent>
    </Select>
  );
};
