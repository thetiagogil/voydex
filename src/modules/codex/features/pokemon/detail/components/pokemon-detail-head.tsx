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
  /* The games of the generation the entry covers, as in "Sword and Shield". */
  gameNames: string[];
  generationOptions: SegmentedControlOption<string>[];
  generationSlug: string;
};

/*
 * v3's Codex head: the path back to Pokémon, ending in the Pokémon's name
 * (it opens the picker), and the generation pills on the right, level with
 * the path. The entry reads by generation; under the pills, quietly, the
 * games of it the Pokémon (or this form) is in, so a form found in one game
 * only (Hisuian Arcanine in Legends: Arceus) says so.
 */
export const PokemonDetailHead = ({
  activePokemon,
  activeVersionGroupSlug,
  gameNames,
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
      <div className="flex w-full min-w-0 flex-col gap-2 md:ml-auto md:w-auto md:items-end lg:pt-3.5">
        <CodexGenerationPills
          options={generationOptions}
          selectedTone="strong"
          value={generationSlug}
        />
        {gameNames.length ? (
          <p className="text-13 text-ink-3 font-semibold md:text-right">
            <span className="text-ink-2 font-bold">In </span>
            {gameNames.join(" · ")}
          </p>
        ) : null}
      </div>
    </div>
  );
};
