import { PokemonDetailStatsTable } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-table";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type { Generation, PokemonAttributes } from "@/modules/reference/types";

type PokemonDetailStatsCardProps = {
  attributes: PokemonAttributes | null;
  generation: Generation;
};

export const PokemonDetailStatsCard = ({
  attributes,
  generation,
}: PokemonDetailStatsCardProps) => {
  if (!attributes) {
    return null;
  }

  return (
    <PokemonDetailSectionCard
      title="Battle Stats"
      className="h-full"
      showSeparator
    >
      <PokemonDetailStatsTable
        attributes={attributes}
        generation={generation}
      />
    </PokemonDetailSectionCard>
  );
};
