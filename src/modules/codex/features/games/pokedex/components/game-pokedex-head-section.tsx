import { appRoutes } from "@/config/routes";
import {
  getPokedexShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

type GamePokedexHeadSectionProps = {
  data: GamePokedexData;
};

/*
 * v3's Pokédex head, on the page's band as the Codex's other entries are
 * (no game tint), laid out as a Play's Pokédex is: the Pokédex's name and
 * one sentence on what it lists, with the switch between the group's
 * Pokédexes, its expansions' (Galar, Isle of Armor, Crown Tundra) and its
 * own National Pokédex on the right. The path above already names the game.
 */
export const GamePokedexHeadSection = ({
  data,
}: GamePokedexHeadSectionProps) => {
  const versionGroupTitle = getVersionGroupTitle(data.versionGroup.name);

  return (
    <section aria-labelledby="game-pokedex-title">
      <PageHeader
        headingId="game-pokedex-title"
        title={formatPokedexName(data.pokedex.name)}
        className="sm:flex-wrap"
        description={
          <>
            The{" "}
            <b className="text-ink font-extrabold tabular-nums">
              {data.entries.length.toLocaleString()}
            </b>{" "}
            Pokémon in this Pokédex, numbered the way the game lists them.
          </>
        }
        action={
          data.pokedexes.length > 1 ? (
            <SegmentedControl
              ariaLabel={`Pokédexes in ${versionGroupTitle}`}
              selectedTone="strong"
              className="no-scrollbar -mx-4 w-[calc(100%+2rem)] max-w-none flex-nowrap overflow-x-auto px-4 py-1.5 sm:mx-0 sm:w-auto sm:max-w-full sm:flex-wrap sm:overflow-visible sm:px-0 sm:py-0"
              value={data.pokedex.slug}
              options={data.pokedexes.map((pokedex) => ({
                count: data.pokemonCountByPokedexId[pokedex.id],
                href: appRoutes.codexVersionGroupPokedex(
                  data.versionGroup.slug,
                  pokedex.slug,
                ),
                label: getPokedexShortName(formatPokedexName(pokedex.name)),
                value: pokedex.slug,
              }))}
            />
          ) : null
        }
      />
    </section>
  );
};
