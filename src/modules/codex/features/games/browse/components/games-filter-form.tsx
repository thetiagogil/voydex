"use client";

import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-filter-panel";
import type {
  GameType,
  GamesPageFilters,
  Generation,
  Region,
} from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";

type GamesFilterFormProps = {
  filters: GamesPageFilters;
  gameTypes: GameType[];
  generations: Generation[];
  onGameTypeChange: (gameType: string) => void;
  onGenerationChange: (generation: string) => void;
  onQueryChange: (query: string) => void;
  onRegionChange: (region: string) => void;
  regions: Region[];
};

export const GamesFilterForm = ({
  filters,
  gameTypes,
  generations,
  onGameTypeChange,
  onGenerationChange,
  onQueryChange,
  onRegionChange,
  regions,
}: GamesFilterFormProps) => {
  const generationOptions = [
    { label: "All generations", value: "" },
    ...generations.map((generation) => ({
      label: generation.name,
      value: generation.slug,
    })),
  ];
  const regionOptions = [
    { label: "All regions", value: "" },
    ...regions.map((region) => ({
      label: region.name,
      value: region.slug,
    })),
  ];
  const gameTypeOptions = [
    { label: "All types", value: "" },
    ...gameTypes.map((gameType) => ({
      label: gameType.name,
      value: gameType.slug,
    })),
  ];

  return (
    <CodexFilterPanel
      className="lg:grid-cols-[minmax(18rem,1fr)_auto_auto_auto]"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <InputGroup className="flex-1">
        <InputGroupAddon>
          <AppIcon icon={appIcons.actions.search} aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          value={filters.query}
          onChange={(event) => {
            onQueryChange(event.currentTarget.value);
          }}
          placeholder="Search by game name"
        />
      </InputGroup>
      <SelectControl
        name="generation"
        ariaLabel="Filter games by generation"
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={generationOptions}
        placeholder="All generations"
        className="w-full lg:w-44"
      />
      <SelectControl
        name="region"
        ariaLabel="Filter games by region"
        value={filters.region}
        onValueChange={onRegionChange}
        options={regionOptions}
        placeholder="All regions"
        className="w-full lg:w-40"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter games by type"
        value={filters.gameType}
        onValueChange={onGameTypeChange}
        options={gameTypeOptions}
        placeholder="All types"
        className="w-full lg:w-40"
      />
    </CodexFilterPanel>
  );
};
