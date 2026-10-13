import { appRoutes } from "@/config/routes";
import {
  getPokedexShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type GamePokedexHeadSectionProps = {
  data: GamePokedexData;
};

/*
 * v3's Pokédex head, cream in the Codex: the version group, the Pokédex's
 * name, one sentence on what it lists, and a switch between the group's
 * Pokédexes, its expansions' (Galar, Isle of Armor, Crown Tundra) and its
 * own National Pokédex.
 */
export const GamePokedexHeadSection = ({
  data,
}: GamePokedexHeadSectionProps) => {
  const versionGroupTitle = getVersionGroupTitle(data.versionGroup.name);

  return (
    <section
      aria-labelledby="game-pokedex-title"
      data-slot="card"
      className={cn(cardVariants(), "mt-5 gap-0 px-5 py-6 sm:px-7 sm:py-6.5")}
    >
      <p className="text-13 text-ink-2 font-bold">
        {versionGroupTitle} · {data.generation.name}
      </p>
      <h1
        id="game-pokedex-title"
        className="text-32 sm:text-44 mt-1 mb-2 leading-[1.05] tracking-[-0.02em]"
      >
        {formatPokedexName(data.pokedex.name)}
      </h1>
      <p className="text-ink-2 text-16 font-semibold">
        The{" "}
        <b className="text-ink font-extrabold tabular-nums">
          {data.entries.length.toLocaleString()}
        </b>{" "}
        Pokémon in this Pokédex, numbered the way the game lists them.
      </p>
      {data.pokedexes.length > 1 ? (
        <SegmentedControl
          ariaLabel={`Pokédexes in ${versionGroupTitle}`}
          className="mt-4.5"
          value={data.pokedex.slug}
          options={data.pokedexes.map((pokedex) => ({
            href: appRoutes.codexVersionGroupPokedex(
              data.versionGroup.slug,
              pokedex.slug,
            ),
            label: getPokedexShortName(formatPokedexName(pokedex.name)),
            value: pokedex.slug,
          }))}
        />
      ) : null}
    </section>
  );
};
