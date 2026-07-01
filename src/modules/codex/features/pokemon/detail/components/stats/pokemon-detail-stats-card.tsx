import { PokemonDetailStatsTable } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-table";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type {
  Generation,
  PokemonAttributes,
} from "@/modules/codex/shared/types";
import { appIcons } from "@/shared/components/app-icon";

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
      icon={appIcons.product.stats}
      title="Battle Stats"
      className="h-full"
    >
      <PokemonDetailStatsTable
        attributes={attributes}
        generation={generation}
      />
    </PokemonDetailSectionCard>
  );
};
