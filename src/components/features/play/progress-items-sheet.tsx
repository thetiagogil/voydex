"use client";

import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { usePlayPokemonCaught } from "@/hooks/gameplay/usePlayPokemonCaught";
import { usePlayProgressItems } from "@/hooks/gameplay/usePlayProgressItems";
import { ProgressItemsList } from "./progress-items-list";
import { ProgressItemsPokemonCaughtList } from "./progress-items-pokemon-caught-list";

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
  const isDexCategory =
    category?.type === "dex" && category?.slug.includes("pokedex");

  const { data: items, isLoading: itemsLoading } = usePlayProgressItems(
    playId,
    !isDexCategory ? category?.id : undefined,
  );
  const { data: pokemonCaught, isLoading: pokemonLoading } =
    usePlayPokemonCaught(isDexCategory ? playId : undefined);

  const isLoading = isDexCategory ? pokemonLoading : itemsLoading;

  return (
    <Sheet open={open} onOpenChange={setOpenSheet}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{category?.name}</SheetTitle>
          {category?.description && (
            <SheetDescription>{category.description}</SheetDescription>
          )}
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {isLoading ? (
            <Loading />
          ) : isDexCategory && pokemonCaught && pokemonCaught.length > 0 ? (
            <ProgressItemsPokemonCaughtList
              pokemonCaught={pokemonCaught}
              playId={playId}
            />
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
