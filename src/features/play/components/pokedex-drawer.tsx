"use client";

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
import type { PlayPokedexEntry } from "../types";
import { PokedexEntriesList } from "./pokedex-entries-list";

type PokedexDrawerProps = {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  playId: string;
  pokedexName: string;
  pokedexEntries: PlayPokedexEntry[];
  includeMythicalPokemon: boolean;
  isLoading: boolean;
};

export const PokedexDrawer = ({
  open,
  onOpenChange,
  playId,
  pokedexName,
  pokedexEntries,
  includeMythicalPokemon,
  isLoading,
}: PokedexDrawerProps) => {
  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent>
        <SheetHeader>
          <SheetTitle>{pokedexName}</SheetTitle>
          <SheetDescription className="sr-only">
            Track caught and seen Pokémon in {pokedexName}
          </SheetDescription>
        </SheetHeader>

        <div className="flex flex-col gap-4 overflow-hidden">
          {isLoading ? (
            <Loading />
          ) : (
            <PokedexEntriesList
              playId={playId}
              pokedexEntries={pokedexEntries}
              includeMythicalPokemon={includeMythicalPokemon}
            />
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
