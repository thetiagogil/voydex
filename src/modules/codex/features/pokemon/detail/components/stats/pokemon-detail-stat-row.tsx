import {
  getPokemonDetailStatBarWidth,
  MAX_POKEMON_BASE_STAT,
  type PokemonDetailStatDefinition,
} from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";

type PokemonDetailStatRowProps = {
  stat: PokemonDetailStatDefinition;
  value: number;
};

export const PokemonDetailStatRow = ({
  stat,
  value,
}: PokemonDetailStatRowProps) => {
  return (
    <div className="grid grid-cols-[4.75rem_3rem_minmax(0,1fr)] items-center gap-3">
      <div className="text-foreground truncate text-sm">{stat.label}</div>
      <div className="text-foreground text-right text-sm font-medium tabular-nums">
        {value}
      </div>
      <div
        aria-label={`${stat.label} base stat ${value}`}
        aria-valuemax={MAX_POKEMON_BASE_STAT}
        aria-valuemin={0}
        aria-valuenow={value}
        className="bg-muted/45 h-2 overflow-hidden rounded-full"
        role="meter"
      >
        <div
          className="bg-primary/75 h-full rounded-full"
          style={{
            width: getPokemonDetailStatBarWidth(value, MAX_POKEMON_BASE_STAT),
          }}
        />
      </div>
    </div>
  );
};
