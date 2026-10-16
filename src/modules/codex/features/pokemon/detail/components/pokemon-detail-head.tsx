import { appRoutes } from "@/config/routes";
import { PokemonDetailSpeciesSelector } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector";
import { CodexGenerationPills } from "@/modules/codex/shared/components/codex-generation-pills";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import type { SegmentedControlOption } from "@/shared/components/segmented-control";

type PokemonDetailHeadProps = {
  activePokemon: {
    name: string;
    slug: string;
  };
  activeVersionGroupSlug: string;
  generationOptions: SegmentedControlOption<string>[];
  generationSlug: string;
};

/*
 * v3's Codex head: the path back to Pokémon, ending in the Pokémon's name
 * (it opens the picker), and the generation pills on the right, level with
 * the path. The entry reads by generation; only the learnset picks a game.
 */
export const PokemonDetailHead = ({
  activePokemon,
  activeVersionGroupSlug,
  generationOptions,
  generationSlug,
}: PokemonDetailHeadProps) => {
  return (
    <div className="flex flex-wrap items-center gap-x-4.5 gap-y-3 lg:items-start">
      <div className="min-w-0">
        <CodexHead
          trail={[{ href: appRoutes.codexPokemon, label: "Pokémon" }]}
          trailEnd={
            <PokemonDetailSpeciesSelector
              activePokemon={activePokemon}
              activeVersionGroupSlug={activeVersionGroupSlug}
            />
          }
        />
      </div>
      <div className="flex w-full min-w-0 md:ml-auto md:w-auto lg:pt-3.5">
        <CodexGenerationPills
          options={generationOptions}
          selectedTone="strong"
          value={generationSlug}
        />
      </div>
    </div>
  );
};
