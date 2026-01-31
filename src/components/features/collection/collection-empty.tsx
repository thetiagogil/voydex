import { Icon } from "@/components/shared/icon";
import { Button } from "@/components/ui/button";

interface CollectionEmptyProps {
  hasFilters: boolean;
  onClearFilters: () => void;
}

export const CollectionEmpty = ({
  hasFilters,
  onClearFilters,
}: CollectionEmptyProps) => {
  return (
    <div className="border-border bg-card flex flex-col items-center justify-center rounded-xl border p-12 text-center shadow-sm">
      <div className="bg-muted text-muted-foreground mb-4 flex h-16 w-16 items-center justify-center rounded-2xl">
        <Icon name="collection" size={32} />
      </div>
      <h3 className="mb-2 text-xl font-semibold">
        {hasFilters ? "No matching Pokémon" : "No Pokémon yet"}
      </h3>
      <p className="text-muted-foreground mb-4">
        {hasFilters
          ? "Try adjusting your search or filters."
          : "Start a playthrough and add Pokémon to your team!"}
      </p>
      {hasFilters ? (
        <Button variant="outline-secondary" onClick={onClearFilters}>
          Clear filters
        </Button>
      ) : (
        <Button asChild variant="outline-secondary">
          <a href="/adventures">Browse Games</a>
        </Button>
      )}
    </div>
  );
};
