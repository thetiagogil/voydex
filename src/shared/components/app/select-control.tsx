"use client";

import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";

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
  return (
    <Select
      defaultValue={defaultValue}
      name={name}
      value={value}
      onValueChange={(nextValue) => {
        onValueChange?.(typeof nextValue === "string" ? nextValue : "");
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
