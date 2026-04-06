import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Button } from "@/components/ui/button";
import { ScrollArea } from "@/components/ui/scroll-area";
import {
  useCheckPlayTrackingItem,
  useCheckPlayTrackingItemBulk,
  useUncheckPlayTrackingItem,
  useUncheckPlayTrackingItemBulk,
} from "@/hooks/gameplay/usePlayTrackingMutations";
import type { PlayTrackingItem } from "@/types/tracking";

interface TrackingItemsListProps {
  items: PlayTrackingItem[];
  playId: string;
  categoryId: number;
}

export const TrackingItemsList = ({
  items,
  playId,
  categoryId,
}: TrackingItemsListProps) => {
  const checkComplete = useCheckPlayTrackingItem();
  const checkIncomplete = useUncheckPlayTrackingItem();
  const checkBulk = useCheckPlayTrackingItemBulk();
  const uncheckBulk = useUncheckPlayTrackingItemBulk();

  const handleToggle = (item: PlayTrackingItem, checked: boolean) => {
    if (checked) {
      checkComplete.mutate({
        playId,
        trackingItemId: item.id,
        categoryId,
      });
    } else {
      checkIncomplete.mutate({
        playId,
        trackingItemId: item.id,
        categoryId,
      });
    }
  };

  const handleSelectAll = () => {
    const itemsToCheck = items
      .filter((item) => !item.isCompleted)
      .map((item) => item.id);

    if (itemsToCheck.length > 0) {
      checkBulk.mutate({
        playId,
        trackingItemIds: itemsToCheck,
        categoryId,
      });
    }
  };

  const handleUnselectAll = () => {
    const itemsToUncheck = items
      .filter((item) => item.isCompleted)
      .map((item) => item.id);

    if (itemsToUncheck.length > 0) {
      uncheckBulk.mutate({
        playId,
        trackingItemIds: itemsToUncheck,
        categoryId,
      });
    }
  };

  return (
    <>
      <div className="flex gap-2 px-4">
        <Button variant="secondary" onClick={handleSelectAll}>
          Select All
        </Button>
        <Button variant="secondary" onClick={handleUnselectAll}>
          Unselect All
        </Button>
      </div>

      <ScrollArea>
        <div className="grid gap-4 px-4 sm:grid-cols-2">
          {items.map((item: PlayTrackingItem) => {
            const isCompleted = item.isCompleted || false;

            return (
              <SquareCheckbox
                key={`item-${item.id}`}
                title={item.name}
                id={`item-${item.id}`}
                checked={isCompleted}
                onCheckedChange={(checked) => handleToggle(item, checked)}
              >
                {/* Item content */}
                {item.description && (
                  <p className="text-muted-foreground mt-1 text-xs">
                    {item.description}
                  </p>
                )}

                {/* Completion date */}
                {isCompleted && item.completedAt && (
                  <span className="text-muted-foreground text-xs">
                    {new Date(item.completedAt).toLocaleDateString()}
                  </span>
                )}
              </SquareCheckbox>
            );
          })}
        </div>
      </ScrollArea>
    </>
  );
};
