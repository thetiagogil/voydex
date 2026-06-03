"use client";
import { cn } from "@/lib/utils/cn";
import { Button } from "@/shared/components/ui/button";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
} from "@/shared/components/ui/command";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { Check, ChevronsUpDown } from "lucide-react";
import * as React from "react";
import { Spinner } from "./spinner";
export type ComboboxOption = {
  value: string;
  label: string;
};
export type ComboboxProps = {
  options: ComboboxOption[];
  value?: string;
  onValueChange?: (value: string) => void;
  placeholder?: string;
  searchPlaceholder?: string;
  emptyText?: string;
  disabled?: boolean;
  loading?: boolean;
  className?: string;
  id?: string;
  "aria-invalid"?: boolean;
  portalContainer?: HTMLElement | null;
};

const LAYER_CONTAINER_SELECTOR =
  "[data-slot='dialog-content'], [data-slot='sheet-content'], [data-slot='drawer-content']";

export const Combobox = ({
  options,
  value,
  onValueChange,
  placeholder = "Select option...",
  searchPlaceholder = "Search...",
  emptyText = "No results found.",
  disabled = false,
  loading = false,
  className,
  id,
  "aria-invalid": ariaInvalid,
  portalContainer,
}: ComboboxProps) => {
  const [open, setOpen] = React.useState(false);
  const [resolvedPortalContainer, setResolvedPortalContainer] =
    React.useState<HTMLElement | null>(null);
  const selectedOption = options.find((option) => option.value === value);

  const resolvePortalContainer = (element: HTMLElement | null) => {
    if (portalContainer) {
      setResolvedPortalContainer(portalContainer);
      return;
    }

    setResolvedPortalContainer(
      element?.closest(LAYER_CONTAINER_SELECTOR) as HTMLElement | null,
    );
  };

  return (
    <Popover
      open={open}
      onOpenChange={(nextOpen) => {
        setOpen(nextOpen);

        if (!nextOpen) {
          setResolvedPortalContainer(null);
        }
      }}
    >
      <PopoverTrigger asChild>
        <Button
          id={id}
          variant="secondary"
          role="combobox"
          aria-expanded={open}
          aria-invalid={ariaInvalid}
          disabled={disabled}
          aria-busy={loading}
          className={cn("w-full justify-between", className)}
          onPointerDown={(event) => resolvePortalContainer(event.currentTarget)}
          onFocus={(event) => resolvePortalContainer(event.currentTarget)}
        >
          <span className="truncate">
            {loading ? (
              <Spinner />
            ) : selectedOption ? (
              selectedOption.label
            ) : (
              placeholder
            )}
          </span>
          <ChevronsUpDown className="ml-2 size-4 shrink-0 opacity-50" />
        </Button>
      </PopoverTrigger>

      <PopoverContent
        container={resolvedPortalContainer}
        className="w-[--radix-popover-trigger-width] p-0"
      >
        <Command>
          <CommandInput placeholder={searchPlaceholder} />
          <CommandList>
            <CommandEmpty>{emptyText}</CommandEmpty>
            <CommandGroup>
              {options.map((option) => (
                <CommandItem
                  key={option.value}
                  value={option.label}
                  onSelect={() => {
                    onValueChange?.(option.value);
                    setOpen(false);
                  }}
                  className="flex justify-between"
                >
                  {option.label}
                  <Check
                    className={cn(
                      "size-4",
                      value === option.value ? "opacity-100" : "opacity-0",
                    )}
                  />
                </CommandItem>
              ))}
            </CommandGroup>
          </CommandList>
        </Command>
      </PopoverContent>
    </Popover>
  );
};
