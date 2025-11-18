"use client";

import { PlayProgressDrawer } from "@/components/features/play/play-progress-drawer";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import { Trophy } from "lucide-react";
import { useState } from "react";

interface PlayProgressCategoriesProps {
  playId: string;
  progressCategories?: any[];
}

export const PlayProgressCategories = ({
  playId,
  progressCategories,
}: PlayProgressCategoriesProps) => {
  const categories: PlayProgressCategory[] = progressCategories || [];
  const [selectedCategory, setSelectedCategory] =
    useState<PlayProgressCategory | null>(null);
  const [drawerOpen, setDrawerOpen] = useState(false);

  const handleCategoryClick = (category: PlayProgressCategory) => {
    setSelectedCategory(category);
    setDrawerOpen(true);
  };

  return (
    <>
      <Card>
        <CardHeader>
          <CardTitle>Progress Tracking</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="space-y-4">
            {categories.map((category: PlayProgressCategory) => {
              return (
                <Card
                  key={category.id}
                  className="hover:bg-muted/50 cursor-pointer transition-colors"
                  onClick={() => handleCategoryClick(category)}
                >
                  <CardContent className="pt-4">
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
                          <Badge variant="outline">
                            {category.items_completed}/{category.items_total}
                          </Badge>
                        </div>
                        <div className="flex items-center gap-2">
                          <Progress
                            value={category.percentage_completed || 0}
                            className="flex-1"
                          />
                          <span className="text-muted-foreground text-xs">
                            {category.percentage_completed?.toFixed(1) || 0}%
                          </span>
                        </div>
                      </div>
                    </div>
                  </CardContent>
                </Card>
              );
            })}
          </div>
        </CardContent>
      </Card>

      {selectedCategory && (
        <PlayProgressDrawer
          playId={playId}
          category={selectedCategory}
          open={drawerOpen}
          onOpenChange={setDrawerOpen}
        />
      )}
    </>
  );
};
