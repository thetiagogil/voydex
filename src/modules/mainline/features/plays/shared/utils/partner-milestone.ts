import type { Json } from "@/shared/types/database.types";

export type PartnerMilestoneRow = {
  category_sort_order: number | null;
  decision_options: Json | null;
  milestone_id: number | null;
  sort_order: number | null;
  version_group_id: number | null;
};

type PokemonDecisionOption = {
  decisionOptionId: number;
  formId: number;
  speciesId: number;
};

const readPokemonOptions = (options: Json | null): PokemonDecisionOption[] =>
  Array.isArray(options)
    ? options.flatMap((option) => {
        if (!option || typeof option !== "object" || Array.isArray(option)) {
          return [];
        }

        const {
          decision_option_id: decisionOptionId,
          pokemon_form_id: formId,
          pokemon_species_id: speciesId,
        } = option;

        return typeof decisionOptionId === "number" &&
          typeof formId === "number" &&
          typeof speciesId === "number"
          ? [{ decisionOptionId, formId, speciesId }]
          : [];
      })
    : [];

/*
 * Where a new Play records the partner it starts with: the first milestone
 * of its own game (in Story's order) whose decision is a choice of Pokémon,
 * as the Play's Overview reads it, and the option for the picked partner
 * (its exact form, else its species). Null when the game has no such choice
 * (Yellow and the Let's Go games give you your partner) or the partner isn't
 * one of its options.
 * Read only: Home uses it to offer the game's starters as that milestone's
 * options. Writes don't trust it; `gameplay.find_mainline_partner_milestone`
 * applies the same rule in the database.
 */
export const findPartnerDecision = ({
  baseVersionGroupId,
  partner,
  rows,
}: {
  baseVersionGroupId: number;
  partner: { formId: number; speciesId: number };
  rows: PartnerMilestoneRow[];
}): { decisionOptionId: number; milestoneId: number } | null => {
  const milestone = rows
    .filter(
      (row) =>
        row.milestone_id !== null &&
        row.version_group_id === baseVersionGroupId &&
        readPokemonOptions(row.decision_options).length > 0,
    )
    .toSorted(
      (left, right) =>
        (left.category_sort_order ?? 0) - (right.category_sort_order ?? 0) ||
        (left.sort_order ?? 0) - (right.sort_order ?? 0),
    )[0];

  if (!milestone || milestone.milestone_id === null) {
    return null;
  }

  const options = readPokemonOptions(milestone.decision_options);
  const option =
    options.find(
      (candidate) =>
        candidate.speciesId === partner.speciesId &&
        candidate.formId === partner.formId,
    ) ?? options.find((candidate) => candidate.speciesId === partner.speciesId);

  return option
    ? {
        decisionOptionId: option.decisionOptionId,
        milestoneId: milestone.milestone_id,
      }
    : null;
};
