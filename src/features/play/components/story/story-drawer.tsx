"use client";

import { usePlayTrackingItems } from "@/features/play/hooks/usePlayTrackingItems";
import { Loading } from "@/shared/components/loading";
import type { PlayTrackingCategory } from "../../types";
import { PlaySheet } from "../shared/play-sheet";
import { StoryItemsList } from "./story-items-list";

type StoryDrawerProps = {
  open: boolean;
  setOpenSheet: (open: boolean) => void;
  playId: string;
  category: PlayTrackingCategory;
};

export const StoryDrawer = ({
  open,
  setOpenSheet,
  playId,
  category,
}: StoryDrawerProps) => {
  const { data: items, isLoading } = usePlayTrackingItems(
    playId,
    category?.id,
    category?.versionGroupId,
  );

  return (
    <PlaySheet
      open={open}
      onOpenChange={setOpenSheet}
      title={category?.name}
      description={`Track story progress in ${category?.name}`}
    >
      {isLoading ? (
        <Loading label="Loading story items..." className="h-full" />
      ) : items && items.length > 0 ? (
        <StoryItemsList
          items={items}
          playId={playId}
          categoryId={category.id}
        />
      ) : (
        <div className="flex h-full items-center justify-center px-6 py-12">
          <p className="text-muted-foreground text-sm">
            No items found for this category.
          </p>
        </div>
      )}
    </PlaySheet>
  );
};
