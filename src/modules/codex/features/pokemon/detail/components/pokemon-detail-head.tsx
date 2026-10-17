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
 * the path. The entry reads by generation; under the pills, in quiet text
 * with a hairline between each, the games of it the Pokémon (or this form)
 * is in, so a form found in one game
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
          <p className="text-13 text-ink-3 flex items-start gap-2 leading-5 font-semibold md:justify-end">
            <span>In</span>
            {/*
             * Each game leads with its hairline, and the list sits a
             * hairline's space left of its clip, so no line, first or
             * wrapped, ever starts with one.
             */}
            <span className="min-w-0 overflow-hidden">
              <span className="-ml-[9px] flex flex-wrap gap-x-2 gap-y-0.5 md:justify-end">
                {gameNames.map((gameName) => (
                  <span
                    key={gameName}
                    className="inline-flex items-center gap-2"
                  >
                    <span aria-hidden className="bg-ink-3/45 h-3.5 w-px" />
                    {gameName}
                  </span>
                ))}
              </span>
            </span>
          </p>
        ) : null}
      </div>
    </div>
  );
};
