import { SquareCheckbox } from "@/components/shared/square-checkbox";

export const PlayProgressItems = ({ items }: { items: PlayProgressItem[] }) => {
  return (
    <div className="grid gap-3 pb-4 sm:grid-cols-2">
      {items.map((item: PlayProgressItem) => {
        const isCompleted = item.userProgress?.completed || false;

        return (
          <SquareCheckbox
            key={`item-${item.id}`}
            title={item.name}
            id={`item-${item.id}`}
            checked={isCompleted}
          >
            {/* Item content */}
            {item.description && (
              <p className="text-muted-foreground mt-1 text-xs">
                {item.description} at {item.location || "unknown location"}
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
