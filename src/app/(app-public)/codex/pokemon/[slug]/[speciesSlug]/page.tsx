import type { CodexPokemonEntrySlots } from "@/modules/codex/codex-slots";
import { PokemonDetailPage } from "@/modules/codex/features/pokemon/detail/pokemon-detail-page";
import {
  CodexFavouriteButton,
  CodexInYourPlays,
  CodexYourPlaysLink,
} from "@/modules/mainline/public-codex";
import { getNewPlayDialogData } from "@/modules/mainline/features/plays/new/server/new-play-dialog-query";
import type { NewPlayDialogData } from "@/modules/mainline/features/plays/new/types";

type PageProps = {
  params: Promise<{
    /* A version group's slug; a game's slug redirects to its group. */
    slug: string;
    speciesSlug: string;
  }>;
  searchParams: Promise<{
    form?: string | string[];
  }>;
};

/*
 * Mainline's pieces about your Plays on this device: Your Plays (a jump to
 * the end), the heart and In your Plays.
 */
const getMainlineSlots = (
  newPlay: NewPlayDialogData,
): CodexPokemonEntrySlots => ({
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
      newPlay={newPlay}
      speciesSlug={entry.speciesSlug}
    />
  ),
});

export default async function Page({ params, searchParams }: PageProps) {
  const [{ slug, speciesSlug }, { form }, newPlay] = await Promise.all([
    params,
    searchParams,
    getNewPlayDialogData(),
  ]);

  return (
    <PokemonDetailPage
      form={Array.isArray(form) ? form[0] : form}
      slots={getMainlineSlots(newPlay)}
      speciesSlug={speciesSlug}
      versionGroupSlug={slug}
    />
  );
}
