import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";

export type PokemonChoiceType = { id: number; name: string; slug: string };

/* A Pokémon you can add: a species of the Play's Pokédexes, in one form. */
export type PokemonChoice = {
  formId: number;
  /* Set when the form isn't the species' default, such as "Galarian Form". */
  formName: string | null;
  formSlug: string;
  imageUrl: string | null;
  /* Its number in the Pokédex it was found in. */
  number: number;
  primaryType: PokemonChoiceType | null;
  secondaryType: PokemonChoiceType | null;
  speciesId: number;
  speciesName: string;
  speciesSlug: string;
};

export type PokemonChoiceSourceRows = {
  /*
   * The variants this Play's game has, each beside its species in the list
   * (Hisuian Arcanine beside Arcanine), and the defaults of those species.
   */
  addableVariantFormIds?: ReadonlySet<number>;
  attributes: {
    form_id: number;
    generation_start_id: number;
    primary_type_id: number;
    secondary_type_id: number | null;
  }[];
  entries: {
    display_form_id: number | null;
    pokedex_id: number | null;
    pokedex_kind: string | null;
    pokedex_number: number | null;
    species_id: number | null;
    species_name: string | null;
    species_slug: string | null;
  }[];
  forms: {
    form_order: number;
    id: number;
    is_default: boolean;
    name: string;
    slug: string;
    species_id: number;
  }[];
  types: PokemonChoiceType[];
};

/* The regional Pokédex first, the National one last. */
const pokedexKindOrder = ["regional", "local", "dlc", "special", "national"];

const kindRank = (kind: string | null) => {
  const rank = pokedexKindOrder.indexOf(kind ?? "");
  return rank === -1 ? pokedexKindOrder.length : rank;
};

/*
 * Each species of the Play's Pokédexes once, in the order of the first
 * Pokédex it appears in (regional first), drawn in its display form with
 * the types it has in the Play's generation, followed by the other variants
 * the game has, each its own choice with the same number. Forms without
 * attributes in that generation are left out.
 */
export const buildPokemonChoices = (
  rows: PokemonChoiceSourceRows,
): PokemonChoice[] => {
  const typeById = new Map(rows.types.map((type) => [type.id, type]));
  const formsBySpecies = new Map<number, PokemonChoiceSourceRows["forms"]>();

  for (const form of rows.forms.toSorted(
    (left, right) => left.form_order - right.form_order,
  )) {
    formsBySpecies.set(form.species_id, [
      ...(formsBySpecies.get(form.species_id) ?? []),
      form,
    ]);
  }

  const attributeByFormId = new Map<
    number,
    PokemonChoiceSourceRows["attributes"][number]
  >();

  for (const attribute of rows.attributes.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  )) {
    if (!attributeByFormId.has(attribute.form_id)) {
      attributeByFormId.set(attribute.form_id, attribute);
    }
  }

  const seen = new Set<number>();
  const choices: PokemonChoice[] = [];
  const entries = rows.entries.toSorted(
    (left, right) =>
      kindRank(left.pokedex_kind) - kindRank(right.pokedex_kind) ||
      (left.pokedex_id ?? 0) - (right.pokedex_id ?? 0) ||
      (left.pokedex_number ?? 0) - (right.pokedex_number ?? 0),
  );

  for (const entry of entries) {
    if (
      entry.species_id === null ||
      seen.has(entry.species_id) ||
      !entry.species_name ||
      !entry.species_slug
    ) {
      continue;
    }

    const forms = formsBySpecies.get(entry.species_id) ?? [];
    const form =
      forms.find((item) => item.id === entry.display_form_id) ??
      forms.find((item) => item.is_default) ??
      forms[0];
    const attribute = form ? attributeByFormId.get(form.id) : undefined;

    if (!form || !attribute) {
      continue;
    }

    seen.add(entry.species_id);

    for (const choiceForm of [
      form,
      ...forms.filter(
        (item) =>
          item.id !== form.id && rows.addableVariantFormIds?.has(item.id),
      ),
    ]) {
      const choiceAttribute = attributeByFormId.get(choiceForm.id);

      if (choiceAttribute) {
        choices.push(
          toPokemonChoice({
            attribute: choiceAttribute,
            form: choiceForm,
            number: entry.pokedex_number ?? 0,
            speciesName: entry.species_name,
            speciesSlug: entry.species_slug,
            typeById,
          }),
        );
      }
    }
  }

  return choices;
};

export const toPokemonChoice = ({
  attribute,
  form,
  number,
  speciesName,
  speciesSlug,
  typeById,
}: {
  attribute: PokemonChoiceSourceRows["attributes"][number];
  form: PokemonChoiceSourceRows["forms"][number];
  number: number;
  speciesName: string;
  speciesSlug: string;
  typeById: ReadonlyMap<number, PokemonChoiceType>;
}): PokemonChoice => ({
  formId: form.id,
  formName: form.is_default ? null : form.name,
  formSlug: form.slug,
  imageUrl: getPokemonFormImageUrl(
    {
      name: form.name,
      slug: form.slug,
    },
    "sm",
  ),
  number,
  primaryType: typeById.get(attribute.primary_type_id) ?? null,
  secondaryType:
    attribute.secondary_type_id === null
      ? null
      : (typeById.get(attribute.secondary_type_id) ?? null),
  speciesId: form.species_id,
  speciesName,
  speciesSlug,
});

/* Matches a search by name or Pokédex number, as v3's search does. */
export const filterPokemonChoices = (
  choices: PokemonChoice[],
  query: string,
): PokemonChoice[] => {
  const normalized = query.trim().toLocaleLowerCase();

  if (!normalized) {
    return [];
  }

  const number = /^#?\d+$/.test(normalized)
    ? Number(normalized.replace("#", ""))
    : null;

  return choices.filter(
    (choice) =>
      choice.speciesName.toLocaleLowerCase().includes(normalized) ||
      (choice.formName?.toLocaleLowerCase().includes(normalized) ?? false) ||
      (number !== null && choice.number === number),
  );
};

export const getPokemonChoiceTypes = (choice: PokemonChoice) =>
  [choice.primaryType, choice.secondaryType].filter((type) => type !== null);

/* Its Pokédex number as the sheet shows it: #001. */
export const formatPokemonChoiceNumber = (number: number) =>
  `#${String(number).padStart(3, "0")}`;
