import { Icon } from "@/components/shared/icon";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";

interface PlaysFiltersProps {
  search: string;
  statusFilter: string;
  sortBy: string;
  statusCounts: {
    all: number;
    active: number;
    completed: number;
    paused: number;
    dropped: number;
  };
  onSearchChange: (value: string) => void;
  onStatusFilterChange: (value: string) => void;
  onSortByChange: (value: string) => void;
}

export const PlaysFilters = ({
  search,
  statusFilter,
  sortBy,
  statusCounts,
  onSearchChange,
  onStatusFilterChange,
  onSortByChange,
}: PlaysFiltersProps) => {
  return (
    <div className="border-border bg-card rounded-xl border p-4 shadow-sm">
      <div className="flex flex-col gap-4 md:flex-row">
        {/* Search */}
        <div className="relative flex-1">
          <Icon
            name="search"
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
            <SelectItem value="all">
              <span className="flex items-center gap-2">
                <Icon name="total" className="text-blue-500" />
                All ({statusCounts.all})
              </span>
            </SelectItem>
            <SelectItem value="active">
              <span className="flex items-center gap-2">
                <Icon name="active" className="text-orange-500" />
                Active ({statusCounts.active})
              </span>
            </SelectItem>
            <SelectItem value="completed">
              <span className="flex items-center gap-2">
                <Icon name="completed" className="text-green-500" />
                Completed ({statusCounts.completed})
              </span>
            </SelectItem>
            <SelectItem value="paused">
              <span className="flex items-center gap-2">
                <Icon name="paused" className="text-yellow-500" />
                Paused ({statusCounts.paused})
              </span>
            </SelectItem>
            <SelectItem value="dropped">
              <span className="flex items-center gap-2">
                <Icon name="dropped" className="text-muted-foreground" />
                Dropped ({statusCounts.dropped})
              </span>
            </SelectItem>
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
