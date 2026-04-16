"use client";

import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { Card } from "@/shared/components/ui/card";
import { CARD_HOVER_EFFECT } from "@/shared/constants/styles";
import { useState } from "react";
import type { PlayTrackingCategory } from "../../types";
import { StoryDrawer } from "./story-drawer";

type StoryCategoryCardProps = {
  playId: string;
  category: PlayTrackingCategory;
};

export const StoryCategoryCard = ({
  playId,
  category,
}: StoryCategoryCardProps) => {
  const [openSheet, setOpenSheet] = useState<boolean>(false);

  const categoryPercentage =
    category.totalItems > 0
      ? Math.floor((category.completedItems / category.totalItems) * 100)
      : 0;
  const isComplete = categoryPercentage === 100;

  return (
    <>
      <Card
        key={category.id}
        onClick={() => setOpenSheet(true)}
        className={cn(
          "group flex flex-row items-center",
          isComplete && "border-green-800 hover:border-green-600",
          CARD_HOVER_EFFECT,
        )}
      >
        {isComplete ? (
          <Icon type="completed" size={20} className="text-green-600" />
        ) : (
          <Icon type="circle" size={20} />
        )}

        <div className="min-w-0 flex-1">
          <h3 className="text-foreground truncate text-sm font-semibold">
            {category.name}
          </h3>
          <p className="text-muted-foreground text-xs">
            {category.completedItems}/{category.totalItems}
          </p>
        </div>

        <div className="flex shrink-0 items-center gap-2">
          <span
            className={cn(
              "text-sm font-medium",
              isComplete ? "text-green-600" : "text-muted-foreground",
            )}
          >
            {categoryPercentage}%
          </span>
          <Icon
            type="rightArrow"
            className={cn(
              "text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors",
              isComplete && "group-hover:text-green-600",
            )}
          />
        </div>
      </Card>

      {openSheet && (
        <StoryDrawer
          open={openSheet}
          setOpenSheet={setOpenSheet}
          playId={playId}
          category={category}
        />
      )}
    </>
  );
};
