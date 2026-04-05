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
import { usePlayDex } from "@/hooks/gameplay/usePlayDex";
import { usePlayProgressItems } from "@/hooks/gameplay/usePlayProgressItems";
import type { PlayProgressCategory } from "@/types/progress";
import { ProgressItemsDexList } from "./progress-items-dex-list";
import { ProgressItemsList } from "./progress-items-list";

interface ProgressItemsSheetProps {
  open: boolean;
  setOpenSheet: (open: boolean) => void;
  playId: string;
  category: PlayProgressCategory;
}

export const ProgressItemsSheet = ({
  open,
  setOpenSheet,
  playId,
  category,
}: ProgressItemsSheetProps) => {
  const isDexCategory = category?.slug?.includes("pokedex");

  const { data: items, isLoading: itemsLoading } = usePlayProgressItems(
    playId,
    !isDexCategory ? category?.id : undefined,
  );
  const { data: dexEntries, isLoading: dexLoading } = usePlayDex(
    isDexCategory ? playId : undefined,
  );

  const isLoading = isDexCategory ? dexLoading : itemsLoading;

  return (
    <Sheet open={open} onOpenChange={setOpenSheet}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{category?.name}</SheetTitle>
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {isLoading ? (
            <Loading />
          ) : isDexCategory && dexEntries && dexEntries.length > 0 ? (
            <ProgressItemsDexList dexEntries={dexEntries} playId={playId} />
          ) : items && items.length > 0 ? (
            <ProgressItemsList
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
