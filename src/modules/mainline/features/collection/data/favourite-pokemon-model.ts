import { appRoutes } from "@/config/routes";
import type { FavouritePokemonRows } from "@/modules/mainline/features/collection/server/favourite-pokemon-reader";
import {
  createTrainerFormTypeResolver,
  type TrainerPokemonEntry,
  type TrainerPokemonType,
} from "@/modules/mainline/shared/data/trainer-pokemon-model";
import type { TrainerPokemonRows } from "@/modules/mainline/shared/server/trainer-pokemon-reader";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

/* One hearted form, as the Collection's Favourites draws it. */
export type FavouritePokemon = {
  /* Its Codex entry on the hearted form, opening where that form is found. */
  codexHref: string;
  /* When it was hearted, for Newest heart. */
  favouritedAt: string;
  formId: number;
  imageUrl: string | null;
  /* The form's own name, such as "Pikachu (Partner)". */
  name: string;
  nationalNumber: number | null;
  /*
   * The species in your Collection once it has joined one of your teams, in
   * any form: then it is yours and wears a sticker. Null until then.
   */
  owned: TrainerPokemonEntry | null;
  speciesId: number;
  types: TrainerPokemonType[];
};

/*
 * Every favourite, newest heart first, each with its Codex entry and, when
 * the species has joined your teams, its Collection entry. A form the
 * reference no longer has is left out.
 */
export const buildFavouritePokemon = (
  rows: FavouritePokemonRows,
  types: TrainerPokemonRows["types"],
  entries: TrainerPokemonEntry[],
): FavouritePokemon[] => {
  const formById = new Map(rows.forms.map((form) => [form.id, form]));
  const speciesById = new Map(
    rows.species.map((species) => [species.id, species]),
  );
  const entryBySpeciesId = new Map(
    entries.map((entry) => [entry.speciesId, entry]),
  );
  const getTypes = createTrainerFormTypeResolver({
    attributes: rows.attributes,
    types,
  });

  return rows.favourites.flatMap((favourite) => {
    const form = formById.get(favourite.form_id);
    const species = speciesById.get(favourite.species_id);

    if (!form || !species) {
      return [];
    }

    const speciesHref = appRoutes.codexPokemonSpecies(species.slug);

    return [
      {
        codexHref: form.is_default
          ? speciesHref
          : `${speciesHref}?${new URLSearchParams({ form: form.slug })}`,
        favouritedAt: favourite.created_at,
        formId: form.id,
        imageUrl: getPokemonFormImageUrl(form),
        name: form.name,
        nationalNumber: species.national_number,
        owned: entryBySpeciesId.get(species.id) ?? null,
        speciesId: species.id,
        types: getTypes(form.id),
      },
    ];
  });
};
