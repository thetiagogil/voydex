import { Button } from "@/components/ui/button";

interface CollectionResultsInfoProps {
  count: number;
  hasFilters: boolean;
  onClearFilters: () => void;
}

export const CollectionResultsInfo = ({
  count,
  hasFilters,
  onClearFilters,
}: CollectionResultsInfoProps) => {
  if (!hasFilters) return null;

  return (
    <div className="text-muted-foreground flex items-center justify-between text-sm">
      <span>
        {count} result{count !== 1 ? "s" : ""}
      </span>
      <Button variant="ghost" size="sm" onClick={onClearFilters}>
        Clear filters
      </Button>
    </div>
  );
};
