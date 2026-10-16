import type {
  PokemonDetailTypeMatchup,
  PokemonDetailTypeMatchups,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { cn } from "@/shared/utils/cn";

type PokemonDetailTypeMatchupsCardProps = {
  matchups: PokemonDetailTypeMatchups;
  pokemonName: string;
};

/*
 * What a tile says: hurt more (2×, 4× the stronger), hurt less (½, ¼), not
 * at all (0), or normally, which stays quiet so the rest stand out.
 */
const getMatchupToneClassName = (multiplier: number) => {
  if (multiplier >= 4) {
    return "bg-danger text-white";
  }

  if (multiplier > 1) {
    return "bg-danger-soft text-danger-deep";
  }

  if (multiplier === 0) {
    return "bg-calm-soft text-calm-ink";
  }

  if (multiplier < 1) {
    return "bg-ok-soft text-ok-deep";
  }

  return "bg-surface-2 text-ink-3";
};

/* The key under the chart: what each tile colour means. */
const matchupKey = [
  { className: getMatchupToneClassName(2), label: "Takes more damage" },
  { className: getMatchupToneClassName(0.5), label: "Takes less" },
  { className: getMatchupToneClassName(0), label: "No effect" },
  { className: getMatchupToneClassName(1), label: "Normal" },
];

const getMatchupDescription = ({
  multiplier,
  multiplierLabel,
  typeLabel,
}: PokemonDetailTypeMatchup) => {
  if (multiplier === 0) {
    return `${typeLabel}: no effect`;
  }

  return multiplier === 1
    ? `${typeLabel}: normal damage`
    : `${typeLabel}: ${multiplierLabel} damage`;
};

/*
 * The type chart against this Pokémon: one tile per attacking type of the
 * generation, always in chart order, so each type sits in the same place on
 * every entry. Its icon over the damage it deals; a tile that hurts more is
 * red, one that hurts less green, and normal damage stays quiet.
 */
export const PokemonDetailTypeMatchupsCard = ({
  matchups,
  pokemonName,
}: PokemonDetailTypeMatchupsCardProps) => {
  return (
    <DetailSectionCard
      title="Type matchups"
      aside={`When ${pokemonName} is hit`}
      contentClassName="flex flex-1 flex-col"
    >
      {/* Beside the taller stat shape, the tiles grow to fill the card. */}
      <ul className="grid flex-1 auto-rows-fr grid-cols-6 gap-1.5 sm:gap-2">
        {matchups.all.map((matchup) => (
          <li
            key={matchup.attackingType}
            aria-label={getMatchupDescription(matchup)}
            title={getMatchupDescription(matchup)}
            className={cn(
              "flex min-w-0 flex-col items-center justify-center gap-1.5 rounded-md px-1 pt-2.5 pb-2 sm:pt-3.5 sm:pb-3",
              getMatchupToneClassName(matchup.multiplier),
            )}
          >
            <PokemonTypeMark
              type={matchup.attackingType}
              className={cn(
                "size-7 sm:size-8",
                matchup.multiplier === 1 && "opacity-55",
              )}
              iconClassName="size-3.5"
            />
            <span className="text-14 leading-none font-extrabold tabular-nums">
              {matchup.multiplier === 1 ? "1" : matchup.multiplierLabel}
            </span>
          </li>
        ))}
      </ul>
      <ul
        aria-hidden
        className="text-13 text-ink-2 mt-4 flex flex-wrap gap-x-4 gap-y-1.5 font-semibold"
      >
        {matchupKey.map(({ className, label }) => (
          <li key={label} className="inline-flex items-center gap-1.5">
            <span
              className={cn(
                "size-3 rounded-full border border-current",
                className,
              )}
            />
            {label}
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
