import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { buildGamePokedexData } from "@/modules/codex/features/games/pokedex/data/game-pokedex-mappers";
import {
  selectGamePokedexAbilityIds,
  selectGamePokedexFormIds,
  selectGamePokedexSpeciesIds,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-selectors";
import {
  loadGamePokedexAbilities,
  loadGamePokedexAttributes,
  loadGamePokedexBaseRows,
  loadGamePokedexEntries,
  loadGamePokedexForms,
  loadGamePokedexSpecies,
} from "@/modules/codex/features/games/pokedex/server/game-pokedex-loaders";
import type { GamePokedexData } from "@/modules/reference/types";

export const getGamePokedexData = async (
  gameSlug: string,
  pokedexSlug: string,
): Promise<GamePokedexData | null> => {
  const supabase = await createServerSupabaseClient();
  const baseRows = await loadGamePokedexBaseRows(supabase, gameSlug);

  if (!baseRows) {
    return null;
  }

  const pokedex = baseRows.pokedexes.find((entry) => {
    return entry.slug === pokedexSlug;
  });

  if (!pokedex) {
    return null;
  }

  const entries = await loadGamePokedexEntries(supabase, pokedex.id);
  const speciesIds = selectGamePokedexSpeciesIds(entries);
  const [species, forms] = await Promise.all([
    loadGamePokedexSpecies(supabase, speciesIds),
    loadGamePokedexForms(supabase, speciesIds),
  ]);
  const formIds = selectGamePokedexFormIds({ entries, forms });
  const attributes = await loadGamePokedexAttributes(supabase, formIds);
  const abilities = await loadGamePokedexAbilities(
    supabase,
    selectGamePokedexAbilityIds(attributes),
  );

  return buildGamePokedexData({
    abilities,
    attributes,
    entries,
    forms,
    game: baseRows.game,
    generations: baseRows.generations,
    pokedex,
    pokedexes: baseRows.pokedexes,
    species,
    types: baseRows.types,
  });
};
