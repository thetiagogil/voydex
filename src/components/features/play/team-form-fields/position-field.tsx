"use client";

import { Button } from "@/components/ui/button";
import { Combobox } from "@/components/ui/combobox";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from "@/components/ui/command";
import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import { cn } from "@/lib/utils/cn";
import { Check, ChevronsUpDown } from "lucide-react";
import { useState } from "react";

interface PositionFieldProps {
  value?: number;
  onChange: (value: number) => void;
  team?: PlayPokemon[];
  currentPokemonId?: string;
  error?: string;
  isEditing?: boolean;
}

export function PositionField({
  value,
  onChange,
  team = [],
  currentPokemonId,
  error,
  isEditing = false,
}: PositionFieldProps) {
  const activeTeamPokemon = team.filter(
    (p) => p.position <= 6 && p.id !== currentPokemonId,
  );
  const boxPokemon = team.filter(
    (p) => p.position > 6 && p.id !== currentPokemonId,
  );

  const activeTeamFull = activeTeamPokemon.length >= 6;
  const boxFull = boxPokemon.length >= 6;

  // Determine current team location
  const isInActiveTeam = value && value <= 6;
  const currentTeam = isInActiveTeam ? "active" : "box";

  // Local state for team selection (only for adding)
  const [selectedTeam, setSelectedTeam] = useState<"active" | "box">(
    currentTeam,
  );

  // Popover open state (must be top-level hook to avoid conditional hooks)
  const [open, setOpen] = useState(false);

  // For editing: show only occupied positions (to swap) + next available positions
  if (isEditing) {
    // Get the current Pokemon being edited
    const currentPokemon = team.find((p) => p.id === currentPokemonId);
    const currentPokemonName = currentPokemon
      ? currentPokemon.species.name
      : "";

    // Build Active Team options: only occupied positions + next available (if not full)
    const activeTeamOptions = activeTeamPokemon.map((p) => {
      const name = p.species.name;
      return {
        value: p.position.toString(),
        label: `Position ${p.position} - ${name}`,
      };
    });

    // Add current Pokemon's position if it's in Active Team range and not already in the list
    if (
      value &&
      value <= 6 &&
      !activeTeamOptions.find((opt) => opt.value === value.toString())
    ) {
      activeTeamOptions.push({
        value: value.toString(),
        label: `Position ${value} - ${currentPokemonName}`,
      });
    }

    // Add next available active position if not full and not duplicate of current position
    if (!activeTeamFull) {
      const nextPos = activeTeamPokemon.length + 1;
      // Only add if this position isn't already in the list (avoid duplicate when current = next)
      if (!activeTeamOptions.find((opt) => opt.value === nextPos.toString())) {
        activeTeamOptions.push({
          value: nextPos.toString(),
          label: `Position ${nextPos} - Empty`,
        });
      }
    }

    // Sort after all items are added
    activeTeamOptions.sort((a, b) => Number(a.value) - Number(b.value));

    // Build Box options: only occupied positions + next available (if not full)
    const boxOptions = boxPokemon.map((p) => {
      const name = p.species.name;
      return {
        value: p.position.toString(),
        label: `Position ${p.position} - ${name}`,
      };
    });

    // Add current Pokemon's position if it's in Box range and not already in the list
    if (
      value &&
      value > 6 &&
      !boxOptions.find((opt) => opt.value === value.toString())
    ) {
      boxOptions.push({
        value: value.toString(),
        label: `Position ${value} - ${currentPokemonName}`,
      });
    }

    // Add next available box position if not full and not duplicate of current position
    if (!boxFull) {
      const nextPos = boxPokemon.length + 7;
      // Only add if this position isn't already in the list (avoid duplicate when current = next)
      if (!boxOptions.find((opt) => opt.value === nextPos.toString())) {
        boxOptions.push({
          value: nextPos.toString(),
          label: `Position ${nextPos} - Empty`,
        });
      }
    }

    // Sort after all items are added
    boxOptions.sort((a, b) => Number(a.value) - Number(b.value));

    const selectedOption = [...activeTeamOptions, ...boxOptions].find(
      (opt) => opt.value === value?.toString(),
    );

    return (
      <Field>
        <FieldLabel htmlFor="position">Position</FieldLabel>
        <Popover open={open} onOpenChange={setOpen}>
          <PopoverTrigger asChild>
            <Button
              id="position"
              variant="outline-secondary"
              role="combobox"
              aria-expanded={open}
              aria-invalid={!!error}
              className="w-full justify-between"
            >
              <span className="truncate">
                {selectedOption ? selectedOption.label : "Select position..."}
              </span>
              <ChevronsUpDown className="ml-2 size-4 shrink-0 opacity-50" />
            </Button>
          </PopoverTrigger>

          <PopoverContent className="w-[--radix-popover-trigger-width] p-0">
            <Command>
              <CommandInput placeholder="Search positions..." />
              <CommandList>
                <CommandEmpty>No position found.</CommandEmpty>

                <CommandGroup heading="Active Team">
                  {activeTeamOptions.map((option) => (
                    <CommandItem
                      key={option.value}
                      value={option.label}
                      onSelect={() => {
                        onChange(Number(option.value));
                        setOpen(false);
                      }}
                      className="flex justify-between"
                    >
                      {option.label}
                      <Check
                        className={cn(
                          "size-4",
                          value?.toString() === option.value
                            ? "opacity-100"
                            : "opacity-0",
                        )}
                      />
                    </CommandItem>
                  ))}
                </CommandGroup>

                <CommandSeparator />

                <CommandGroup heading="Box">
                  {boxOptions.map((option) => (
                    <CommandItem
                      key={option.value}
                      value={option.label}
                      onSelect={() => {
                        onChange(Number(option.value));
                        setOpen(false);
                      }}
                      className="flex justify-between"
                    >
                      {option.label}
                      <Check
                        className={cn(
                          "size-4",
                          value?.toString() === option.value
                            ? "opacity-100"
                            : "opacity-0",
                        )}
                      />
                    </CommandItem>
                  ))}
                </CommandGroup>
              </CommandList>
            </Command>
          </PopoverContent>
        </Popover>
        {error && (
          <FieldDescription className="text-destructive">
            {error}
          </FieldDescription>
        )}
      </Field>
    );
  }

  // For adding: choose team first, then auto-assign position
  const nextActivePosition = activeTeamPokemon.length + 1;
  const nextBoxPosition = boxPokemon.length + 1;

  const teamOptions = [
    {
      value: "active",
      label: `Active Team (${activeTeamPokemon.length}/6)${!activeTeamFull ? ` - Position ${nextActivePosition}` : " - Full"}`,
      disabled: activeTeamFull,
    },
    {
      value: "box",
      label: `Box (${boxPokemon.length}/6)${!boxFull ? ` - Position ${nextBoxPosition}` : " - Full"}`,
      disabled: boxFull,
    },
  ].filter((opt) => !opt.disabled);

  return (
    <Field>
      <FieldLabel htmlFor="position">Position</FieldLabel>
      <Combobox
        id="position"
        options={teamOptions}
        value={selectedTeam}
        onValueChange={(val: string) => {
          const team = val as "active" | "box";
          setSelectedTeam(team);
          if (team === "active") {
            onChange(nextActivePosition); // DB: 1-6
          } else {
            onChange(nextBoxPosition + 6); // DB: 7-12
          }
        }}
        placeholder="Select team..."
        searchPlaceholder="Search teams..."
        aria-invalid={!!error}
      />
      {error && (
        <FieldDescription className="text-destructive">
          {error}
        </FieldDescription>
      )}
    </Field>
  );
}
