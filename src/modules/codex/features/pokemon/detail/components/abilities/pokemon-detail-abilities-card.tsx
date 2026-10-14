import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailAbilitiesCardProps = {
  abilitySlots: PokemonDetailAbilitySlot[];
};

export const PokemonDetailAbilitiesCard = ({
  abilitySlots,
}: PokemonDetailAbilitiesCardProps) => {
  return (
    <DetailSectionCard title="Abilities">
      <dl>
        {abilitySlots.map((abilitySlot) => (
          <div
            key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
            className="py-3 first:pt-0 last:pb-0"
          >
            <dt className="text-ink-2 text-12 font-bold">
              {abilitySlot.label}
            </dt>
            <dd>
              <span className="text-16 block font-extrabold">
                {abilitySlot.ability.name}
              </span>
              <span className="text-14 text-ink-2 block">
                {abilitySlot.effectSummary ?? "No effect summary recorded."}
              </span>
            </dd>
          </div>
        ))}
      </dl>
    </DetailSectionCard>
  );
};
