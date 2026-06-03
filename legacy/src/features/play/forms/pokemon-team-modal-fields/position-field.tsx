"use client";

import type { PlayPokemon } from "@/features/play/types";
import { cn } from "@/lib/utils/cn";
import { Button } from "@/shared/components/ui/button";
import { Combobox } from "@/shared/components/ui/combobox";
import {
  Command,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from "@/shared/components/ui/command";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/shared/components/ui/popover";
import { Check, ChevronsUpDown } from "lucide-react";
import { useEffect, useState } from "react";

type PositionFieldProps = {
  value?: number;
  onChange: (value: number) => void;
  team?: PlayPokemon[];
  currentPokemonId?: string;
  error?: string;
  isEditing?: boolean;
};

export const PositionField = ({
  value,
  onChange,
  team = [],
  currentPokemonId,
  error,
  isEditing = false,
}: PositionFieldProps) => {
  const activeTeamPokemon = team.filter(
    (pokemon) => pokemon.position <= 6 && pokemon.id !== currentPokemonId,
  );
  const boxPokemon = team.filter(
    (pokemon) => pokemon.position > 6 && pokemon.id !== currentPokemonId,
  );
  const activeTeamFull = activeTeamPokemon.length >= 6;
  const boxFull = boxPokemon.length >= 6;
  const isInActiveTeam = value !== undefined && value <= 6;
  const currentTeam = isInActiveTeam ? "active" : "box";

  const [selectedTeam, setSelectedTeam] = useState<"active" | "box">(
    currentTeam,
  );
  const [open, setOpen] = useState(false);

  useEffect(() => {
    setSelectedTeam(currentTeam);
  }, [currentTeam]);

  if (isEditing) {
    const currentPokemon = team.find((pokemon) => pokemon.id === currentPokemonId);
    const currentPokemonName = currentPokemon ? currentPokemon.species.name : "";

    const activeTeamOptions = activeTeamPokemon.map((pokemon) => ({
      value: pokemon.position.toString(),
      label: `Team slot ${pokemon.position} - ${pokemon.species.name}`,
    }));

    if (
      value &&
      value <= 6 &&
      !activeTeamOptions.find((option) => option.value === value.toString())
    ) {
      activeTeamOptions.push({
        value: value.toString(),
        label: `Team slot ${value} - ${currentPokemonName}`,
      });
    }

    if (!activeTeamFull) {
      const nextPosition = activeTeamPokemon.length + 1;

      if (
        !activeTeamOptions.find((option) => option.value === nextPosition.toString())
      ) {
        activeTeamOptions.push({
          value: nextPosition.toString(),
          label: `Team slot ${nextPosition} - Empty`,
        });
      }
    }

    activeTeamOptions.sort((left, right) => Number(left.value) - Number(right.value));

    const boxOptions = boxPokemon.map((pokemon) => ({
      value: pokemon.position.toString(),
      label: `Box slot ${pokemon.position - 6} - ${pokemon.species.name}`,
    }));

    if (
      value &&
      value > 6 &&
      !boxOptions.find((option) => option.value === value.toString())
    ) {
      boxOptions.push({
        value: value.toString(),
        label: `Box slot ${value - 6} - ${currentPokemonName}`,
      });
    }

    if (!boxFull) {
      const nextPosition = boxPokemon.length + 7;

      if (!boxOptions.find((option) => option.value === nextPosition.toString())) {
        boxOptions.push({
          value: nextPosition.toString(),
          label: `Box slot ${nextPosition - 6} - Empty`,
        });
      }
    }

    boxOptions.sort((left, right) => Number(left.value) - Number(right.value));

    const selectedOption = [...activeTeamOptions, ...boxOptions].find(
      (option) => option.value === value?.toString(),
    );

    return (
      <Field>
        <FieldLabel htmlFor="position">
          Position<span className="text-destructive ml-1">*</span>
        </FieldLabel>
        <Popover open={open} onOpenChange={setOpen}>
          <PopoverTrigger asChild>
            <Button
              id="position"
              variant="secondary"
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
        {error ? (
          <FieldDescription className="text-destructive">{error}</FieldDescription>
        ) : null}
      </Field>
    );
  }

  const nextActivePosition = activeTeamPokemon.length + 1;
  const nextBoxPosition = boxPokemon.length + 1;
  const teamOptions = [
    {
      value: "active",
      label: `Active Team (${activeTeamPokemon.length}/6) - Slot ${nextActivePosition}`,
      disabled: activeTeamFull,
    },
    {
      value: "box",
      label: `Box (${boxPokemon.length}/6) - Slot ${nextBoxPosition}`,
      disabled: boxFull,
    },
  ].filter((option) => !option.disabled);

  return (
    <Field>
      <FieldLabel htmlFor="position">
        Position<span className="text-destructive ml-1">*</span>
      </FieldLabel>
      <Combobox
        id="position"
        options={teamOptions}
        value={teamOptions.some((option) => option.value === selectedTeam) ? selectedTeam : ""}
        onValueChange={(nextValue: string) => {
          const nextTeam = nextValue as "active" | "box";

          setSelectedTeam(nextTeam);
          onChange(nextTeam === "active" ? nextActivePosition : nextBoxPosition + 6);
        }}
        placeholder={
          teamOptions.length === 0 ? "No positions available" : "Select team..."
        }
        searchPlaceholder="Search teams..."
        disabled={teamOptions.length === 0}
        aria-invalid={!!error}
      />
      {error ? (
        <FieldDescription className="text-destructive">{error}</FieldDescription>
      ) : null}
    </Field>
  );
};
