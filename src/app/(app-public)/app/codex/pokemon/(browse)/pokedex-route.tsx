"use client";

import { redirect, useSearchParams } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { PokedexPage } from "@/modules/codex/features/pokemon/browse/pokedex-page";

/* Pokémon browse keeps no filters in its address: a query opens it clean. */
export const PokedexRoute = () => {
  if (useSearchParams().size > 0) {
    redirect(appRoutes.codexPokemon);
  }

  return <PokedexPage />;
};
