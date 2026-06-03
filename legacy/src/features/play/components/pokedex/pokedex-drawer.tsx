"use client";

import { Loading } from "@/shared/components/loading";
import type { PlayPokedexEntry } from "../../types";
import { PlaySheet } from "../shared/play-sheet";
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
    <PlaySheet
      open={open}
      onOpenChange={onOpenChange}
      title={pokedexName}
      description={`Track seen and caught Pokemon in ${pokedexName}`}
    >
      {isLoading ? (
        <Loading label="Loading Pokedex entries..." className="h-full" />
      ) : (
        <PokedexEntriesList
          key={pokedexName}
          playId={playId}
          pokedexEntries={pokedexEntries}
          includeMythicalPokemon={includeMythicalPokemon}
        />
      )}
    </PlaySheet>
  );
};
