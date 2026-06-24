import { SearchIcon, XIcon } from "lucide-react";

import {
  completionOptions,
  type MainlinePlayFilters,
  type SelectOption,
} from "@/modules/mainline/features/play/components/mainline-plays-browser-filters";
import { Button } from "@/shared/components/ui/button";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { SelectControl } from "@/shared/components/app/select-control";

type MainlinePlaysFilterToolbarProps = {
  activeFilters: boolean;
  filters: MainlinePlayFilters;
  gameOptions: SelectOption[];
  generationOptions: SelectOption[];
  onClearFilters: () => void;
  onUpdateFilter: (key: keyof MainlinePlayFilters, value: string) => void;
  statusOptions: SelectOption[];
};

export const MainlinePlaysFilterToolbar = ({
  activeFilters,
  filters,
  gameOptions,
  generationOptions,
  onClearFilters,
  onUpdateFilter,
  statusOptions,
}: MainlinePlaysFilterToolbarProps) => {
  return (
    <div className="bg-card/78 ring-app-surface-border grid gap-3 rounded-xl p-3 ring-1 backdrop-blur-md xl:grid-cols-[minmax(16rem,1fr)_repeat(4,minmax(9rem,auto))_auto]">
      <InputGroup>
        <InputGroupAddon>
          <SearchIcon aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          value={filters.q}
          onChange={(event) => onUpdateFilter("q", event.target.value)}
          placeholder="Search plays, games, or trainer"
        />
      </InputGroup>
      <SelectControl
        ariaLabel="Filter by status"
        value={filters.status}
        onValueChange={(value) => onUpdateFilter("status", value)}
        options={[{ label: "All statuses", value: "" }, ...statusOptions]}
        placeholder="All statuses"
        className="w-full"
      />
      <SelectControl
        ariaLabel="Filter by generation"
        value={filters.generation}
        onValueChange={(value) => onUpdateFilter("generation", value)}
        options={[
          { label: "All generations", value: "" },
          ...generationOptions,
        ]}
        placeholder="All generations"
        className="w-full"
      />
      <SelectControl
        ariaLabel="Filter by game"
        value={filters.game}
        onValueChange={(value) => onUpdateFilter("game", value)}
        options={[{ label: "All games", value: "" }, ...gameOptions]}
        placeholder="All games"
        className="w-full"
      />
      <SelectControl
        ariaLabel="Filter by completion"
        value={filters.completion}
        onValueChange={(value) => onUpdateFilter("completion", value)}
        options={completionOptions}
        placeholder="Completion"
        className="w-full"
      />
      <Button
        type="button"
        variant="outline"
        disabled={!activeFilters}
        onClick={onClearFilters}
      >
        <XIcon data-icon="inline-start" />
        Clear
      </Button>
    </div>
  );
};
