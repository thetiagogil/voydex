"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

import { PokemonDetailSpeciesSelectorDesktop } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-desktop";
import { PokemonDetailSpeciesSelectorMobile } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector-mobile";
import { usePokemonDetailSpeciesMenu } from "@/modules/codex/features/pokemon/detail/hooks/use-pokemon-detail-species-menu";
import { getPokemonHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-species-menu";
import type { PokemonDetailMenuPokemon } from "@/modules/codex/shared/types";

type PokemonDetailSpeciesSelectorProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
};

export const PokemonDetailSpeciesSelector = ({
  activeGameSlug,
  activePokemon,
}: PokemonDetailSpeciesSelectorProps) => {
  const router = useRouter();
  const [mobileSheetOpen, setMobileSheetOpen] = useState(false);
  const {
    activePokemonItem,
    groupHeaderBySlug,
    handleListScroll,
    handlePokemonHighlighted,
    inputValue,
    loadInitialPokemonItems,
    loadingMore,
    loadState,
    pokemonItems,
    updateInputValue,
  } = usePokemonDetailSpeciesMenu({
    activeGameSlug,
    activePokemonSlug: activePokemon.slug,
  });

  const openMobileSheet = (open: boolean) => {
    setMobileSheetOpen(open);

    if (open) {
      loadInitialPokemonItems();
    }
  };

  const navigateToPokemon = (pokemonItem: PokemonDetailMenuPokemon | null) => {
    if (!pokemonItem || pokemonItem.slug === activePokemon.slug) {
      return;
    }

    router.push(getPokemonHref(activeGameSlug, pokemonItem));
  };

  return (
    <>
      <PokemonDetailSpeciesSelectorDesktop
        activeGameSlug={activeGameSlug}
        activePokemon={activePokemon}
        activePokemonItem={activePokemonItem}
        groupHeaderBySlug={groupHeaderBySlug}
        handleListScroll={handleListScroll}
        handlePokemonHighlighted={handlePokemonHighlighted}
        inputValue={inputValue}
        loadInitialPokemonItems={loadInitialPokemonItems}
        loadingMore={loadingMore}
        loadState={loadState}
        navigateToPokemon={navigateToPokemon}
        pokemonItems={pokemonItems}
        updateInputValue={updateInputValue}
      />

      <PokemonDetailSpeciesSelectorMobile
        activeGameSlug={activeGameSlug}
        activePokemon={activePokemon}
        groupHeaderBySlug={groupHeaderBySlug}
        handleListScroll={handleListScroll}
        inputValue={inputValue}
        loadInitialPokemonItems={loadInitialPokemonItems}
        loadingMore={loadingMore}
        loadState={loadState}
        navigateToPokemon={navigateToPokemon}
        onOpenChange={openMobileSheet}
        open={mobileSheetOpen}
        pokemonItems={pokemonItems}
        updateInputValue={updateInputValue}
      />
    </>
  );
};
