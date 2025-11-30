import { SquareCheckbox } from "@/components/shared/square-checkbox";
import { useCheckProgressItem, useUncheckProgressItem } from "@/hooks/usePlay";

interface PlayProgressItemsProps {
  items: PlayProgressItem[];
  playId: string;
}

export const PlayProgressItems = ({
  items,
  playId,
}: PlayProgressItemsProps) => {
  const checkComplete = useCheckProgressItem();
  const checkIncomplete = useUncheckProgressItem();

  const handleToggle = (item: PlayProgressItem, checked: boolean) => {
    if (checked) {
      checkComplete.mutate({
        playId,
        progressItemId: item.id,
      });
    } else {
      checkIncomplete.mutate({
        playId,
        progressItemId: item.id,
      });
    }
  };

  return (
    <div className="grid gap-3 sm:grid-cols-2">
      {items.map((item: PlayProgressItem) => {
        const isCompleted = item.userProgress?.completed || false;

        return (
          <SquareCheckbox
            key={`item-${item.id}`}
            title={item.name}
            id={`item-${item.id}`}
            checked={isCompleted}
            onCheckedChange={(checked) => handleToggle(item, checked)}
            disabled={checkComplete.isPending || checkIncomplete.isPending}
          >
            {/* Item content */}
            {item.description && (
              <p className="text-muted-foreground mt-1 text-xs">
                {item.description} at {item.location || "unknown location"}.
              </p>
            )}

            {/* Completion date */}
            {isCompleted && item.userProgress?.completed_at && (
              <span className="text-muted-foreground text-xs">
                {new Date(item.userProgress.completed_at).toLocaleDateString()}
              </span>
            )}
          </SquareCheckbox>
        );
      })}
    </div>
  );
};
