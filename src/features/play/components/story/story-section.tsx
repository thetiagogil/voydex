"use client";

import { cn } from "@/lib/utils/cn";
import { Card } from "@/shared/components/ui/card";
import type { PlayTrackingCategory } from "../../types";
import { StoryCategoryCard } from "./story-category-card";

type StorySectionProps = {
  playId: string;
  trackingCategories?: PlayTrackingCategory[];
};

export const StorySection = ({
  playId,
  trackingCategories,
}: StorySectionProps) => {
  const categories: PlayTrackingCategory[] = trackingCategories ?? [];

  const totalCategories = categories.length;

  const completedCategories = categories.filter(
    (cat) =>
      (cat.totalItems ?? 0) > 0 &&
      (cat.completedItems ?? 0) >= (cat.totalItems ?? 0),
  ).length;

  // Group categories by version group for DLC separation
  const vgGroups: {
    vgId: number;
    vgName: string;
    isDlc: boolean;
    categories: PlayTrackingCategory[];
  }[] = [];
  const groupMap = new Map<number, (typeof vgGroups)[0]>();

  for (const category of categories) {
    const existing = groupMap.get(category.versionGroupId);

    if (existing) {
      existing.categories.push(category);
      continue;
    }

    const group = {
      vgId: category.versionGroupId,
      vgName: category.versionGroupName,
      isDlc: category.isDlc,
      categories: [category],
    };

    groupMap.set(category.versionGroupId, group);
    vgGroups.push(group);
  }

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
            completedCategories === totalCategories ? "text-success" : "",
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
                <p className="text-muted-foreground text-xs">
                  {group.isDlc ? group.vgName : "Base Game"}
                </p>
              </div>
            )}
            {group.categories.map((category: PlayTrackingCategory) => (
              <StoryCategoryCard
                key={category.id}
                playId={playId}
                category={category}
              />
            ))}
          </div>
        ))}
      </div>
    </Card>
  );
};
