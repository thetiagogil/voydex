import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  getPokemonDetailStatsTotal,
  POKEMON_DETAIL_STAT_BAR_FULL_AT,
  type PokemonDetailStat,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Meter } from "@/shared/components/ui/meter";
import { cn } from "@/shared/utils/cn";

type PokemonDetailStatsCardProps = {
  generationName: string;
  stats: PokemonDetailStat[];
  type: PokemonTypeSlug | null;
};

/*
 * Where a stat stands out: 120 and up is high, 50 and under low. Only the
 * figure takes the colour, so the bars stay the Pokémon's own.
 */
const getStatValueClassName = (value: number) => {
  if (value >= 120) {
    return "text-ok-deep";
  }

  return value <= 50 ? "text-danger" : null;
};

/*
 * Base stats as v3's bars, filled in the Pokémon's own type colour, in tight
 * rows: the best stat reads bold, and a very high or very low figure takes a
 * quiet tint.
 */
export const PokemonDetailStatsCard = ({
  generationName,
  stats,
  type,
}: PokemonDetailStatsCardProps) => {
  const best = Math.max(...stats.map((stat) => stat.value));

  return (
    <DetailSectionCard
      title="Base stats"
      aside={generationName}
      style={getPokemonTypeCssVariables(type)}
    >
      <div>
        {stats.map((stat) => (
          <div
            key={stat.key}
            className="grid grid-cols-[64px_36px_minmax(0,1fr)] items-center gap-2.5 py-1 sm:grid-cols-[78px_44px_minmax(0,1fr)] sm:gap-3"
          >
            <span
              className={cn(
                "text-14 font-bold",
                stat.value === best ? "text-ink font-extrabold" : "text-ink-2",
              )}
            >
              {stat.label}
            </span>
            <span
              className={cn(
                "text-right tabular-nums",
                stat.value === best ? "font-extrabold" : "font-semibold",
                getStatValueClassName(stat.value),
              )}
            >
              {stat.value}
            </span>
            <Meter
              aria-label={`${stat.label} base stat`}
              fill="var(--t)"
              max={POKEMON_DETAIL_STAT_BAR_FULL_AT}
              value={stat.value}
              valueText={String(stat.value)}
            />
          </div>
        ))}
      </div>
      <div className="mt-1.5 flex justify-between pt-2 font-extrabold">
        <span>Total</span>
        <span className="tabular-nums">
          {getPokemonDetailStatsTotal(stats)}
        </span>
      </div>
    </DetailSectionCard>
  );
};
