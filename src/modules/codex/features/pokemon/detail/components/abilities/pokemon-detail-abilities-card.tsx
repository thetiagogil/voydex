import { PokemonDetailAbilityItem } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-ability-item";
import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-utils";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type {
  Ability,
  AbilityAttribute,
  PokemonAttributes,
  VersionGroup,
} from "@/modules/codex/shared/types";
import { appIcons } from "@/shared/components/app-icon";

type PokemonDetailAbilitiesCardProps = {
  abilities: Ability[];
  abilityAttributes: AbilityAttribute[];
  attributes: PokemonAttributes | null;
  currentVersionGroup: VersionGroup | null;
  versionGroups: VersionGroup[];
};

export const PokemonDetailAbilitiesCard = ({
  abilities,
  abilityAttributes,
  attributes,
  currentVersionGroup,
  versionGroups,
}: PokemonDetailAbilitiesCardProps) => {
  const abilitySlots = getPokemonDetailAbilitySlots({
    abilities,
    abilityAttributes,
    attributes,
    currentVersionGroup,
    versionGroups,
  });

  if (!abilitySlots.length) {
    return null;
  }

  return (
    <PokemonDetailSectionCard
      icon={appIcons.product.activity}
      title="Abilities"
    >
      <div className="grid gap-2">
        {abilitySlots.map((abilitySlot) => (
          <PokemonDetailAbilityItem
            key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
            abilitySlot={abilitySlot}
          />
        ))}
      </div>
    </PokemonDetailSectionCard>
  );
};
