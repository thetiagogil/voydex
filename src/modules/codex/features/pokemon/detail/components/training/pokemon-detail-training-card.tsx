import type { ReactNode } from "react";

import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import type { EggGroup } from "@/modules/reference/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailTrainingCardProps = {
  /*
   * Its egg groups, in slot order, when the game has breeding; `null` when it
   * doesn't (the Let's Go and Legends games), which leaves breeding out.
   */
  eggGroups: EggGroup[] | null;
  /* False before Generation II, which has no gender. */
  hasGender: boolean;
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

/*
 * v3's Training & breeding card as one strip across the page: what training
 * it gives and how it breeds, as many facts as the generation has, in one
 * line where they fit.
 * Only its egg groups are in Voydex so far; every other value is a pending
 * marker until its data lands.
 */
export const PokemonDetailTrainingCard = ({
  eggGroups,
  hasGender,
}: PokemonDetailTrainingCardProps) => {
  const hasBreeding = eggGroups !== null;

  return (
    <DetailSectionCard title={hasBreeding ? "Training & breeding" : "Training"}>
      <dl className="grid grid-cols-2 gap-x-4 gap-y-3 sm:grid-cols-4 xl:auto-cols-fr xl:grid-flow-col xl:grid-cols-none">
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
        {eggGroups ? (
          <>
            <TrainingFact label="Egg groups">
              {eggGroups.length ? (
                eggGroups.map((eggGroup) => eggGroup.name).join(" · ")
              ) : (
                // TODO(v3-data): this form's egg groups (no egg group ids on its attributes).
                <CodexPendingValue />
              )}
            </TrainingFact>
            <TrainingFact label="Egg cycles">
              {/* TODO(v3-data): egg cycles per species. */}
              <CodexPendingValue />
            </TrainingFact>
          </>
        ) : null}
        {hasGender ? (
          <TrainingFact label="Gender">
            {/* TODO(v3-data): gender ratio per species (and the ratio bar). */}
            <CodexPendingValue />
          </TrainingFact>
        ) : null}
      </dl>
    </DetailSectionCard>
  );
};
