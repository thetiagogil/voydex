import type { ReactNode } from "react";

import { PokemonDetailMechanicNoteCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-mechanic-note";
import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import type { EggGroup } from "@/modules/reference/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailBreedingCardProps = {
  /* Its egg groups, in slot order, when the game has breeding. */
  eggGroups: EggGroup[];
  /* False before Generation II, which has no gender. */
  hasGender: boolean;
  /* In place of eggs when the game has none, with the entry where they arrive. */
  note: PokemonDetailMechanicNote | null;
  noteHref?: string | null;
};

const Fact = ({ children, label }: { children: ReactNode; label: string }) => {
  return (
    <div className="min-w-0">
      <dt className="text-ink-2 text-12 font-bold">{label}</dt>
      <dd className="text-16 mt-0.5 font-extrabold">{children}</dd>
    </div>
  );
};

/*
 * What defeating and raising it gives. Values Voydex doesn't have yet are
 * the pending marker until their data lands.
 */
export const PokemonDetailTrainingCard = () => {
  return (
    <DetailSectionCard title="Training">
      {/* TODO(v3-data): EV yield, catch rate, base friendship, base experience and growth rate per form and generation. */}
      <dl className="grid grid-cols-2 gap-x-4 gap-y-2.5">
        <Fact label="EV yield">
          <CodexPendingValue />
        </Fact>
        <Fact label="Catch rate">
          <CodexPendingValue />
        </Fact>
        <Fact label="Base friendship">
          <CodexPendingValue />
        </Fact>
        <Fact label="Base experience">
          <CodexPendingValue />
        </Fact>
        <Fact label="Growth rate">
          <CodexPendingValue />
        </Fact>
      </dl>
    </DetailSectionCard>
  );
};

/*
 * Eggs and gender. A game without eggs shows the note in their place,
 * keeping Gender where the game has it (Let's Go). Only egg groups are in
 * Voydex so far; the rest is the pending marker.
 */
export const PokemonDetailBreedingCard = ({
  eggGroups,
  hasGender,
  note,
  noteHref,
}: PokemonDetailBreedingCardProps) => {
  return (
    <DetailSectionCard title="Breeding" contentClassName="flex flex-col gap-3">
      {note ? (
        <PokemonDetailMechanicNoteCard arrivesHref={noteHref} note={note} />
      ) : null}
      {!note || hasGender ? (
        <dl className="grid grid-cols-2 gap-x-4 gap-y-2.5">
          {note ? null : (
            <>
              <Fact label="Egg groups">
                {eggGroups.length ? (
                  eggGroups.map((eggGroup) => eggGroup.name).join(" · ")
                ) : (
                  // TODO(v3-data): this form's egg groups (no egg group ids on its attributes).
                  <CodexPendingValue />
                )}
              </Fact>
              <Fact label="Egg cycles">
                {/* TODO(v3-data): egg cycles per species. */}
                <CodexPendingValue />
              </Fact>
            </>
          )}
          {hasGender ? (
            <Fact label="Gender">
              {/* TODO(v3-data): gender ratio per species (and the ratio bar). */}
              <CodexPendingValue />
            </Fact>
          ) : null}
        </dl>
      ) : null}
    </DetailSectionCard>
  );
};
