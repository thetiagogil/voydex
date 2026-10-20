type FormAttribute = {
  form_id: number;
  generation_start_id: number;
  primary_type_id: number;
};

/*
 * A form's primary type as it stood in a generation: its newest attribute
 * row that had begun by then (Clefairy is Normal before Generation 6), else
 * its oldest. Null when the form has none.
 */
export const getPokemonTypeSlugAtGeneration = ({
  attributes,
  formId,
  generationId,
  typeSlugById,
}: {
  attributes: readonly FormAttribute[];
  formId: number | null;
  generationId: number | null;
  typeSlugById: ReadonlyMap<number, string>;
}) => {
  const rows = attributes
    .filter((attribute) => attribute.form_id === formId)
    .sort(
      (left, right) => left.generation_start_id - right.generation_start_id,
    );
  const row =
    rows.findLast(
      (attribute) =>
        generationId === null || attribute.generation_start_id <= generationId,
    ) ?? rows[0];

  return row ? (typeSlugById.get(row.primary_type_id) ?? null) : null;
};
