import { PokemonDetailCoreDataCard } from "@/modules/codex/features/pokemon/detail/components/core-data/pokemon-detail-core-data-card";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

type PokemonDetailRightSectionProps = {
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailRightSection = ({
  scope,
}: PokemonDetailRightSectionProps) => {
  return (
    <section className="flex min-w-0 flex-col gap-2">
      <PokemonDetailCoreDataCard form={scope.form} />
    </section>
  );
};
