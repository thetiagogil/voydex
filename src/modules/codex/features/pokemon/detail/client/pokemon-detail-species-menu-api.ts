import { codexFiles } from "@/modules/codex/codex-files";
import { matchesPokemonMenuQuery } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-menu-species-row-builders";
import type {
  PokemonDetailMenuPage,
  PokemonDetailMenuPokemon,
} from "@/modules/reference/types";
import { fetchPrebuiltData } from "@/platform/prebuilt-data/use-prebuilt-data";

export type PokemonMenuPageRequest = {
  versionGroupSlug: string;
  limit: number;
  offset: number;
  query: string;
};

export const POKEMON_MENU_PAGE_SIZE = 96;

/*
 * A page of the species picker: the group's whole list is one pre-built
 * file (downloaded once), searched and paged here.
 */
export const fetchPokemonMenuPage = async ({
  versionGroupSlug,
  limit,
  offset,
  query,
}: PokemonMenuPageRequest): Promise<PokemonDetailMenuPage> => {
  const pokemon = await fetchPrebuiltData<PokemonDetailMenuPokemon[]>(
    codexFiles.pokemonMenu(versionGroupSlug),
  );

  if (!pokemon) {
    throw new Error("Unable to load Pokémon menu.");
  }

  /* As the picker types it; names match lower case. */
  const search = query.trim().toLowerCase();
  const matches = search
    ? pokemon.filter((item) =>
        matchesPokemonMenuQuery(
          {
            name: item.name,
            national_number: item.nationalNumber,
            slug: item.slug,
          },
          search,
          item.pokedexNumber,
        ),
      )
    : pokemon;
  const page = matches.slice(offset, offset + limit);

  return {
    nextOffset:
      offset + page.length < matches.length ? offset + page.length : null,
    pokemon: page,
    total: matches.length,
  };
};
