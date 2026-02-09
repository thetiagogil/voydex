import { Icon } from "@/components/shared/icon";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import {
  Empty,
  EmptyContent,
  EmptyDescription,
  EmptyHeader,
  EmptyMedia,
  EmptyTitle,
} from "@/components/ui/empty";

interface PlaysEmptyProps {
  hasFilters: boolean;
  onClearFilters: () => void;
}

export const PlaysEmpty = ({ hasFilters, onClearFilters }: PlaysEmptyProps) => {
  return (
    <Card className="bg-background border-dashed">
      <CardContent>
        <Empty>
          <EmptyHeader>
            <EmptyMedia variant="icon">
              <Icon type="play" />
            </EmptyMedia>
            <EmptyTitle>
              {hasFilters ? "No matching plays" : "No plays yet"}
            </EmptyTitle>
            <EmptyDescription>
              {hasFilters
                ? "Try adjusting your search or filters."
                : "Start a new playthrough from the adventures page!"}
            </EmptyDescription>
          </EmptyHeader>
          <EmptyContent>
            {hasFilters ? (
              <Button variant="secondary" onClick={onClearFilters}>
                Clear filters
              </Button>
            ) : (
              <Button asChild variant="secondary">
                <a href="/adventures">Go to dashboard</a>
              </Button>
            )}
          </EmptyContent>
        </Empty>
      </CardContent>
    </Card>
  );
};
