import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { loadChunkedReferenceRows } from "@/modules/reference/reference-rows";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

import {
  buildPokemonChoices,
  toPokemonChoice,
  type PokemonChoice,
  type PokemonChoiceSourceRows,
} from "../utils/pokemon-choices";

const PAGE_SIZE = 1000;

export type PokemonChoices = {
  choices: PokemonChoice[];
  /* The Pokédex search reads, such as "Galar Pokédex". */
  pokedexName: string | null;
  /* The Pokémon a link asked for (`?add=` with `&form=`), when it can join. */
  preset: PokemonChoice | null;
};

const readEntries = async (supabase: ServerSupabaseClient, playId: string) => {
  const rows: (PokemonChoiceSourceRows["entries"][number] & {
    pokedex_name: string | null;
  })[] = [];
  let pokedexName: string | null = null;

  for (let from = 0; ; from += PAGE_SIZE) {
    const result = await supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select(
        "display_form_id, pokedex_id, pokedex_kind, pokedex_name, pokedex_number, species_id, species_name, species_slug",
      )
      .eq("play_id", playId)
      .order("pokedex_id", { ascending: true })
      .order("pokedex_number", { ascending: true })
      .range(from, from + PAGE_SIZE - 1);

    if (result.error) {
      throw new Error("Unable to load this Play's Pokédex.");
    }

    const page = result.data ?? [];

    pokedexName ??=
      page.find((row) => row.pokedex_kind === "regional")?.pokedex_name ?? null;
    rows.push(...page);

    if (page.length < PAGE_SIZE) {
      return {
        entries: rows,
        pokedexName: pokedexName ?? rows[0]?.pokedex_name ?? null,
      };
    }
  }
};

/*
 * Every Pokémon this Play can add: the species of its Pokédexes (base game
 * and the expansions it tracks), each in its display form with its types at
 * the Play's generation. A link's preset is resolved against them, and its
 * form must belong to that species and exist in that generation.
 */
export const readMainlinePlayPokemonChoices = async (
  supabase: ServerSupabaseClient,
  {
    generationId,
    playId,
    preset,
  }: {
    generationId: number | null;
    playId: string;
    preset: { formSlug: string | null; speciesSlug: string } | null;
  },
): Promise<PokemonChoices> => {
  const { entries, pokedexName } = await readEntries(supabase, playId);
  const speciesIds = [
    ...new Set(
      entries.flatMap((entry) => (entry.species_id ? [entry.species_id] : [])),
    ),
  ];
  const [forms, typesResult] = await Promise.all([
    loadChunkedReferenceRows<PokemonChoiceSourceRows["forms"][number]>(
      speciesIds,
      (ids, from, to) =>
        supabase
          .schema("reference")
          .from("pokemon_forms")
          .select(
            "id, species_id, slug, name, is_default, form_order, sprite_slug",
          )
          .in("species_id", ids)
          .order("id", { ascending: true })
          .range(from, to),
      "Unable to load Pokémon forms.",
    ),
    supabase.schema("reference").from("types").select("id, name, slug"),
  ]);

  if (typesResult.error) {
    throw new Error("Unable to load Pokémon types.");
  }

  const attributes = await loadChunkedReferenceRows<
    PokemonChoiceSourceRows["attributes"][number]
  >(
    forms.map((form) => form.id),
    (ids, from, to) => {
      let query = supabase
        .schema("reference")
        .from("pokemon_attributes")
        .select(
          "form_id, generation_start_id, primary_type_id, secondary_type_id",
        )
        .in("form_id", ids);

      if (generationId) {
        query = query.lte("generation_start_id", generationId);
      }

      return query.order("form_id", { ascending: true }).range(from, to);
    },
    "Unable to load Pokémon types.",
  );
  const rows = { attributes, entries, forms, types: typesResult.data ?? [] };
  const choices = buildPokemonChoices(rows);

  return {
    choices,
    pokedexName: pokedexName ? formatPokedexName(pokedexName) : null,
    preset: preset ? resolvePreset(rows, choices, preset) : null,
  };
};

const resolvePreset = (
  rows: PokemonChoiceSourceRows,
  choices: PokemonChoice[],
  preset: { formSlug: string | null; speciesSlug: string },
): PokemonChoice | null => {
  const choice = choices.find(
    (item) => item.speciesSlug === preset.speciesSlug,
  );

  if (!choice || !preset.formSlug || preset.formSlug === choice.formSlug) {
    return choice ?? null;
  }

  const form = rows.forms.find(
    (item) =>
      item.slug === preset.formSlug && item.species_id === choice.speciesId,
  );
  const attribute = form
    ? rows.attributes
        .filter((item) => item.form_id === form.id)
        .toSorted(
          (left, right) => right.generation_start_id - left.generation_start_id,
        )[0]
    : undefined;

  return form && attribute
    ? toPokemonChoice({
        attribute,
        form,
        number: choice.number,
        speciesName: choice.speciesName,
        speciesSlug: choice.speciesSlug,
        typeById: new Map(rows.types.map((type) => [type.id, type])),
      })
    : choice;
};
