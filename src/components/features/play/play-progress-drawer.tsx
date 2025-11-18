"use client";

import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import {
  Drawer,
  DrawerClose,
  DrawerContent,
  DrawerDescription,
  DrawerFooter,
  DrawerHeader,
  DrawerTitle,
} from "@/components/ui/drawer";
import { usePlayPokemonCaught, usePlayProgressItems } from "@/hooks/usePlay";
import { PlayProgressItems } from "./play-progress-items";
import { PlayProgressPokemonCaught } from "./play-progress-pokemon-caught";

interface PlayProgressItemsProps {
  playId: string;
  category: PlayProgressCategory;
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

export const PlayProgressDrawer = ({
  playId,
  category,
  open,
  onOpenChange,
}: PlayProgressItemsProps) => {
  const isDexCategory = category?.slug.includes("pokedex");

  // Fetch either progress items or pokemon caught depending on category type
  const { data: items, isLoading: itemsLoading } = usePlayProgressItems(
    playId,
    !isDexCategory ? category?.id : undefined,
  );
  const { data: pokemonCaught, isLoading: pokemonLoading } =
    usePlayPokemonCaught(isDexCategory ? playId : undefined);

  const isLoading = isDexCategory ? pokemonLoading : itemsLoading;

  return (
    <Drawer open={open} onOpenChange={onOpenChange}>
      <DrawerContent>
        <DrawerHeader>
          <DrawerTitle>{category?.name}</DrawerTitle>
          {category?.description && (
            <DrawerDescription>{category.description}</DrawerDescription>
          )}
        </DrawerHeader>

        <div className="overflow-y-auto px-4">
          {isLoading ? (
            <Loading />
          ) : isDexCategory && pokemonCaught && pokemonCaught.length > 0 ? (
            <PlayProgressPokemonCaught pokemonCaught={pokemonCaught} />
          ) : items && items.length > 0 ? (
            <PlayProgressItems items={items} />
          ) : (
            <div className="flex flex-col">
              <p className="text-muted-foreground text-sm">
                No items found for this category
              </p>
            </div>
          )}
        </div>

        <DrawerFooter>
          <DrawerClose asChild>
            <Button variant="outline">Close</Button>
          </DrawerClose>
        </DrawerFooter>
      </DrawerContent>
    </Drawer>
  );
};
