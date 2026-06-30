import { PokemonDetailGenerationMenu } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-menu";
import { PokemonDetailSpeciesSelector } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";

type PokemonDetailTopSectionProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
  generations: PokemonDetailGenerationNavigationItem[];
};

export const PokemonDetailTopSection = ({
  activeGameSlug,
  activePokemon,
  generations,
}: PokemonDetailTopSectionProps) => {
  return (
    <section className="ring-app-surface-border bg-card/76 rounded-xl p-3 shadow-(--app-surface-shadow) ring-1 backdrop-blur-xl sm:p-5">
      <div className="flex min-w-0 flex-col items-start gap-3 sm:gap-4 lg:flex-row lg:items-center lg:justify-between">
        <PokemonDetailSpeciesSelector
          activeGameSlug={activeGameSlug}
          activePokemon={activePokemon}
        />

        <PokemonDetailGenerationMenu generations={generations} />
      </div>
    </section>
  );
};
