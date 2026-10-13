import { PokemonDetailGenerationMenu } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-menu";
import { PokemonDetailSpeciesSelector } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";

type PokemonDetailHeadProps = {
  activeGameSlug: string | null;
  activePokemon: {
    name: string;
    slug: string;
  };
  generations: PokemonDetailGenerationNavigationItem[];
};

/*
 * v3's Codex head: the crumb, ending in the Pokémon's name (it opens the
 * picker), and the generation pills on the right.
 */
export const PokemonDetailHead = ({
  activeGameSlug,
  activePokemon,
  generations,
}: PokemonDetailHeadProps) => {
  return (
    <div className="flex flex-wrap items-center gap-x-4.5 gap-y-3">
      <div className="flex min-w-0 flex-wrap items-center gap-x-2 gap-y-1">
        <CodexHead />
        <div className="text-14 text-ink-3 flex min-w-0 items-center gap-0.5 pt-2.5 font-bold">
          <span aria-hidden>/</span>
          <PokemonDetailSpeciesSelector
            activeGameSlug={activeGameSlug}
            activePokemon={activePokemon}
          />
        </div>
      </div>
      <div className="w-full min-w-0 md:ml-auto md:w-auto">
        <PokemonDetailGenerationMenu generations={generations} />
      </div>
    </div>
  );
};
