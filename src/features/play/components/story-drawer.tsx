"use client";

import { usePlayTrackingItems } from "@/features/play/hooks/usePlayTrackingItems";
import { Loading } from "@/shared/components/loading";
import { Button } from "@/shared/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/shared/components/ui/sheet";
import type { PlayTrackingCategory } from "../types";
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
    <Sheet open={open} onOpenChange={setOpenSheet}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{category?.name}</SheetTitle>
          <SheetDescription className="sr-only">
            Track story progress in {category?.name}
          </SheetDescription>
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
