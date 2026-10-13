import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import {
  getPokemonDetailStatBarWidth,
  getPokemonDetailStatsTotal,
  MAX_POKEMON_BASE_STAT,
  type PokemonDetailStat,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

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
    <PokemonDetailSectionCard
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
            <span
              role="meter"
              aria-label={`${stat.label} base stat`}
              aria-valuemin={0}
              aria-valuemax={MAX_POKEMON_BASE_STAT}
              aria-valuenow={stat.value}
              aria-valuetext={String(stat.value)}
              className="bg-track h-3.5 overflow-hidden rounded-full shadow-[inset_0_2px_0_var(--lip)]"
            >
              <span
                className="block h-full rounded-full bg-(--t) shadow-[inset_0_-3px_0_color-mix(in_oklab,var(--t)_84%,var(--ink))]"
                style={{ width: getPokemonDetailStatBarWidth(stat.value) }}
              />
            </span>
          </div>
        ))}
      </div>
      <div className="border-line mt-2.5 flex justify-between border-t pt-3 font-extrabold">
        <span>Total</span>
        <span className="tabular-nums">
          {getPokemonDetailStatsTotal(stats)}
        </span>
      </div>
    </PokemonDetailSectionCard>
  );
};
