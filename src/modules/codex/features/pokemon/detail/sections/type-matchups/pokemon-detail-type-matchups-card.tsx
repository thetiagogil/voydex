import type { ReactNode } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type {
  PokemonDetailTypeMatchup,
  PokemonDetailTypeMatchups,
} from "@/modules/codex/features/pokemon/detail/sections/type-matchups/pokemon-detail-type-matchups-model";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { cn } from "@/shared/utils/cn";

type PokemonDetailTypeMatchupsCardProps = {
  matchups: PokemonDetailTypeMatchups;
  pokemonName: string;
};

type MatchupTone = "resist" | "weak";

const MatchupChips = ({
  matchups,
  tone,
}: {
  matchups: PokemonDetailTypeMatchup[];
  tone: MatchupTone;
}) => {
  if (!matchups.length) {
    return (
      <p className="text-14 text-ink-3 flex h-7.5 items-center font-semibold">
        None
      </p>
    );
  }

  return (
    <ul className="flex flex-wrap gap-1.5">
      {matchups.map((matchup) => {
        const isQuadruple = tone === "weak" && matchup.multiplier >= 4;

        return (
          <li
            key={matchup.attackingType}
            aria-label={`${matchup.typeLabel} ${matchup.multiplierLabel}`}
            title={matchup.typeLabel}
            className={cn(
              "text-13 inline-flex items-center gap-1 rounded-full py-[3px] pr-2 pl-[3px] font-extrabold",
              isQuadruple ? "bg-danger-soft" : "bg-surface-2",
            )}
          >
            <PokemonTypeMark
              type={matchup.attackingType}
              className="size-6"
              iconClassName="size-3.5"
            />
            <b
              className={cn(
                "pl-0.5 tabular-nums",
                tone === "resist" && "text-ok",
                tone === "weak" &&
                  (isQuadruple ? "text-danger-deep" : "text-danger"),
              )}
            >
              {matchup.multiplierLabel}
            </b>
          </li>
        );
      })}
    </ul>
  );
};

const MatchupRow = ({
  children,
  label,
}: {
  children: ReactNode;
  label: string;
}) => {
  return (
    <div className="grid gap-1.5 py-3 first:pt-0 last:pb-0 sm:grid-cols-[96px_minmax(0,1fr)] sm:gap-3">
      <dt className="text-ink-2 text-12 font-bold sm:pt-1.5">{label}</dt>
      <dd>{children}</dd>
    </div>
  );
};

/*
 * v3's matchups, compact: what hurts and what doesn't as type marks with
 * their multiplier (the type's name on hover and read out), then how many
 * types hit normally as one quiet line.
 */
export const PokemonDetailTypeMatchupsCard = ({
  matchups,
  pokemonName,
}: PokemonDetailTypeMatchupsCardProps) => {
  const { immunities, neutralCount, resistances, weaknesses } = matchups;

  return (
    <DetailSectionCard
      id="type-matchups"
      title="Type matchups"
      aside={`When ${pokemonName} is hit`}
      contentClassName="flex flex-1 flex-col"
    >
      {/* The rows share the card's height beside Base stats. */}
      <dl className="flex flex-1 flex-col justify-between">
        <MatchupRow label="Weak to">
          <MatchupChips matchups={weaknesses} tone="weak" />
        </MatchupRow>
        <MatchupRow label="Resists">
          <MatchupChips matchups={resistances} tone="resist" />
        </MatchupRow>
        {/* Always shown, saying "None" when it has none, so every entry reads the same four rows. */}
        <MatchupRow label="Immune to">
          <MatchupChips matchups={immunities} tone="resist" />
        </MatchupRow>
        {neutralCount ? (
          <MatchupRow label="Normal">
            <p className="text-14 text-ink-3 flex h-7.5 items-center font-semibold">
              {neutralCount === 1
                ? "1 other type"
                : `${neutralCount} other types`}
            </p>
          </MatchupRow>
        ) : null}
      </dl>
    </DetailSectionCard>
  );
};
