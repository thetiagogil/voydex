"use client";

import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-filter-panel";
import type {
  GameType,
  GamesPageFilters,
  Generation,
  Region,
} from "@/modules/reference/types";
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
      variant="journal"
      className="grid-cols-2 gap-2 lg:grid-cols-[minmax(18rem,1fr)_repeat(3,minmax(0,10.5rem))] lg:gap-3"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <InputGroup className="bg-card col-span-2 h-10 flex-1 lg:col-span-1">
        <InputGroupAddon>
          <AppIcon icon={appIcons.actions.search} aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          aria-label="Search games"
          value={filters.query}
          onChange={(event) => {
            onQueryChange(event.currentTarget.value);
          }}
          placeholder="Search by game name"
        />
      </InputGroup>
      <SelectControl
        name="generation"
        ariaLabel="Filter by generation"
        value={filters.generation}
        onValueChange={onGenerationChange}
        options={generationOptions}
        placeholder="All generations"
        size="lg"
        className="w-full"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by game type"
        value={filters.gameType}
        onValueChange={onGameTypeChange}
        options={gameTypeOptions}
        placeholder="All types"
        size="lg"
        className="w-full"
      />
      <SelectControl
        name="region"
        ariaLabel="Filter by region"
        value={filters.region}
        onValueChange={onRegionChange}
        options={regionOptions}
        placeholder="All regions"
        size="lg"
        className="col-span-2 w-full lg:col-span-1"
      />
    </CodexFilterPanel>
  );
};
