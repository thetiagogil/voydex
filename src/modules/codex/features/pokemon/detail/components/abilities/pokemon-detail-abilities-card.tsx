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
 * The abilities the Pokémon has, one inset tile each (its slot, name and
 * effect), the tiles sharing the card's height so it is always full beside
 * Training and Breeding. In a game without abilities the note fills it.
 */
export const PokemonDetailAbilitiesCard = ({
  abilitySlots,
  note,
  noteHref,
}: PokemonDetailAbilitiesCardProps) => {
  return (
    <DetailSectionCard
      title="Abilities"
      className="h-full"
      contentClassName="flex flex-1 flex-col gap-3"
    >
      {note ? (
        <PokemonDetailMechanicNoteCard
          arrivesHref={noteHref}
          layout="fill"
          note={note}
        />
      ) : !abilitySlots.length ? (
        <p className="text-14 text-ink-3 font-semibold">
          Its abilities aren&apos;t recorded yet.
        </p>
      ) : (
        <dl className="flex flex-1 flex-col gap-3">
          {abilitySlots.map((abilitySlot) => (
            <div
              key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
              className="bg-surface-2 flex flex-1 flex-col justify-center rounded-lg px-4 py-3.5"
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
