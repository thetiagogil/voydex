"use client";

import { Icon } from "@/components/shared/icon";
import { Card } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import type { PlayTrackingCategory } from "@/types/tracking";
import { useState } from "react";
import { StoryDrawer } from "./story-drawer";

interface StoryCategoryCardProps {
  playId: string;
  category: PlayTrackingCategory;
}

export const StoryCategoryCard = ({
  playId,
  category,
}: StoryCategoryCardProps) => {
  const [openSheet, setOpenSheet] = useState<boolean>(false);
  const [selectedCategory, setSelectedCategory] =
    useState<PlayTrackingCategory | null>(null);

  const handleCategoryClick = (category: PlayTrackingCategory) => {
    setSelectedCategory(category);
    setOpenSheet(true);
  };

  const categoryPercentage =
    category.totalItems > 0
      ? Math.floor((category.completedItems / category.totalItems) * 100)
      : 0;
  const isComplete = categoryPercentage === 100;

  return (
    <>
      <Card
        key={category.id}
        onClick={() => handleCategoryClick(category)}
        className={cn(
          "group flex flex-row items-center",
          isComplete && "border-green-800 hover:border-green-600",
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

      {selectedCategory && (
        <StoryDrawer
          open={openSheet}
          setOpenSheet={setOpenSheet}
          playId={playId}
          category={selectedCategory}
        />
      )}
    </>
  );
};
