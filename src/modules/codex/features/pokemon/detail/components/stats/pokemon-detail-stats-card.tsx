import { DetailSectionCard } from "@/shared/components/detail-section-card";
import {
  getPokemonDetailStatsTotal,
  POKEMON_DETAIL_STAT_BAR_FULL_AT,
  type PokemonDetailStat,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Meter } from "@/shared/components/ui/meter";

type PokemonDetailStatsCardProps = {
  generationName: string;
  stats: PokemonDetailStat[];
  type: PokemonTypeSlug | null;
};

/* Base stats as v3's bars, filled in the Pokémon's own type colour. */
export const PokemonDetailStatsCard = ({
  generationName,
  stats,
  type,
}: PokemonDetailStatsCardProps) => {
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
            className="grid grid-cols-[64px_36px_minmax(0,1fr)] items-center gap-2.5 py-[7px] sm:grid-cols-[78px_44px_minmax(0,1fr)] sm:gap-3"
          >
            <span className="text-14 text-ink-2 font-bold">{stat.label}</span>
            <span className="text-right font-extrabold tabular-nums">
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
      <div className="mt-2.5 flex justify-between pt-3 font-extrabold">
        <span>Total</span>
        <span className="tabular-nums">
          {getPokemonDetailStatsTotal(stats)}
        </span>
      </div>
    </DetailSectionCard>
  );
};
