import { Icon } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";

type AdventuresEmptyProps = {
  hasFilters: boolean;
  onClearFilters: () => void;
};

export const AdventuresEmpty = ({
  hasFilters,
  onClearFilters,
}: AdventuresEmptyProps) => {
  return (
    <div className="border-border bg-card flex flex-col items-center justify-center rounded-xl border p-12 text-center shadow-sm">
      <div className="bg-muted text-muted-foreground mb-4 flex h-16 w-16 items-center justify-center rounded-2xl">
        <Icon type="play" size={32} />
      </div>
      <h3 className="mb-2 text-xl font-semibold">
        {hasFilters ? "No matching plays" : "No plays yet"}
      </h3>
      <p className="text-muted-foreground mb-4">
        {hasFilters
          ? "Try adjusting your search or filters."
          : "Start a new adventure from the plays page!"}
      </p>
      {hasFilters ? (
        <Button variant="secondary" onClick={onClearFilters}>
          Clear filters
        </Button>
      ) : (
        <Button asChild variant="secondary">
          <a href="/adventures">Browse plays</a>
        </Button>
      )}
    </div>
  );
};
