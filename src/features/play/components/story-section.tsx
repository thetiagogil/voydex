"use client";

import { cn } from "@/lib/utils/cn";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";
import { useMemo } from "react";
import type { PlayTrackingCategory } from "../types";
import { StoryCategoryCard } from "./story-category-card";

interface StorySectionProps {
  playId: string;
  trackingCategories?: PlayTrackingCategory[];
}

export const StorySection = ({
  playId,
  trackingCategories,
}: StorySectionProps) => {
  const categories: PlayTrackingCategory[] = trackingCategories || [];

  const totalCategories = categories.length;

  const completedCategories = categories.filter(
    (cat) =>
      (cat.totalItems ?? 0) > 0 &&
      (cat.completedItems ?? 0) >= (cat.totalItems ?? 0),
  ).length;

  // Group categories by version group for DLC separation
  const vgGroups = useMemo(() => {
    const groups: {
      vgId: number;
      vgName: string;
      isDlc: boolean;
      categories: PlayTrackingCategory[];
    }[] = [];
    const map = new Map<number, (typeof groups)[0]>();
    for (const cat of categories) {
      const existing = map.get(cat.versionGroupId);
      if (existing) {
        existing.categories.push(cat);
      } else {
        const group = {
          vgId: cat.versionGroupId,
          vgName: cat.versionGroupName,
          isDlc: cat.isDlc,
          categories: [cat],
        };
        map.set(cat.versionGroupId, group);
        groups.push(group);
      }
    }
    return groups;
  }, [categories]);

  const hasDlc = vgGroups.some((g) => g.isDlc);

  if (categories.length === 0) {
    return null;
  }

  return (
    <Card className="h-full gap-0 p-0">
      <div className="border-border gap-2 border-b p-4">
        <h2 className="text-foreground text-xl font-bold">Story</h2>
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
        {vgGroups.map((group) => (
          <div key={group.vgId} className="flex flex-col gap-4">
            {hasDlc && (
              <div className="flex items-center gap-2">
                <Badge variant={group.isDlc ? "secondary" : "outline"}>
                  {group.isDlc ? group.vgName : "Base Game"}
                </Badge>
              </div>
            )}
            {group.categories.map(
              (category: PlayTrackingCategory, i: number) => (
                <StoryCategoryCard
                  key={i}
                  playId={playId}
                  category={category}
                />
              ),
            )}
          </div>
        ))}
      </div>
    </Card>
  );
};
