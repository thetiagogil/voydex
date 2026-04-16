"use client";

import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuRadioGroup,
  DropdownMenuRadioItem,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";

type PlayChoiceOption = {
  value: string;
  label: string;
};

type PlayChoiceMenuProps = {
  label: string;
  value: string;
  options: PlayChoiceOption[];
  onValueChange: (value: string) => void;
};

export const PlayChoiceMenu = ({
  label,
  value,
  options,
  onValueChange,
}: PlayChoiceMenuProps) => {
  const selectedOption = options.find((option) => option.value === value);

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="outline" size="sm">
          {label}: {selectedOption?.label ?? value}
        </Button>
      </DropdownMenuTrigger>

      <DropdownMenuContent align="start" className="w-48">
        <DropdownMenuRadioGroup value={value} onValueChange={onValueChange}>
          {options.map((option) => (
            <DropdownMenuRadioItem key={option.value} value={option.value}>
              {option.label}
            </DropdownMenuRadioItem>
          ))}
        </DropdownMenuRadioGroup>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};
