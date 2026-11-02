import type { TrainerPokemonEntry } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import {
  findSpeciesGeneration,
  type SpeciesGeneration,
} from "@/modules/reference/features/pokemon/data/species-generations";

/* One page of the Pokémon album: a generation, and the species shown from it. */
export type CollectionAlbumPage = {
  entries: TrainerPokemonEntry[];
  key: string;
  /* "Generation I". */
  label: string;
  /* "12 of 151 joined your teams": the whole album, whatever is filtered. */
  summary: string;
};

const OTHER_KEY = "other";

const getPageKey = (
  generations: SpeciesGeneration[],
  entry: TrainerPokemonEntry,
) =>
  findSpeciesGeneration(generations, entry.nationalNumber)?.id.toString() ??
  OTHER_KEY;

/*
 * The album's pages, one per generation in order, each with the entries
 * shown from it in the order they arrive (already filtered and sorted). The
 * count line reads the whole Collection, so a search never changes it. With
 * no filters every page shows, empty ones too (an album has empty pages);
 * filtered, only the pages with a match. Species outside every generation
 * go on a last page, only when there are any.
 */
export const buildCollectionAlbumPages = ({
  entries,
  filtered,
  generations,
  shown,
}: {
  /* Every species in the Collection. */
  entries: TrainerPokemonEntry[];
  filtered: boolean;
  generations: SpeciesGeneration[];
  /* The species to show, filtered and sorted. */
  shown: TrainerPokemonEntry[];
}): CollectionAlbumPage[] => {
  const shownByKey = new Map<string, TrainerPokemonEntry[]>();
  const joinedByKey = new Map<string, number>();

  for (const entry of shown) {
    const key = getPageKey(generations, entry);

    shownByKey.set(key, [...(shownByKey.get(key) ?? []), entry]);
  }

  for (const entry of entries) {
    const key = getPageKey(generations, entry);

    joinedByKey.set(key, (joinedByKey.get(key) ?? 0) + 1);
  }

  const pages = generations.map((generation) => {
    const key = generation.id.toString();

    return {
      entries: shownByKey.get(key) ?? [],
      key,
      label: generation.name,
      summary: `${joinedByKey.get(key) ?? 0} of ${generation.speciesCount} joined your teams`,
    };
  });
  const other = shownByKey.get(OTHER_KEY);

  if (other?.length) {
    pages.push({
      entries: other,
      key: OTHER_KEY,
      label: "Other",
      summary: `${joinedByKey.get(OTHER_KEY) ?? 0} joined your teams`,
    });
  }

  return filtered ? pages.filter((page) => page.entries.length) : pages;
};
