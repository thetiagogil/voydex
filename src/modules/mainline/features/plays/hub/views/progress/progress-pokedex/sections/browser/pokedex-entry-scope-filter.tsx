"use client";

import { SelectControl } from "@/shared/components/select-control";

import type { MainlinePlayPokedexScope } from "../../types";

export const PokedexEntryScopeFilter = ({
  completionScopeName,
  onValueChange,
  scopes,
  value,
}: {
  completionScopeName: string;
  onValueChange: (value: string) => void;
  scopes: MainlinePlayPokedexScope[];
  value: string;
}) => {
  const options = [
    {
      description: `Show every entry in ${completionScopeName}`,
      label: "All Pokédex areas",
      value: "all",
    },
    ...scopes.map((scope) => ({
      description: `${scope.entries.length.toLocaleString()} Pokémon`,
      label: scope.name,
      value: String(scope.id),
    })),
  ];

  return (
    <SelectControl
      ariaLabel="Filter by local Pokédex"
      className="w-52 min-w-0"
      onValueChange={onValueChange}
      options={options}
      placeholder="All Pokédex areas"
      value={value}
    />
  );
};
