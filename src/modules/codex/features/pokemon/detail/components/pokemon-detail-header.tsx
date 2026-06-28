import { PokemonDetailGenerationMenu } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-generation-menu";
import { PokemonDetailSpeciesSelector } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-species-selector";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";

type PokemonDetailHeaderProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    nationalNumber: number;
    slug: string;
  };
  generations: PokemonDetailGenerationNavigationItem[];
};

export const PokemonDetailHeader = ({
  activeGameSlug,
  activePokemon,
  generations,
}: PokemonDetailHeaderProps) => {
  return (
    <section className="ring-app-surface-border bg-card/76 rounded-xl p-4 shadow-(--app-surface-shadow) ring-1 backdrop-blur-xl sm:p-5">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
        <PokemonDetailSpeciesSelector
          activeGameSlug={activeGameSlug}
          activePokemon={activePokemon}
        />

        <PokemonDetailGenerationMenu generations={generations} />
      </div>
    </section>
  );
};
