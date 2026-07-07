import { PokemonDetailStatsTable } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-table";
import type {
  Generation,
  PokemonAttributes,
} from "@/modules/codex/shared/types";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

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
    <DetailSectionCard title="Battle Stats" className="h-full" showSeparator>
      <PokemonDetailStatsTable
        attributes={attributes}
        generation={generation}
      />
    </DetailSectionCard>
  );
};
