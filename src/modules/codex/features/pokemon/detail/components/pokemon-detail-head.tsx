import { PokemonDetailSpeciesSelector } from "@/modules/codex/features/pokemon/detail/components/species-selector/pokemon-detail-species-selector";
import { CodexGenerationPills } from "@/modules/codex/shared/components/codex-generation-pills";
import { CodexHead } from "@/modules/codex/shared/components/codex-head";
import {
  SegmentedControl,
  type SegmentedControlOption,
} from "@/shared/components/segmented-control";

type PokemonDetailHeadProps = {
  activePokemon: {
    name: string;
    slug: string;
  };
  activeVersionGroupSlug: string;
  generationOptions: SegmentedControlOption<string>[];
  generationSlug: string;
  versionGroupOptions: SegmentedControlOption<string>[];
};

/*
 * v3's Codex head: the crumb, ending in the Pokémon's name (it opens the
 * picker), and the generation pills on the right, level with the crumb's
 * switch. When the generation has several version groups, their switch sits
 * under the pills.
 */
export const PokemonDetailHead = ({
  activePokemon,
  activeVersionGroupSlug,
  generationOptions,
  generationSlug,
  versionGroupOptions,
}: PokemonDetailHeadProps) => {
  return (
    <div className="flex flex-wrap items-center gap-x-4.5 gap-y-3 lg:items-start">
      <div className="min-w-0">
        <CodexHead
          trailEnd={
            <PokemonDetailSpeciesSelector
              activePokemon={activePokemon}
              activeVersionGroupSlug={activeVersionGroupSlug}
            />
          }
        />
      </div>
      <div className="flex w-full min-w-0 flex-col gap-2.5 md:ml-auto md:w-auto md:items-end lg:pt-3.5">
        <CodexGenerationPills
          options={generationOptions}
          selectedTone="strong"
          value={generationSlug}
        />
        {versionGroupOptions.length ? (
          <SegmentedControl
            ariaLabel="Version group"
            size="sm"
            variant="segment"
            className="no-scrollbar max-sm:flex-nowrap max-sm:overflow-x-auto max-sm:[&>*]:shrink-0"
            options={versionGroupOptions}
            value={activeVersionGroupSlug}
          />
        ) : null}
      </div>
    </div>
  );
};
