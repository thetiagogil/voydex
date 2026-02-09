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
import { STATUS_COLORS } from "@/lib/constants/styles";

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

        <Select value={statusFilter} onValueChange={onStatusFilterChange}>
          <SelectTrigger className="w-full md:w-48">
            <SelectValue placeholder="Filter by status" />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">
              <span className="flex items-center gap-2">
                <Icon type="total" className={STATUS_COLORS.total.icon} />
                All ({statusCounts.all})
              </span>
            </SelectItem>
            <SelectItem value="active">
              <span className="flex items-center gap-2">
                <Icon type="active" className={STATUS_COLORS.active.icon} />
                Active ({statusCounts.active})
              </span>
            </SelectItem>
            <SelectItem value="completed">
              <span className="flex items-center gap-2">
                <Icon
                  type="completed"
                  className={STATUS_COLORS.completed.icon}
                />
                Completed ({statusCounts.completed})
              </span>
            </SelectItem>
            <SelectItem value="paused">
              <span className="flex items-center gap-2">
                <Icon type="paused" className={STATUS_COLORS.paused.icon} />
                Paused ({statusCounts.paused})
              </span>
            </SelectItem>
            <SelectItem value="dropped">
              <span className="flex items-center gap-2">
                <Icon type="dropped" className={STATUS_COLORS.dropped.icon} />
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
