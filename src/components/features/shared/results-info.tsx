import { Button } from "@/components/ui/button";

interface ResultsInfoProps {
  count: number;
  hasFilters: boolean;
  onClearFilters: () => void;
}

export const ResultsInfo = ({
  count,
  hasFilters,
  onClearFilters,
}: ResultsInfoProps) => {
  if (!hasFilters) return null;

  return (
    <div className="text-muted-foreground flex items-center justify-between text-sm">
      <span>
        {count} result{count !== 1 ? "s" : ""}
      </span>
      <Button variant="ghost" onClick={onClearFilters}>
        Clear filters
      </Button>
    </div>
  );
};
