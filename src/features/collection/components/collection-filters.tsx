import { Icon } from "@/shared/components/icon";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";

type CollectionFiltersProps = {
  search: string;
  generationFilter: string;
  typeFilter: string;
  shinyFilter: string;
  generations: Array<{ id: number; name: string }>;
  types: Array<{ id: number; name: string }>;
  onSearchChange: (value: string) => void;
  onGenerationFilterChange: (value: string) => void;
  onTypeFilterChange: (value: string) => void;
  onShinyFilterChange: (value: string) => void;
}

export const CollectionFilters = ({
  search,
  generationFilter,
  typeFilter,
  shinyFilter,
  generations,
  types,
  onSearchChange,
  onGenerationFilterChange,
  onTypeFilterChange,
  onShinyFilterChange,
}: CollectionFiltersProps) => {
  return (
    <div className="border-border bg-card rounded-xl border p-4 shadow-sm">
      <div className="grid grid-cols-1 gap-3 md:grid-cols-[1fr_auto_auto_auto]">
        <InputGroup>
          <InputGroupInput
            id="inline-start-input"
            placeholder="Search by name or number..."
            value={search}
            onChange={(e) => onSearchChange(e.target.value)}
          />

          <InputGroupAddon align="inline-start">
            <Icon type="search" />
          </InputGroupAddon>
        </InputGroup>

        <Select
          value={generationFilter}
          onValueChange={onGenerationFilterChange}
        >
          <SelectTrigger className="w-full md:w-[160px]">
            <SelectValue placeholder="Generation" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Generations</SelectItem>
            {generations.map((generation) => (
              <SelectItem key={generation.id} value={generation.id.toString()}>
                {generation.name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        <Select value={typeFilter} onValueChange={onTypeFilterChange}>
          <SelectTrigger className="w-full md:w-[140px]">
            <SelectValue placeholder="Type" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Types</SelectItem>
            {types.map((type) => (
              <SelectItem key={type.id} value={type.id.toString()}>
                {type.name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        <Select value={shinyFilter} onValueChange={onShinyFilterChange}>
          <SelectTrigger className="w-full md:w-[140px]">
            <SelectValue placeholder="Shiny" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Pokémon</SelectItem>
            <SelectItem value="shiny">
              <span className="flex items-center gap-2">Shiny</span>
            </SelectItem>
            <SelectItem value="normal">Non-Shiny</SelectItem>
          </SelectContent>
        </Select>
      </div>
    </div>
  );
};
