"use client";

import { Card } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import type { PlayTrackingCategory } from "@/types/tracking";
import { ProgressCategoriesCard } from "./tracking-categories-card";

interface ProgressCategoriesSectionProps {
  playId: string;
  progressCategories?: PlayTrackingCategory[];
}

export const ProgressCategoriesSection = ({
  playId,
  progressCategories,
}: ProgressCategoriesSectionProps) => {
  const categories: PlayTrackingCategory[] = progressCategories || [];

  const totalCategories = categories.length;

  const completedCategories = categories.filter(
    (cat) =>
      (cat.totalItems ?? 0) > 0 &&
      (cat.completedItems ?? 0) >= (cat.totalItems ?? 0),
  ).length;

  if (categories.length === 0) {
    return null;
  }

  return (
    <Card className="h-full gap-0 p-0">
      <div className="border-border gap-2 border-b p-4">
        <h2 className="text-foreground text-xl font-bold">Progress</h2>
        <p
          className={cn(
            "text-muted-foreground text-xs",
            completedCategories === totalCategories ? "text-green-600" : "",
          )}
        >
          {completedCategories}/{totalCategories} completed
        </p>
      </div>

      <div className="flex flex-col gap-4 p-4">
        {categories.map((category: PlayTrackingCategory, i: number) => {
          return (
            <ProgressCategoriesCard
              key={i}
              playId={playId}
              category={category}
            />
          );
        })}
      </div>
    </Card>
  );
};
