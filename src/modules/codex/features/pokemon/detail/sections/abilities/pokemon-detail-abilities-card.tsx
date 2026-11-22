import type { PokemonDetailAbilitySlot } from "@/modules/codex/features/pokemon/detail/sections/abilities/pokemon-detail-abilities-model";
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
 * The abilities the Pokémon has, one tile each under the other (its slot,
 * name and effect), the same tiles Training and Breeding use for their
 * facts, so the three cards of the row read as one family. In a game
 * without abilities a quiet note takes their place.
 */
export const PokemonDetailAbilitiesCard = ({
  abilitySlots,
  note,
  noteHref,
}: PokemonDetailAbilitiesCardProps) => {
  return (
    <DetailSectionCard id="abilities" title="Abilities" className="h-full">
      {note ? (
        <PokemonDetailMechanicNoteCard arrivesHref={noteHref} note={note} />
      ) : !abilitySlots.length ? (
        <p className="copy-note text-ink-3">
          Its abilities aren&apos;t recorded yet.
        </p>
      ) : (
        <dl className="grid gap-2">
          {abilitySlots.map((abilitySlot) => (
            <div
              key={`${abilitySlot.token}-${abilitySlot.ability.id}`}
              className="tile min-w-0"
            >
              <dt className="text-ink-2 copy-mark">{abilitySlot.label}</dt>
              <dd>
                <span className="copy-strong block">
                  {abilitySlot.ability.name}
                </span>
                <span className="text-ink-2 copy-note block">
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
