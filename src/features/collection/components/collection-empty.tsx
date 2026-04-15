import { Icon } from "@/shared/components/icon";
import { Button } from "@/shared/components/ui/button";
import { Card, CardContent } from "@/shared/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/shared/components/ui/empty";
import { getDashboardRoute } from "@/shared/constants/routes";

type CollectionEmptyProps = {
  hasFilters: boolean;
  onClearFilters: () => void;
}

export const CollectionEmpty = ({
  hasFilters,
  onClearFilters,
}: CollectionEmptyProps) => {
  return (
    <Card className="bg-background border-dashed">
      <CardContent>
        <Empty>
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Icon type="collection" />
            </EmptyMedia>
            <EmptyTitle>
              {hasFilters ? "No matching Pokémon" : "No Pokémon yet"}
            </EmptyTitle>
            <EmptyDescription>
              {hasFilters
                ? "Try adjusting your search or filters."
                : "Start a playthrough and add Pokémon to your team!"}
            </EmptyDescription>
          </EmptyHeader>
          <EmptyContent>
            {hasFilters ? (
              <Button variant="secondary" onClick={onClearFilters}>
                Clear filters
              </Button>
            ) : (
              <Button asChild variant="secondary">
                <a href={getDashboardRoute()}>Dashboard</a>
              </Button>
            )}
          </EmptyContent>
        </Empty>
      </CardContent>
    </Card>
  );
};
