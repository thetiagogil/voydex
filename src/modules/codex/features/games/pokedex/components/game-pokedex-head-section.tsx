import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { getPokedexShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { cardVariants } from "@/shared/components/ui/card";
import { cn } from "@/shared/utils/cn";

type GamePokedexHeadSectionProps = {
  data: GamePokedexData;
};

/*
 * v3's Pokédex head, cream in the Codex: the game, the Pokédex's name, one
 * sentence on what it lists, and the game's other Pokédexes to switch to.
 */
export const GamePokedexHeadSection = ({
  data,
}: GamePokedexHeadSectionProps) => {
  return (
    <section
      aria-labelledby="game-pokedex-title"
      data-slot="card"
      className={cn(cardVariants(), "mt-5 gap-0 px-5 py-6 sm:px-7 sm:py-6.5")}
    >
      <p className="text-13 text-ink-2 font-bold">
        {data.game.name} · {data.generation.name}
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
        <nav
          aria-label={`Pokédexes in ${data.game.name}`}
          className="mt-4.5 flex flex-wrap gap-1.5"
        >
          {data.pokedexes.map((pokedex) => {
            const isCurrent = pokedex.id === data.pokedex.id;

            return (
              <Link
                key={pokedex.id}
                href={appRoutes.codexGamePokedex(data.game.slug, pokedex.slug)}
                aria-current={isCurrent ? "page" : undefined}
                className={cn(
                  "text-14 inline-flex h-9.5 items-center rounded-full px-4 whitespace-nowrap transition-colors",
                  isCurrent
                    ? "bg-select-soft text-select-ink font-extrabold"
                    : "bg-surface-2 text-ink-2 hover:bg-hover hover:text-ink font-bold",
                )}
              >
                {getPokedexShortName(formatPokedexName(pokedex.name))}
              </Link>
            );
          })}
        </nav>
      ) : null}
    </section>
  );
};
