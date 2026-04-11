import { Icon } from "@/components/shared/icon";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/components/ui/input-group";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { STATUS_VARIANT_META } from "@/shared/constants/play-statuses";

interface PlaysFiltersProps {
  search: string;
  statusFilter: string;
  generationFilter: string;
  gameFilter: string;
  sortBy: string;
  statusCounts: {
    all: number;
    active: number;
    completed: number;
    paused: number;
    dropped: number;
  };
  generations: Array<{ id: number; name: string }>;
  games: Array<{ id: number; name: string }>;
  onSearchChange: (value: string) => void;
  onStatusFilterChange: (value: string) => void;
  onGenerationFilterChange: (value: string) => void;
  onGameFilterChange: (value: string) => void;
  onSortByChange: (value: string) => void;
}

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
        <InputGroup>
          <InputGroupInput
            id="inline-start-input"
            placeholder="Search plays or games..."
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
          <SelectTrigger className="w-full md:w-48">
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

        <Select value={statusFilter} onValueChange={onStatusFilterChange}>
          <SelectTrigger className="w-full md:w-48">
            <SelectValue placeholder="Filter by status" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">
              <span className="flex items-center gap-2">
                <Icon
                  type="total"
                  className={STATUS_VARIANT_META.total.colors.icon}
                />
                All ({statusCounts.all})
              </span>
            </SelectItem>
            <SelectItem value="active">
              <span className="flex items-center gap-2">
                <Icon
                  type="active"
                  className={STATUS_VARIANT_META.active.colors.icon}
                />
                Active ({statusCounts.active})
              </span>
            </SelectItem>
            <SelectItem value="completed">
              <span className="flex items-center gap-2">
                <Icon
                  type="completed"
                  className={STATUS_VARIANT_META.completed.colors.icon}
                />
                Completed ({statusCounts.completed})
              </span>
            </SelectItem>
            <SelectItem value="paused">
              <span className="flex items-center gap-2">
                <Icon
                  type="paused"
                  className={STATUS_VARIANT_META.paused.colors.icon}
                />
                Paused ({statusCounts.paused})
              </span>
            </SelectItem>
            <SelectItem value="dropped">
              <span className="flex items-center gap-2">
                <Icon
                  type="dropped"
                  className={STATUS_VARIANT_META.dropped.colors.icon}
                />
                Dropped ({statusCounts.dropped})
              </span>
            </SelectItem>
          </SelectContent>
        </Select>

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
