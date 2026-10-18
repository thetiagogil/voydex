"use client";

import type { ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { cn } from "@/shared/utils/cn";

type SearchControlProps = Omit<
  ComponentProps<typeof InputGroupInput>,
  "aria-label" | "className" | "onChange" | "type"
> & {
  ariaLabel: string;
  className?: string;
  inputClassName?: string;
  onChange?: ComponentProps<typeof InputGroupInput>["onChange"];
  onValueChange?: (value: string) => void;
};

export const SearchControl = ({
  ariaLabel,
  className,
  inputClassName,
  onChange,
  onValueChange,
  ...inputProps
}: SearchControlProps) => {
  return (
    /* A pill, like every other control on a toolbar. */
    <InputGroup className={cn("rounded-full px-2.5", className)}>
      <InputGroupAddon>
        <AppIcon icon={appIcons.actions.search} aria-hidden />
      </InputGroupAddon>
      <InputGroupInput
        {...inputProps}
        type="search"
        aria-label={ariaLabel}
        className={cn(
          "[&::-webkit-search-cancel-button]:appearance-none",
          inputClassName,
        )}
        onChange={(event) => {
          onChange?.(event);
          onValueChange?.(event.currentTarget.value);
        }}
      />
    </InputGroup>
  );
};
