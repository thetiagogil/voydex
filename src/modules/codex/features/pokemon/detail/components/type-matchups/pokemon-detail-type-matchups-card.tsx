import type { ReactNode } from "react";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import type {
  PokemonDetailTypeMatchup,
  PokemonDetailTypeMatchups,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
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
    return <p className="text-13 text-ink-2 pt-1 font-semibold">Nothing</p>;
  }

  return (
    <ul className="flex flex-wrap gap-1.5">
      {matchups.map((matchup) => {
        const isQuadruple = tone === "weak" && matchup.multiplier >= 4;

        return (
          <li
            key={matchup.attackingType}
            className={cn(
              "text-13 inline-flex items-center gap-1.5 rounded-full py-[3px] pr-2.5 pl-[3px] font-extrabold",
              isQuadruple ? "bg-danger-soft" : "bg-surface-2",
            )}
          >
            <PokemonTypeMark
              type={matchup.attackingType}
              className="size-5.5"
              iconClassName="size-3"
            />
            {matchup.typeLabel}
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

/* v3's matchups: what hurts, what doesn't and how many types hit normally. */
export const PokemonDetailTypeMatchupsCard = ({
  matchups,
  pokemonName,
}: PokemonDetailTypeMatchupsCardProps) => {
  const { immunities, neutralCount, resistances, weaknesses } = matchups;

  return (
    <DetailSectionCard
      title="Type matchups"
      aside={`When ${pokemonName} is hit`}
    >
      <dl>
        <MatchupRow label="Weak to">
          <MatchupChips matchups={weaknesses} tone="weak" />
        </MatchupRow>
        <MatchupRow label="Resists">
          <MatchupChips matchups={resistances} tone="resist" />
        </MatchupRow>
        {immunities.length ? (
          <MatchupRow label="Immune to">
            <MatchupChips matchups={immunities} tone="resist" />
          </MatchupRow>
        ) : null}
        {neutralCount ? (
          <MatchupRow label="Neutral">
            <p className="text-13 text-ink-2 font-semibold sm:pt-1">
              {neutralCount === 1
                ? "1 other type deals normal damage"
                : `${neutralCount} other types deal normal damage`}
            </p>
          </MatchupRow>
        ) : null}
      </dl>
    </DetailSectionCard>
  );
};
