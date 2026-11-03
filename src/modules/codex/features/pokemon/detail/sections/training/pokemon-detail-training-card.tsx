import type { ReactNode } from "react";

import { PokemonDetailMechanicNoteCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-mechanic-note";
import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import {
  formatEvYield,
  type PokemonDetailTraining,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-training";
import {
  formatRatioPercent,
  getPokemonDetailGenderRatio,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-gender-ratio";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import { GenderIcon } from "@/modules/reference/features/pokemon/components/gender-icon";
import type { EggGroup } from "@/modules/reference/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";
import { Meter } from "@/shared/components/ui/meter";

type PokemonDetailBreedingCardProps = {
  /* Its egg groups, in slot order, when the game has breeding. */
  eggGroups: EggGroup[];
  /* Egg cycles until its egg hatches. */
  eggCycles: number;
  /* How many of every eight are female; null for a genderless species. */
  femaleRatioEighths: number | null;
  /* False before Generation II, which has no gender. */
  hasGender: boolean;
  /* In place of eggs when the game has none, with the entry where they arrive. */
  note: PokemonDetailMechanicNote | null;
  noteHref?: string | null;
};

const Fact = ({
  children,
  className,
  label,
}: {
  children: ReactNode;
  className?: string;
  label: string;
}) => {
  return (
    <div className={cn("min-w-0", className)}>
      <dt className="text-ink-2 text-12 font-bold">{label}</dt>
      <dd className="text-16 mt-0.5 font-extrabold">{children}</dd>
    </div>
  );
};

type PokemonDetailTrainingCardProps = {
  /* In place of the values when the form arrives after this game. */
  note: PokemonDetailMechanicNote | null;
  noteHref?: string | null;
  /* The values this game reads for the form; null when it has none by then. */
  training: PokemonDetailTraining | null;
};

/*
 * What defeating and raising it gives in this game: the EV yield where the
 * game counts one (not Let's Go or Legends: Arceus, nor Generation I and II),
 * the catch rate, base friendship (none in Generation I), base experience
 * and the growth rate with what level 100 takes on it. A form the game
 * doesn't have yet shows the note with the generation it arrives in.
 */
export const PokemonDetailTrainingCard = ({
  note,
  noteHref,
  training,
}: PokemonDetailTrainingCardProps) => {
  if (!training && note) {
    return (
      <DetailSectionCard
        id="training"
        title="Training"
        contentClassName="flex flex-1 flex-col"
      >
        <PokemonDetailMechanicNoteCard
          arrivesHref={noteHref}
          layout="fill"
          note={note}
        />
      </DetailSectionCard>
    );
  }

  return (
    <DetailSectionCard id="training" title="Training">
      <dl className="grid grid-cols-2 gap-x-4 gap-y-2.5">
        {training?.evYield ? (
          <Fact label="EV yield">
            {training.evYield.length ? formatEvYield(training.evYield) : "None"}
          </Fact>
        ) : null}
        <Fact label="Catch rate">
          {training ? training.catchRate : <CodexPendingValue />}
        </Fact>
        {training?.baseFriendship !== null ? (
          <Fact label="Base friendship">
            {training ? training.baseFriendship : <CodexPendingValue />}
          </Fact>
        ) : null}
        <Fact label="Base experience">
          {training ? training.baseExperience : <CodexPendingValue />}
        </Fact>
        {/* Its own row: the total at level 100 is too long for half a card. */}
        <Fact label="Growth rate" className="col-span-2">
          {training?.growthRate ? (
            <>
              {training.growthRate.name}
              <span className="text-ink-2 text-13 block font-semibold">
                {training.growthRate.levelOneHundredExperience.toLocaleString(
                  "en",
                )}{" "}
                Exp. at level 100
              </span>
            </>
          ) : (
            <CodexPendingValue />
          )}
        </Fact>
      </dl>
    </DetailSectionCard>
  );
};

/*
 * The gender ratio: the split in words over a bar of the male share (v3's
 * ratio bar), or one symbol and word for a single gender or none.
 */
const GenderRatio = ({
  femaleRatioEighths,
}: {
  femaleRatioEighths: number | null;
}) => {
  const ratio = getPokemonDetailGenderRatio(femaleRatioEighths);

  if (ratio.kind === "genderless") {
    return (
      <span className="inline-flex items-center gap-1.5">
        <GenderIcon gender="genderless" />
        Genderless
      </span>
    );
  }

  if (ratio.kind === "single") {
    return (
      <span className="inline-flex items-center gap-1.5">
        <GenderIcon gender={ratio.gender} />
        {ratio.gender === "male" ? "Male only" : "Female only"}
      </span>
    );
  }

  const male = formatRatioPercent(ratio.malePercent);
  const female = formatRatioPercent(ratio.femalePercent);

  return (
    <div className="flex flex-col gap-1.5">
      <span className="flex items-center justify-between gap-3">
        <span className="inline-flex items-center gap-1">
          <GenderIcon gender="male" />
          {male}% male
        </span>
        <span className="inline-flex items-center gap-1">
          <GenderIcon gender="female" />
          {female}% female
        </span>
      </span>
      <Meter
        aria-label="Share that is male"
        fill="var(--calm-ink)"
        value={ratio.malePercent}
        valueText={`${male}% male, ${female}% female`}
      />
    </div>
  );
};

/*
 * Eggs and gender, one fact a line. A game without eggs shows the note in
 * their place, keeping Gender where the game has it (Let's Go).
 */
export const PokemonDetailBreedingCard = ({
  eggCycles,
  eggGroups,
  femaleRatioEighths,
  hasGender,
  note,
  noteHref,
}: PokemonDetailBreedingCardProps) => {
  return (
    <DetailSectionCard
      id="breeding"
      title="Breeding"
      contentClassName="flex flex-1 flex-col gap-3"
    >
      {note ? (
        <PokemonDetailMechanicNoteCard
          arrivesHref={noteHref}
          layout={hasGender ? "row" : "fill"}
          note={note}
        />
      ) : null}
      {!note || hasGender ? (
        <dl className="grid grid-cols-1 gap-y-2.5">
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
              <Fact label="Egg cycles">{eggCycles}</Fact>
            </>
          )}
          {hasGender ? (
            <Fact label="Gender">
              <GenderRatio femaleRatioEighths={femaleRatioEighths} />
            </Fact>
          ) : null}
        </dl>
      ) : null}
    </DetailSectionCard>
  );
};
