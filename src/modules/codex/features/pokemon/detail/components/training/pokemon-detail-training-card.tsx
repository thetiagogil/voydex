import type { ReactNode } from "react";

import { PokemonDetailMechanicNoteCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-mechanic-note";
import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import type { EggGroup } from "@/modules/reference/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailTrainingCardProps = {
  /* In place of eggs when the game has none, with the entry where they arrive. */
  breedingNote: PokemonDetailMechanicNote | null;
  breedingNoteHref?: string | null;
  /* Its egg groups, in slot order, when the game has breeding. */
  eggGroups: EggGroup[];
  /* False before Generation II, which has no gender. */
  hasGender: boolean;
};

const Fact = ({ children, label }: { children: ReactNode; label: string }) => {
  return (
    <div className="min-w-0">
      <dt className="text-ink-2 text-12 font-bold">{label}</dt>
      <dd className="text-16 mt-0.5 font-extrabold">{children}</dd>
    </div>
  );
};

const FactGroup = ({
  children,
  title,
}: {
  children: ReactNode;
  title: string;
}) => {
  return (
    <section className="flex flex-col gap-2.5">
      <h3 className="text-13 text-ink-3 font-extrabold tracking-wide uppercase">
        {title}
      </h3>
      {children}
    </section>
  );
};

/*
 * v3's Training & breeding card, in two named groups so each fact says what
 * it is for: Training (what defeating and raising it gives) and Breeding
 * (eggs and gender). A game without eggs shows the calm note in their place;
 * a value Voydex doesn't have yet is the pending marker (only egg groups are
 * in so far).
 */
export const PokemonDetailTrainingCard = ({
  breedingNote,
  breedingNoteHref,
  eggGroups,
  hasGender,
}: PokemonDetailTrainingCardProps) => {
  return (
    <DetailSectionCard
      title="Training & breeding"
      contentClassName="flex flex-col gap-5"
    >
      <FactGroup title="Training">
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
      </FactGroup>

      <FactGroup title="Breeding">
        {breedingNote ? (
          <PokemonDetailMechanicNoteCard
            arrivesHref={breedingNoteHref}
            note={breedingNote}
          />
        ) : null}
        {!breedingNote || hasGender ? (
          <dl className="grid grid-cols-2 gap-x-4 gap-y-2.5">
            {breedingNote ? null : (
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
      </FactGroup>
    </DetailSectionCard>
  );
};
