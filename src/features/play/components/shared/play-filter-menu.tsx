"use client";

import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuCheckboxItem,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type PlayFilterOption = {
  value: string;
  label: string;
};

type PlayFilterMenuProps = {
  label: string;
  options: PlayFilterOption[];
  selectedValues: string[];
  onSelectedValuesChange: (values: string[]) => void;
};

const getTriggerLabel = (
  label: string,
  options: PlayFilterOption[],
  selectedValues: string[],
) => {
  if (selectedValues.length === 0) {
    return label;
  }

  if (selectedValues.length === 1) {
    const selectedOption = options.find(
      (option) => option.value === selectedValues[0],
    );

    return `${label}: ${selectedOption?.label ?? selectedValues[0]}`;
  }

  return `${label}: ${selectedValues.length} selected`;
};

export const PlayFilterMenu = ({
  label,
  options,
  selectedValues,
  onSelectedValuesChange,
}: PlayFilterMenuProps) => {
  const toggleValue = (value: string) => {
    if (selectedValues.includes(value)) {
      onSelectedValuesChange(selectedValues.filter((item) => item !== value));
      return;
    }

    onSelectedValuesChange([...selectedValues, value]);
  };

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="outline" size="sm">
          {getTriggerLabel(label, options, selectedValues)}
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="start" className="w-56">
        {options.map((option) => (
          <DropdownMenuCheckboxItem
            key={option.value}
            checked={selectedValues.includes(option.value)}
            onSelect={(event) => event.preventDefault()}
            onCheckedChange={() => toggleValue(option.value)}
          >
            {option.label}
          </DropdownMenuCheckboxItem>
        ))}

        {selectedValues.length > 0 ? (
          <>
            <DropdownMenuSeparator />
            <DropdownMenuItem onSelect={() => onSelectedValuesChange([])}>
              Clear filters
            </DropdownMenuItem>
          </>
        ) : null}
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
