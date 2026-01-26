"use client";

import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import { Trophy } from "lucide-react";
import { useState } from "react";
import { PlayProgressSheet } from "./play-progress-sheet";

interface PlayProgressCategoriesProps {
  playId: string;
  progressCategories?: any[];
}

export const PlayProgressCategories = ({
  playId,
  progressCategories,
}: PlayProgressCategoriesProps) => {
  const categories: PlayProgressCategory[] = progressCategories || [];
  const [openSheet, setOpenSheet] = useState<boolean>(false);
  const [selectedCategory, setSelectedCategory] =
    useState<PlayProgressCategory | null>(null);

  const handleCategoryClick = (category: PlayProgressCategory) => {
    setSelectedCategory(category);
    setOpenSheet(true);
  };

  return (
    <Card>
      <CardHeader>
        <CardTitle>Progress Tracking</CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        {categories.map((category: PlayProgressCategory) => {
          return (
            <Card
              key={category.id}
              onClick={() => handleCategoryClick(category)}
            >
              <CardContent>
                <div className="flex items-start gap-4">
                  <div className="mt-1">
                    <Trophy className="text-muted-foreground h-5 w-5" />
                  </div>
                  <div className="flex-1 space-y-2">
                    <div className="flex items-start justify-between">
                      <div>
                        <h3 className="font-semibold">{category.name}</h3>
                        {category.description && (
                          <p className="text-muted-foreground mt-1 text-sm">
                            {category.description}
                          </p>
                        )}
                      </div>
                      <Badge variant="outline-primary">
                        {category.completedItems}/{category.totalItems}
                      </Badge>
                    </div>
                    <div className="flex items-center gap-2">
                      <Progress
                        value={
                          category.totalItems > 0
                            ? (category.completedItems / category.totalItems) *
                              100
                            : 0
                        }
                        className="flex-1"
                      />
                      <span className="text-muted-foreground text-xs">
                        {category.totalItems > 0
                          ? (
                              (category.completedItems / category.totalItems) *
                              100
                            ).toFixed(1)
                          : 0}
                        %
                      </span>
                    </div>
                  </div>
                </div>
              </CardContent>
            </Card>
          );
        })}
      </CardContent>

      {selectedCategory && (
        <PlayProgressSheet
          open={openSheet}
          setOpenSheet={setOpenSheet}
          playId={playId}
          category={selectedCategory}
        />
      )}
    </Card>
  );
};
