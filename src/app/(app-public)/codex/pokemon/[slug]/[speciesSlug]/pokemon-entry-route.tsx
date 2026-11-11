"use client";

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

type PokemonEntryRouteProps = {
  form?: string;
  speciesSlug: string;
  versionGroupSlug: string;
};

/* A Pokémon's entry with Mainline's pieces in its slots. */
export const PokemonEntryRoute = (props: PokemonEntryRouteProps) => (
  <PokemonDetailPage {...props} slots={mainlineSlots} />
);
