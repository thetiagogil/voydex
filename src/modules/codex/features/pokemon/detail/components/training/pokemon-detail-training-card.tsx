import type { ReactNode } from "react";

import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import type { EggGroup } from "@/modules/reference/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailTrainingCardProps = {
  /*
   * What breeding and gender read when the game has none, such as "From
   * Generation II" or "Not in this game"; null when it has them.
   */
  breedingAbsence: string | null;
  /* Its egg groups, in slot order, when the game has breeding. */
  eggGroups: EggGroup[];
  genderAbsence: string | null;
};

const TrainingFact = ({
  children,
  label,
}: {
  children: ReactNode;
  label: string;
}) => {
  return (
    <div className="min-w-0">
      <dt className="text-ink-2 text-12 font-bold">{label}</dt>
      <dd className="text-16 mt-0.5 font-extrabold">{children}</dd>
    </div>
  );
};

/* A fact the game doesn't have: said plainly, in quiet ink. */
const AbsentValue = ({ children }: { children: string }) => {
  return <span className="text-14 text-ink-3 font-semibold">{children}</span>;
};

/*
 * v3's Training & breeding card: what training it gives and how it breeds.
 * Every fact keeps its place in every game; one the game doesn't have says
 * so quietly ("From Generation II"), and a value Voydex doesn't have yet is
 * the pending marker until its data lands (only egg groups are in so far).
 */
export const PokemonDetailTrainingCard = ({
  breedingAbsence,
  eggGroups,
  genderAbsence,
}: PokemonDetailTrainingCardProps) => {
  return (
    <DetailSectionCard title="Training & breeding">
      <dl className="grid grid-cols-2 gap-x-4 gap-y-2.5">
        {/* TODO(v3-data): EV yield, catch rate, base friendship, base experience and growth rate per form and generation. */}
        <TrainingFact label="EV yield">
          <CodexPendingValue />
        </TrainingFact>
        <TrainingFact label="Catch rate">
          <CodexPendingValue />
        </TrainingFact>
        <TrainingFact label="Base friendship">
          <CodexPendingValue />
        </TrainingFact>
        <TrainingFact label="Base experience">
          <CodexPendingValue />
        </TrainingFact>
        <TrainingFact label="Growth rate">
          <CodexPendingValue />
        </TrainingFact>
        <TrainingFact label="Egg groups">
          {breedingAbsence ? (
            <AbsentValue>{breedingAbsence}</AbsentValue>
          ) : eggGroups.length ? (
            eggGroups.map((eggGroup) => eggGroup.name).join(" · ")
          ) : (
            // TODO(v3-data): this form's egg groups (no egg group ids on its attributes).
            <CodexPendingValue />
          )}
        </TrainingFact>
        <TrainingFact label="Egg cycles">
          {breedingAbsence ? (
            <AbsentValue>{breedingAbsence}</AbsentValue>
          ) : (
            // TODO(v3-data): egg cycles per species.
            <CodexPendingValue />
          )}
        </TrainingFact>
        <TrainingFact label="Gender">
          {genderAbsence ? (
            <AbsentValue>{genderAbsence}</AbsentValue>
          ) : (
            // TODO(v3-data): gender ratio per species (and the ratio bar).
            <CodexPendingValue />
          )}
        </TrainingFact>
      </dl>
    </DetailSectionCard>
  );
};
