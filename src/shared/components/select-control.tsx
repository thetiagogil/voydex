"use client";

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
  size?: "default" | "sm";
  value?: string;
};

const normalizeSelectValue = (nextValue?: string) => {
  return nextValue ?? EMPTY_SELECT_VALUE;
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
        <SelectValue placeholder={placeholder} />
      </SelectTrigger>
      <SelectContent>
        <SelectGroup>
          {options.map((option) => (
            <SelectItem key={option.value} value={option.value}>
              {option.label}
            </SelectItem>
          ))}
        </SelectGroup>
      </SelectContent>
    </Select>
  );
};
