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
import { usePlayPokedex } from "@/hooks/gameplay/usePlayPokedex";
import { usePlayTrackingItems } from "@/hooks/gameplay/usePlayTrackingItems";
import type { PlayTrackingCategory } from "@/types/tracking";
import { TrackingItemsDexList } from "./tracking-items-pokedex-list";
import { TrackingItemsList } from "./tracking-items-list";

interface TrackingItemsSheetProps {
  open: boolean;
  setOpenSheet: (open: boolean) => void;
  playId: string;
  category: PlayTrackingCategory;
}

export const TrackingItemsSheet = ({
  open,
  setOpenSheet,
  playId,
  category,
}: TrackingItemsSheetProps) => {
  const isDexCategory = category?.slug?.includes("pokedex");

  const { data: items, isLoading: itemsLoading } = usePlayTrackingItems(
    playId,
    !isDexCategory ? category?.id : undefined,
  );
  const { data: pokedexEntries, isLoading: dexLoading } = usePlayPokedex(
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
          ) : isDexCategory && pokedexEntries && pokedexEntries.length > 0 ? (
            <TrackingItemsDexList pokedexEntries={pokedexEntries} playId={playId} />
          ) : items && items.length > 0 ? (
            <TrackingItemsList
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
