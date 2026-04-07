"use client";

import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { usePlayTrackingItems } from "@/hooks/gameplay/usePlayTrackingItems";
import type { PlayTrackingCategory } from "@/types/tracking";
import { StoryItemsList } from "./story-items-list";

interface StoryDrawerProps {
  open: boolean;
  setOpenSheet: (open: boolean) => void;
  playId: string;
  category: PlayTrackingCategory;
}

export const StoryDrawer = ({
  open,
  setOpenSheet,
  playId,
  category,
}: StoryDrawerProps) => {
  const { data: items, isLoading } = usePlayTrackingItems(playId, category?.id);

  return (
    <Sheet open={open} onOpenChange={setOpenSheet}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{category?.name}</SheetTitle>
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {isLoading ? (
            <Loading />
          ) : items && items.length > 0 ? (
            <StoryItemsList
              items={items}
              playId={playId}
              categoryId={category.id}
            />
          ) : (
            <div className="flex flex-col">
              <p className="text-muted-foreground text-sm">
                No items found for this category
              </p>
            </div>
          )}
        </div>

        <SheetFooter>
          <SheetClose asChild>
            <Button variant="secondary">Close</Button>
          </SheetClose>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
};
