"use client";

import { Progress } from "@/components/ui/progress";
import { cn } from "@/lib/utils/cn";
import { CheckCircle2, ChevronRight, Circle, Target } from "lucide-react";
import { useState } from "react";
import { ProgressItemsSheet } from "./progress-items-sheet";

interface ProgressCategoriesCardProps {
  playId: string;
  genId: string;
  gameSlug: string;
  progressCategories?: PlayProgressCategory[];
}

export const ProgressCategoriesCard = ({
  playId,
  genId,
  gameSlug,
  progressCategories,
}: ProgressCategoriesCardProps) => {
  const categories: PlayProgressCategory[] = progressCategories || [];
  const [openSheet, setOpenSheet] = useState<boolean>(false);
  const [selectedCategory, setSelectedCategory] =
    useState<PlayProgressCategory | null>(null);

  // Calculate overall stats
  const totalItems = categories.reduce((acc, c) => acc + c.totalItems, 0);
  const completedItems = categories.reduce(
    (acc, c) => acc + c.completedItems,
    0,
  );
  const overallPercentage =
    totalItems > 0 ? Math.round((completedItems / totalItems) * 100) : 0;

  const handleCategoryClick = (category: PlayProgressCategory) => {
    setSelectedCategory(category);
    setOpenSheet(true);
  };

  if (categories.length === 0) {
    return (
      <section className="rounded-xl border">
        <div className="flex items-center gap-3 border-b p-4">
          <div className="bg-accent/10 flex h-10 w-10 items-center justify-center rounded-lg">
            <Target className="text-accent h-5 w-5" />
          </div>
          <div>
            <h2 className="text-foreground text-xl font-bold">Progress</h2>
            <p className="text-muted-foreground text-xs">No tracking data</p>
          </div>
        </div>
        <div className="py-8 text-center">
          <div className="bg-muted mx-auto mb-3 flex h-14 w-14 items-center justify-center rounded-2xl">
            <Target className="text-muted-foreground h-7 w-7" />
          </div>
          <p className="text-muted-foreground text-sm">
            Progress tracking will be available once game data is added.
          </p>
        </div>
      </section>
    );
  }

  return (
    <section className="rounded-xl border">
      {/* Header */}
      <div className="flex items-center justify-between border-b p-4">
        <div className="flex items-center gap-3">
          <div className="bg-accent/10 flex h-10 w-10 items-center justify-center rounded-lg">
            <Target className="text-accent h-5 w-5" />
          </div>
          <div>
            <h2 className="text-foreground text-xl font-bold">Progress</h2>
            <p className="text-muted-foreground text-xs">
              {completedItems}/{totalItems} completed
            </p>
          </div>
        </div>
        <span className="text-primary text-2xl font-bold">
          {overallPercentage}%
        </span>
      </div>

      {/* Overall Progress Bar */}
      <div className="px-4 pt-4">
        <Progress value={overallPercentage} className="h-2" />
      </div>

      {/* Categories Grid */}
      <div className="grid gap-3 p-4 sm:grid-cols-2 lg:grid-cols-3">
        {categories.map((category: PlayProgressCategory) => {
          const categoryPercentage =
            category.totalItems > 0
              ? Math.round(
                  (category.completedItems / category.totalItems) * 100,
                )
              : 0;
          const isComplete = categoryPercentage === 100;

          return (
            <button
              key={category.id}
              onClick={() => handleCategoryClick(category)}
              className={cn(
                "group flex items-center gap-3 rounded-lg border p-4 text-left transition-colors",
                "hover:border-primary hover:bg-accent/5",
                isComplete && "border-success/30 bg-success/5",
              )}
            >
              {isComplete ? (
                <CheckCircle2 className="text-success h-5 w-5 shrink-0" />
              ) : (
                <Circle className="text-muted-foreground h-5 w-5 shrink-0" />
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
                    isComplete ? "text-success" : "text-muted-foreground",
                  )}
                >
                  {categoryPercentage}%
                </span>
                <ChevronRight className="text-muted-foreground group-hover:text-primary h-4 w-4 transition-colors" />
              </div>
            </button>
          );
        })}
      </div>

      {selectedCategory && (
        <ProgressItemsSheet
          open={openSheet}
          setOpenSheet={setOpenSheet}
          playId={playId}
          category={selectedCategory}
          genId={genId}
          gameSlug={gameSlug}
        />
      )}
    </section>
  );
};
