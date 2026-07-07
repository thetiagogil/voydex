import { PokemonDetailStatsTable } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-table";
import { CodexDetailSectionCard } from "@/modules/codex/shared/components/codex-detail-section-card";
import type {
  Generation,
  PokemonAttributes,
} from "@/modules/codex/shared/types";

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
    <CodexDetailSectionCard title="Battle Stats" className="h-full">
      <PokemonDetailStatsTable
        attributes={attributes}
        generation={generation}
      />
    </CodexDetailSectionCard>
  );
};
