import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/sections/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailPokedexNumbersCardProps = {
  numbers: PokemonDetailPokedexNumber[];
};

/* Pokédexes of one name share a tile: Alola's, in Sun and Moon and their sequels. */
const groupByPokedexName = (numbers: PokemonDetailPokedexNumber[]) => {
  const groups = new Map<string, PokemonDetailPokedexNumber[]>();

  for (const number of numbers) {
    groups.set(number.pokedexName, [
      ...(groups.get(number.pokedexName) ?? []),
      number,
    ]);
  }

  return [...groups.entries()];
};

/*
 * Each Pokédex of the generation that lists the Pokémon, as a small tile:
 * the Pokédex and its number (it opens that Pokédex), several across, so
 * eight Pokédexes take two short rows instead of a long list. A Pokédex two
 * games number differently shows both numbers. What the Pokédex says is in
 * the hero, per game.
 */
export const PokemonDetailPokedexNumbersCard = ({
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  return (
    <DetailSectionCard id="pokedex-numbers" title="Pokédex numbers">
      <ul className="grid grid-cols-2 gap-2 sm:grid-cols-3 lg:grid-cols-4 xl:grid-cols-6">
        {groupByPokedexName(numbers).map(([pokedexName, group]) => (
          <li key={pokedexName} className="tile min-w-0">
            <span className="text-ink-2 copy-mark block truncate">
              {pokedexName}
            </span>
            <span className="mt-0.5 flex flex-wrap gap-x-2">
              {group.map((pokedexNumber) => (
                <Link
                  key={pokedexNumber.id}
                  href={appRoutes.codexVersionGroupPokedex(
                    pokedexNumber.versionGroupSlug,
                    pokedexNumber.pokedexSlug,
                  )}
                  className="copy-strong hover:text-link focus-ring rounded-xs tabular-nums underline-offset-3 hover:underline"
                >
                  {pokedexNumber.numberLabel}
                </Link>
              ))}
            </span>
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
