import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailAbilitiesCardProps = {
  /* What the card says when the game has no abilities. */
  absence: string | null;
  abilitySlots: PokemonDetailAbilitySlot[];
};

/*
 * The abilities the Pokémon has, each with its slot and effect. In a game
 * without abilities the card stays in its place and says why, quietly.
 */
export const PokemonDetailAbilitiesCard = ({
  absence,
  abilitySlots,
}: PokemonDetailAbilitiesCardProps) => {
  const isEmpty = Boolean(absence) || !abilitySlots.length;

  return (
    <DetailSectionCard
      title="Abilities"
      contentClassName={
        isEmpty ? "flex flex-1 items-center justify-center" : undefined
      }
    >
      {isEmpty ? (
        <p className="text-14 text-ink-3 py-4 text-center font-semibold">
          {absence ?? "Its abilities aren't recorded yet."}
        </p>
      ) : (
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
      )}
    </DetailSectionCard>
  );
};
