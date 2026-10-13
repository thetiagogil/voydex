import type { OverviewMilestone } from "@/modules/mainline/features/plays/hub/views/overview/data/overview-milestones-mapper";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import type { Json } from "@/shared/types/database.types";

export type OverviewPartnerType = { id: number; name: string; slug: string };

export type OverviewPartnerOption = {
  decisionOptionId: number;
  formId: number;
  imageUrl: string | null;
  name: string;
  primaryType: OverviewPartnerType | null;
  secondaryType: OverviewPartnerType | null;
  speciesId: number;
};

/* The choice a brand-new Play opens on: which partner you picked. */
export type OverviewPartnerChoice = {
  chosenOptionId: number | null;
  isRecorded: boolean;
  milestoneId: number;
  milestoneName: string;
  options: OverviewPartnerOption[];
  /* Numbered within its journey, as Story numbers it. */
  position: { sequence: number; total: number };
};

/*
 * A brand-new Play (v3 `fresh`): its partner milestone is the only thing
 * recorded, if anything, and at most the partner is on the team.
 */
export type OverviewFreshPlay = {
  partner: OverviewPartnerChoice;
};

export type OverviewPartnerFormRows = {
  attributes: {
    form_id: number;
    generation_start_id: number;
    primary_type_id: number;
    secondary_type_id: number | null;
  }[];
  forms: { id: number; name: string; sprite_slug: string | null }[];
  types: OverviewPartnerType[];
};

type DecisionPokemonOption = {
  decisionOptionId: number;
  formId: number;
  label: string;
  speciesId: number;
  speciesName: string | null;
};

const readDecisionPokemonOptions = (
  decisionOptions: Json | null,
): DecisionPokemonOption[] =>
  Array.isArray(decisionOptions)
    ? decisionOptions.flatMap((option): DecisionPokemonOption[] => {
        if (!option || typeof option !== "object" || Array.isArray(option)) {
          return [];
        }

        const {
          decision_option_id: decisionOptionId,
          label,
          pokemon_form_id: formId,
          pokemon_species_id: speciesId,
          pokemon_species_name: speciesName,
        } = option;

        return typeof decisionOptionId === "number" &&
          typeof formId === "number" &&
          typeof speciesId === "number"
          ? [
              {
                decisionOptionId,
                formId,
                label: typeof label === "string" ? label : "",
                speciesId,
                speciesName:
                  typeof speciesName === "string" ? speciesName : null,
              },
            ]
          : [];
      })
    : [];

/*
 * The partner milestone: the first milestone of the Play's own game (in
 * Story's order) whose decision is a choice of Pokémon.
 */
export const findOverviewPartnerMilestone = (
  orderedMilestones: OverviewMilestone[],
  baseVersionGroupId: number | null,
) =>
  orderedMilestones.find(
    (milestone) =>
      milestone.version_group_id === baseVersionGroupId &&
      readDecisionPokemonOptions(milestone.decision_options).length > 0,
  ) ?? null;

export const getOverviewPartnerFormIds = (milestone: OverviewMilestone) =>
  readDecisionPokemonOptions(milestone.decision_options).map(
    (option) => option.formId,
  );

/*
 * Whether the Play is brand new: nothing recorded but its partner milestone,
 * and at most one Pokémon (the partner) on the team.
 */
export const isOverviewFreshPlay = ({
  orderedMilestones,
  partnerMilestone,
  teamCount,
}: {
  orderedMilestones: OverviewMilestone[];
  partnerMilestone: OverviewMilestone | null;
  teamCount: number;
}) => {
  if (!partnerMilestone || teamCount > 1) {
    return false;
  }

  const recorded = orderedMilestones.filter(
    (milestone) => milestone.is_completed,
  );

  return (
    recorded.length === 0 ||
    (recorded.length === 1 &&
      recorded[0].milestone_id === partnerMilestone.milestone_id)
  );
};

export const buildOverviewPartnerChoice = ({
  formRows,
  milestone,
  orderedMilestones,
}: {
  formRows: OverviewPartnerFormRows;
  milestone: OverviewMilestone;
  orderedMilestones: OverviewMilestone[];
}): OverviewPartnerChoice | null => {
  if (milestone.milestone_id === null) {
    return null;
  }

  const journey = orderedMilestones.filter(
    (item) => item.version_group_id === milestone.version_group_id,
  );
  const formById = new Map(formRows.forms.map((form) => [form.id, form]));
  const typeById = new Map(formRows.types.map((type) => [type.id, type]));
  /* Newest generation first, so each form keeps the first row it meets. */
  const attributeByFormId = new Map<
    number,
    OverviewPartnerFormRows["attributes"][number]
  >();

  for (const attribute of formRows.attributes.toSorted(
    (left, right) => right.generation_start_id - left.generation_start_id,
  )) {
    if (!attributeByFormId.has(attribute.form_id)) {
      attributeByFormId.set(attribute.form_id, attribute);
    }
  }

  return {
    chosenOptionId: milestone.selected_decision_option_id,
    isRecorded: milestone.is_completed === true,
    milestoneId: milestone.milestone_id,
    milestoneName: milestone.milestone_name ?? "Choose your partner",
    options: readDecisionPokemonOptions(milestone.decision_options).map(
      (option) => {
        const form = formById.get(option.formId) ?? null;
        const attribute = attributeByFormId.get(option.formId);
        const name = option.speciesName ?? option.label;

        return {
          decisionOptionId: option.decisionOptionId,
          formId: option.formId,
          imageUrl: form
            ? getPokemonFormImageUrl({
                name: form.name,
                sprite_slug: form.sprite_slug,
              })
            : null,
          name,
          primaryType: attribute
            ? (typeById.get(attribute.primary_type_id) ?? null)
            : null,
          secondaryType:
            attribute?.secondary_type_id != null
              ? (typeById.get(attribute.secondary_type_id) ?? null)
              : null,
          speciesId: option.speciesId,
        };
      },
    ),
    position: {
      sequence:
        journey.findIndex(
          (item) => item.milestone_id === milestone.milestone_id,
        ) + 1,
      total: journey.length,
    },
  };
};
