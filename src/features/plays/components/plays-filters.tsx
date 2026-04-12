import { Icon } from "@/shared/components/icon";
import { Input } from "@/shared/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/shared/components/ui/select";
import {
  STATUS_VARIANT_META,
  type StatusVariant,
} from "@/shared/constants/play-statuses";

type PlaysFiltersProps = {
  search: string;
  statusFilter: string;
  generationFilter: string;
  gameFilter: string;
  sortBy: string;
  statusCounts: Record<string, number>;
  generations: { id: number; name: string }[];
  games: { id: number; name: string }[];
  onSearchChange: (value: string) => void;
  onStatusFilterChange: (value: string) => void;
  onGenerationFilterChange: (value: string) => void;
  onGameFilterChange: (value: string) => void;
  onSortByChange: (value: string) => void;
};

const STATUS_OPTIONS: { value: string; variant: StatusVariant }[] = [
  { value: "all", variant: "total" },
  { value: "active", variant: "active" },
  { value: "completed", variant: "completed" },
  { value: "paused", variant: "paused" },
  { value: "dropped", variant: "dropped" },
];

export const PlaysFilters = ({
  search,
  statusFilter,
  generationFilter,
  gameFilter,
  sortBy,
  statusCounts,
  generations,
  games,
  onSearchChange,
  onStatusFilterChange,
  onGenerationFilterChange,
  onGameFilterChange,
  onSortByChange,
}: PlaysFiltersProps) => {
  return (
    <div className="border-border bg-card rounded-xl border p-4 shadow-sm">
      <div className="flex flex-col gap-4 md:flex-row">
        {/* Search */}
        <div className="relative flex-1">
          <Icon
            type="search"
            className="text-muted-foreground pointer-events-none absolute top-1/2 left-3 -translate-y-1/2"
            size={16}
          />
          <Input
            placeholder="Search plays or games..."
            value={search}
            onChange={(e) => onSearchChange(e.target.value)}
            className="pl-10"
          />
        </div>

        {/* Status Filter */}
        <Select value={statusFilter} onValueChange={onStatusFilterChange}>
          <SelectTrigger className="w-full md:w-48">
            <SelectValue placeholder="Filter by status" />
          </SelectTrigger>
          <SelectContent>
            {STATUS_OPTIONS.map(({ value, variant }) => {
              const meta = STATUS_VARIANT_META[variant];
              const count = statusCounts[value] ?? 0;
              return (
                <SelectItem key={value} value={value}>
                  <span className="flex items-center gap-2">
                    <Icon type={meta.icon} className={meta.colors.icon} />
                    {meta.label} ({count})
                  </span>
                </SelectItem>
              );
            })}
          </SelectContent>
        </Select>

        {/* Generation Filter */}
        <Select
          value={generationFilter}
          onValueChange={onGenerationFilterChange}
        >
          <SelectTrigger className="w-full md:w-48">
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

        {/* Game Filter */}
        <Select value={gameFilter} onValueChange={onGameFilterChange}>
          <SelectTrigger className="w-full md:w-48">
            <SelectValue placeholder="Game" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Games</SelectItem>
            {games.map((game) => (
              <SelectItem key={game.id} value={game.id.toString()}>
                {game.name}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>

        {/* Sort */}
        <Select value={sortBy} onValueChange={onSortByChange}>
          <SelectTrigger className="w-full md:w-48">
            <SelectValue placeholder="Sort by" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="updated">Last Updated</SelectItem>
            <SelectItem value="created">Date Created</SelectItem>
            <SelectItem value="name">Name</SelectItem>
            <SelectItem value="status">Status</SelectItem>
          </SelectContent>
        </Select>
      </div>
    </div>
  );
};
