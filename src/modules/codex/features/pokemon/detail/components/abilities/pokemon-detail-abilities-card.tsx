import { PokemonDetailAbilityItem } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-ability-item";
import { getPokemonDetailAbilitySlots } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-utils";
import { pokemonDetailSectionTableGridClassName } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-grid";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type {
  Ability,
  AbilityAttribute,
  PokemonAttributes,
  VersionGroup,
} from "@/modules/codex/shared/types";

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
    <PokemonDetailSectionCard title="Abilities" contentClassName="p-0">
      <div className="overflow-x-auto">
        <div
          className={`${pokemonDetailSectionTableGridClassName} text-muted-foreground px-4 py-2 text-xs`}
        >
          <div>Slot</div>
          <div>Ability</div>
          <div>Effect</div>
        </div>
        <div>
          {abilitySlots.map((abilitySlot) => (
            <PokemonDetailAbilityItem
              key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
              abilitySlot={abilitySlot}
            />
          ))}
        </div>
      </div>
    </PokemonDetailSectionCard>
  );
};
