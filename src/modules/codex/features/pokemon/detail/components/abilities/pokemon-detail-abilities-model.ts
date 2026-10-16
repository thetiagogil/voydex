import { byId } from "@/modules/reference/reference-data";
import type {
  Ability,
  AbilityAttribute,
  PokemonAttributes,
  VersionGroup,
} from "@/modules/reference/types";

type PokemonDetailAbilitySlotDefinition = {
  abilityKey: keyof Pick<
    PokemonAttributes,
    "hidden_ability_id" | "primary_ability_id" | "secondary_ability_id"
  >;
  label: string;
  token: string;
};

export type PokemonDetailAbilitySlot = {
  /* Null for an empty slot, which then says why in `emptyLabel`. */
  ability: Ability | null;
  effectSummary: string | null;
  emptyLabel: string;
  label: string;
  token: string;
};

const pokemonDetailAbilitySlotDefinitions = [
  {
    abilityKey: "primary_ability_id",
    label: "Primary",
    token: "1",
  },
  {
    abilityKey: "secondary_ability_id",
    label: "Secondary",
    token: "2",
  },
  {
    abilityKey: "hidden_ability_id",
    label: "Hidden",
    token: "H",
  },
] satisfies PokemonDetailAbilitySlotDefinition[];

const getVersionGroupSortOrder = (
  versionGroupId: number,
  versionGroupById: Map<number, VersionGroup>,
) => {
  return versionGroupById.get(versionGroupId)?.sort_order ?? versionGroupId;
};

const getPokemonDetailAbilityEffectSummary = ({
  ability,
  abilityAttributes,
  currentVersionGroup,
  versionGroupById,
}: {
  ability: Ability;
  abilityAttributes: AbilityAttribute[];
  currentVersionGroup: VersionGroup | null;
  versionGroupById: Map<number, VersionGroup>;
}) => {
  const currentVersionGroupSortOrder =
    currentVersionGroup?.sort_order ?? Number.POSITIVE_INFINITY;

  return (
    abilityAttributes
      .filter((attribute) => {
        return (
          attribute.ability_id === ability.id &&
          getVersionGroupSortOrder(
            attribute.version_group_start_id,
            versionGroupById,
          ) <= currentVersionGroupSortOrder
        );
      })
      .sort((firstAttribute, secondAttribute) => {
        return (
          getVersionGroupSortOrder(
            secondAttribute.version_group_start_id,
            versionGroupById,
          ) -
          getVersionGroupSortOrder(
            firstAttribute.version_group_start_id,
            versionGroupById,
          )
        );
      })[0]?.effect_summary ?? null
  );
};

/*
 * The three ability slots, always all three so every entry reads the same:
 * an empty one says "None", and the hidden slot before Generation V says it
 * arrives then (from the reference's hidden-ability mechanic). Nothing when
 * the Pokémon has no ability at all in the generation.
 */
export const getPokemonDetailAbilitySlots = ({
  abilities,
  abilityAttributes,
  attributes,
  currentVersionGroup,
  hasHiddenAbilities,
  versionGroups,
}: {
  abilities: Ability[];
  abilityAttributes: AbilityAttribute[];
  attributes: PokemonAttributes | null;
  currentVersionGroup: VersionGroup | null;
  hasHiddenAbilities: boolean;
  versionGroups: VersionGroup[];
}): PokemonDetailAbilitySlot[] => {
  if (!attributes) {
    return [];
  }

  const abilityById = byId(abilities);
  const versionGroupById = byId(versionGroups);
  const slots = pokemonDetailAbilitySlotDefinitions.map((slot) => {
    const abilityId = attributes[slot.abilityKey];
    const ability = (abilityId ? abilityById.get(abilityId) : null) ?? null;
    const isHidden = slot.abilityKey === "hidden_ability_id";

    return {
      ability,
      effectSummary: ability
        ? getPokemonDetailAbilityEffectSummary({
            ability,
            abilityAttributes,
            currentVersionGroup,
            versionGroupById,
          })
        : null,
      emptyLabel:
        isHidden && !hasHiddenAbilities
          ? "Hidden abilities arrive in Generation V"
          : "None",
      label: slot.label,
      token: slot.token,
    };
  });

  return slots.some((slot) => slot.ability) ? slots : [];
};
