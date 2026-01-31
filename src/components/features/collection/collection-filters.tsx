import { Icon } from "@/components/shared/icon";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";

interface CollectionFiltersProps {
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
      {/* All filters in one responsive row */}
      <div className="grid grid-cols-1 gap-3 md:grid-cols-[1fr_auto_auto_auto]">
        {/* Search */}
        <div className="relative">
          <Icon
            name="search"
            className="text-muted-foreground pointer-events-none absolute top-1/2 left-3 -translate-y-1/2"
            size={16}
          />
          <Input
            placeholder="Search by name or number..."
            value={search}
            onChange={(e) => onSearchChange(e.target.value)}
            className="pl-10"
          />
        </div>

        {/* Generation Filter */}
        <Select
          value={generationFilter}
          onValueChange={onGenerationFilterChange}
        >
          <SelectTrigger className="w-full md:w-[160px]">
            <SelectValue placeholder="Generation" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Generations</SelectItem>
            {generations.map((gen) => (
              <SelectItem key={gen.id} value={gen.id.toString()}>
                {gen.name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        {/* Type Filter */}
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

        {/* Shiny Filter */}
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
