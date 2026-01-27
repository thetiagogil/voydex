import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { Button } from "@/components/ui/button";
import {
  useCheckPlayProgressItem,
  useCheckPlayProgressItemBulk,
} from "@/hooks/gameplay/usePlayProgressItemCheck";
import {
  useUncheckPlayProgressItem,
  useUncheckPlayProgressItemBulk,
} from "@/hooks/gameplay/usePlayProgressItemUncheck";

interface ProgressItemsListProps {
  items: PlayProgressItem[];
  playId: string;
  categoryId: number;
}

export const ProgressItemsList = ({
  items,
  playId,
  categoryId,
}: ProgressItemsListProps) => {
  const checkComplete = useCheckPlayProgressItem();
  const checkIncomplete = useUncheckPlayProgressItem();
  const checkBulk = useCheckPlayProgressItemBulk();
  const uncheckBulk = useUncheckPlayProgressItemBulk();

  const handleToggle = (item: PlayProgressItem, checked: boolean) => {
    if (checked) {
      checkComplete.mutate({
        playId,
        progressItemId: item.id,
        categoryId,
      });
    } else {
      checkIncomplete.mutate({
        playId,
        progressItemId: item.id,
        categoryId,
      });
    }
  };

  const handleSelectAll = () => {
    const itemsToCheck = items
      .filter((item) => !item.completed)
      .map((item) => item.id);

    if (itemsToCheck.length > 0) {
      checkBulk.mutate({
        playId,
        progressItemIds: itemsToCheck,
        categoryId,
      });
    }
  };

  const handleUnselectAll = () => {
    const itemsToUncheck = items
      .filter((item) => item.completed)
      .map((item) => item.id);

    if (itemsToUncheck.length > 0) {
      uncheckBulk.mutate({
        playId,
        progressItemIds: itemsToUncheck,
        categoryId,
      });
    }
  };

  return (
    <>
      <div className="flex justify-end gap-2">
        <Button variant="outline-secondary" onClick={handleSelectAll}>
          Select All
        </Button>
        <Button variant="outline-secondary" onClick={handleUnselectAll}>
          Unselect All
        </Button>
      </div>

      <div className="grid gap-3 sm:grid-cols-2">
        {items.map((item: PlayProgressItem) => {
          const isCompleted = item.completed || false;

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
                  {item.description} at {item.location || "unknown location"}.
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
    </>
  );
};
