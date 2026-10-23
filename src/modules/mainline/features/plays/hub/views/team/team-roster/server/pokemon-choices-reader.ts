import {
  readCosmeticFormIds,
  readFormClassById,
} from "@/modules/reference/features/pokemon/server/form-class-reader";
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
 * The variants of these that the Play's game has (its own availability, or
 * an expansion it tracks), with the defaults of their species, so each
 * stands beside its species in the list. A failed read throws.
 */
const readAddableVariantFormIds = async (
  supabase: ServerSupabaseClient,
  {
    forms,
    playId,
    variantFormIds,
  }: {
    forms: PokemonChoiceSourceRows["forms"];
    playId: string;
    variantFormIds: number[];
  },
): Promise<Set<number>> => {
  if (!variantFormIds.length) {
    return new Set();
  }

  const [playResult, scopesResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_summary")
      .select("version_group_id")
      .eq("play_id", playId)
      .maybeSingle(),
    supabase
      .schema("gameplay")
      .from("mainline_play_optional_content_scopes")
      .select("version_group_id")
      .eq("play_id", playId),
  ]);

  if (playResult.error || scopesResult.error) {
    throw new Error("Unable to load this Play's Pokémon.");
  }

  const versionGroupIds = [
    playResult.data?.version_group_id,
    ...(scopesResult.data ?? []).map((scope) => scope.version_group_id),
  ].filter((id): id is number => typeof id === "number");
  const variantSpeciesIds = new Set(
    forms
      .filter((form) => variantFormIds.includes(form.id))
      .map((form) => form.species_id),
  );
  const candidateIds = forms
    .filter(
      (form) =>
        variantFormIds.includes(form.id) ||
        (form.is_default && variantSpeciesIds.has(form.species_id)),
    )
    .map((form) => form.id);
  const available = await loadChunkedReferenceRows<{ form_id: number | null }>(
    candidateIds,
    (ids, from, to) =>
      supabase
        .schema("views")
        .from("reference_resolved_pokemon_availability")
        .select("form_id")
        .in("form_id", ids)
        .in("target_version_group_id", versionGroupIds)
        .order("form_id", { ascending: true })
        .range(from, to),
    "Unable to load this Play's Pokémon.",
  );

  return new Set(
    available.flatMap((row) => (row.form_id === null ? [] : [row.form_id])),
  );
};

/*
 * Every Pokémon this Play can add: the species of its Pokédexes (base game
 * and the expansions it tracks), each in its display form with its types at
 * the Play's generation, and beside it each variant the game has. Never a
 * battle form or a form it switches to later (those change on the Play). A
 * link's preset is resolved against them, and its form must belong to that
 * species and exist in that generation.
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
  const [allForms, typesResult, formClassById, cosmeticFormIds] =
    await Promise.all([
      loadChunkedReferenceRows<PokemonChoiceSourceRows["forms"][number]>(
        speciesIds,
        (ids, from, to) =>
          supabase
            .schema("reference")
            .from("pokemon_forms")
            .select("id, species_id, slug, name, is_default, form_order")
            .in("species_id", ids)
            .order("id", { ascending: true })
            .range(from, to),
        "Unable to load Pokémon forms.",
      ),
      supabase.schema("reference").from("types").select("id, name, slug"),
      readFormClassById(supabase, speciesIds),
      readCosmeticFormIds(supabase, speciesIds),
    ]);
  /* A Pokémon is added as itself or a variant, never in a battle form. */
  const forms = allForms.filter(
    (form) => formClassById.get(form.id) !== "battle",
  );
  const addableVariantFormIds = await readAddableVariantFormIds(supabase, {
    forms,
    playId,
    variantFormIds: forms
      .filter((form) => formClassById.get(form.id) === "variant")
      .map((form) => form.id),
  });

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
  const rows = {
    addableVariantFormIds,
    cosmeticFormIds,
    attributes,
    entries,
    forms,
    types: typesResult.data ?? [],
  };
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
