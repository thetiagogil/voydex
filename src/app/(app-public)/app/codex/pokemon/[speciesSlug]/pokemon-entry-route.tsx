"use client";

import { useSearchParams } from "next/navigation";

import type { CodexPokemonEntrySlots } from "@/modules/codex/codex-slots";
import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";
import {
  CodexFavouriteButton,
  CodexInYourPlays,
  CodexYourPlaysLink,
} from "@/modules/mainline/public-codex";

/*
 * Mainline's pieces about your Plays on this device: Your Plays (a jump to
 * the end), the heart and In your Plays.
 */
const mainlineSlots: CodexPokemonEntrySlots = {
  favourite: (entry) => (
    <CodexFavouriteButton
      formId={entry.formId}
      name={entry.pokemonName}
      speciesId={entry.speciesId}
    />
  ),
  heroActions: (entry) => (
    <CodexYourPlaysLink speciesSlug={entry.speciesSlug} />
  ),
  inYourPlays: (entry) => (
    <CodexInYourPlays
      formSlug={entry.formSlug}
      speciesSlug={entry.speciesSlug}
    />
  ),
};

/*
 * A Pokémon's entry with Mainline's pieces in its slots, in the game the
 * address names (`?game=`), or where the species opens without one; old
 * `?versionGroup=` and `?generation=` addresses keep their game.
 */
export const PokemonEntryRoute = ({ speciesSlug }: { speciesSlug: string }) => {
  const query = useSearchParams();

  return (
    <PokemonDetailPage
      form={query.get("form") ?? undefined}
      legacyScope={{
        generation: query.get("generation") ?? undefined,
        versionGroup: query.get("versionGroup") ?? undefined,
      }}
      slots={mainlineSlots}
      speciesSlug={speciesSlug}
      versionGroupSlug={query.get("game") ?? undefined}
    />
  );
};
