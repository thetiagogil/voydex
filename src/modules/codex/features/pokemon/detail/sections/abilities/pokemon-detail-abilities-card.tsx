import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/sections/abilities/pokemon-detail-abilities-model";
import { PokemonDetailMechanicNoteCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-mechanic-note";
import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type PokemonDetailAbilitiesCardProps = {
  abilitySlots: PokemonDetailAbilitySlot[];
  /* In place of abilities when the game has none, with the entry where they arrive. */
  note: PokemonDetailMechanicNote | null;
  noteHref?: string | null;
};

/*
 * The abilities the Pokémon has as mini cards side by side (its slot, name
 * and effect), each as tall as the card. The row of Abilities, Training and
 * Breeding gives this card more room the more abilities there are. In a game
 * without abilities the note fills it.
 */
const abilityColumnClassNames: Record<number, string> = {
  1: "sm:grid-cols-1",
  2: "sm:grid-cols-2",
  3: "sm:grid-cols-3",
};

export const PokemonDetailAbilitiesCard = ({
  abilitySlots,
  note,
  noteHref,
}: PokemonDetailAbilitiesCardProps) => {
  return (
    <DetailSectionCard
      id="abilities"
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
        <p className="copy-note text-ink-3">
          Its abilities aren&apos;t recorded yet.
        </p>
      ) : (
        <dl
          className={cn(
            "grid flex-1 gap-3",
            abilityColumnClassNames[abilitySlots.length],
          )}
        >
          {abilitySlots.map((abilitySlot) => (
            <div
              key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
              className="tile flex min-w-0 flex-col"
            >
              <dt className="text-ink-2 copy-mark">{abilitySlot.label}</dt>
              <dd>
                <span className="copy-strong block">
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
