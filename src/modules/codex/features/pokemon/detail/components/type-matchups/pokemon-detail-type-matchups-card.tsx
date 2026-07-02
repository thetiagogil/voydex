import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import { PokemonDetailTypeMatchupSection } from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchup-section";
import {
  getPokemonDetailDefendingTypes,
  getPokemonDetailTypeMatchupSections,
} from "@/modules/codex/features/pokemon/detail/components/type-matchups/pokemon-detail-type-matchups-model";
import type { Generation, PokemonTypePair } from "@/modules/codex/shared/types";
import { Separator } from "@/shared/components/ui/separator";
import { getDefensivePokemonTypeMatchups } from "@/shared/domain/pokemon/type-effectiveness";

type PokemonDetailTypeMatchupsCardProps = {
  generation: Generation;
  typePair: PokemonTypePair | null;
};

export const PokemonDetailTypeMatchupsCard = ({
  generation,
  typePair,
}: PokemonDetailTypeMatchupsCardProps) => {
  const defendingTypes = getPokemonDetailDefendingTypes(typePair);

  if (!defendingTypes.length) {
    return null;
  }

  const matchups = getDefensivePokemonTypeMatchups(
    defendingTypes,
    generation.sort_order,
  );
  const sections = getPokemonDetailTypeMatchupSections(matchups);

  return (
    <PokemonDetailSectionCard
      title="Type Matchups"
      className="h-full"
      contentClassName="p-0"
    >
      {sections.map((section, index) => (
        <div key={section.id}>
          <PokemonDetailTypeMatchupSection section={section} />
          {index < sections.length - 1 ? (
            <Separator className="bg-app-surface-border/60" />
          ) : null}
        </div>
      ))}
    </PokemonDetailSectionCard>
  );
};
