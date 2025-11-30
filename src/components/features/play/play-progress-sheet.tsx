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
import { usePlayPokemonCaught, usePlayProgressItems } from "@/hooks/usePlay";
import { PlayProgressItems } from "./play-progress-items";
import { PlayProgressPokemonCaught } from "./play-progress-pokemon-caught";

interface PlayProgressItemsProps {
  open: boolean;
  setOpenSheet: (open: boolean) => void;
  playId: string;
  category: PlayProgressCategory;
}

export const PlayProgressSheet = ({
  open,
  setOpenSheet,
  playId,
  category,
}: PlayProgressItemsProps) => {
  const isDexCategory = category?.slug.includes("pokedex");

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

        <div className="flex flex-col gap-4 overflow-y-auto px-4">
          {isLoading ? (
            <Loading />
          ) : isDexCategory && pokemonCaught && pokemonCaught.length > 0 ? (
            <PlayProgressPokemonCaught
              pokemonCaught={pokemonCaught}
              playId={playId}
            />
          ) : items && items.length > 0 ? (
            <PlayProgressItems items={items} playId={playId} />
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
            <Button variant="outline-secondary">Close</Button>
          </SheetClose>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
};
