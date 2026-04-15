"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Card } from "@/shared/components/ui/card";

type CollectibleCardProps = {
  name: string;
  collectedCount: number;
  totalEntries: number;
  onClick: () => void;
};

export const CollectibleCard = ({
  name,
  collectedCount,
  totalEntries,
  onClick,
}: CollectibleCardProps) => {
  const percentage =
    totalEntries > 0 ? Math.floor((collectedCount / totalEntries) * 100) : 0;
  const isDone = percentage === 100;

  return (
    <Card
      onClick={onClick}
      className={cn(
        "group flex flex-row items-center",
        isDone && "border-green-800 hover:border-green-600",
      )}
    >
      {isDone ? (
        <Icon type="completed" size={20} className="text-green-600" />
      ) : (
        <Icon type="circle" size={20} />
      )}

      <div className="min-w-0 flex-1">
        <h3 className="text-foreground truncate text-sm font-semibold">
          {name}
        </h3>
        <p className="text-muted-foreground text-xs">
          {collectedCount}/{totalEntries}
        </p>
      </div>

      <div className="flex shrink-0 items-center gap-2">
        <span
          className={cn(
            "text-sm font-medium",
            isDone ? "text-green-600" : "text-muted-foreground",
          )}
        >
          {percentage}%
        </span>
        <Icon
          type="rightArrow"
          className={cn(
            "text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors",
            isDone && "group-hover:text-green-600",
          )}
        />
      </div>
    </Card>
  );
};
