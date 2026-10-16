import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/components/abilities/pokemon-detail-abilities-model";
import { PokemonDetailMechanicNoteCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-mechanic-note";
import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailAbilitiesCardProps = {
  abilitySlots: PokemonDetailAbilitySlot[];
  /* In place of abilities when the game has none, with the entry where they arrive. */
  note: PokemonDetailMechanicNote | null;
  noteHref?: string | null;
};

/*
 * The abilities the Pokémon has, each with its slot and effect. In a game
 * without abilities the card keeps its place and shows the calm note.
 */
export const PokemonDetailAbilitiesCard = ({
  abilitySlots,
  note,
  noteHref,
}: PokemonDetailAbilitiesCardProps) => {
  return (
    <DetailSectionCard title="Abilities">
      {note ? (
        <PokemonDetailMechanicNoteCard arrivesHref={noteHref} note={note} />
      ) : !abilitySlots.length ? (
        <p className="text-14 text-ink-3 font-semibold">
          Its abilities aren&apos;t recorded yet.
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
