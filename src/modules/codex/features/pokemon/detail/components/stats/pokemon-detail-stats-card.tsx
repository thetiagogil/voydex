import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  getPokemonDetailStatsTotal,
  POKEMON_DETAIL_STAT_BAR_FULL_AT,
  POKEMON_DETAIL_STAT_TOTAL_FULL_AT_EACH,
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
 * Base stats as v3's bars, filled in the Pokémon's own type colour, in tight
 * rows; the best stat reads bold. The total sits in the same columns with its
 * own bar in the type's deep shade.
 */
export const PokemonDetailStatsCard = ({
  generationName,
  stats,
  type,
}: PokemonDetailStatsCardProps) => {
  const best = Math.max(...stats.map((stat) => stat.value));
  const total = getPokemonDetailStatsTotal(stats);

  return (
    <DetailSectionCard
      id="base-stats"
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
      {/* The total in the same columns, its bar in the type's deep shade. */}
      <div className="mt-1.5 grid grid-cols-[64px_36px_minmax(0,1fr)] items-center gap-2.5 pt-2 sm:grid-cols-[78px_44px_minmax(0,1fr)] sm:gap-3">
        <span className="text-14 text-ink font-extrabold">Total</span>
        <span className="text-right font-extrabold tabular-nums">{total}</span>
        <Meter
          aria-label="Base stat total"
          fill="color-mix(in oklab, var(--t) 62%, var(--ink))"
          max={stats.length * POKEMON_DETAIL_STAT_TOTAL_FULL_AT_EACH}
          value={total}
          valueText={String(total)}
        />
      </div>
    </DetailSectionCard>
  );
};
