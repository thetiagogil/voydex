import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { PokemonDetailPokedexNumber } from "@/modules/codex/features/pokemon/detail/components/pokedex-numbers/pokemon-detail-pokedex-numbers-model";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import { DetailSectionCard } from "@/shared/components/detail-section-card";

type PokemonDetailPokedexNumbersCardProps = {
  numbers: PokemonDetailPokedexNumber[];
};

/*
 * Each Pokédex of the generation that lists the Pokémon, a row each: the
 * Pokédex and the number (it opens that Pokédex), then what that game's
 * Pokédex says about it, which Voydex doesn't have yet.
 */
export const PokemonDetailPokedexNumbersCard = ({
  numbers,
}: PokemonDetailPokedexNumbersCardProps) => {
  return (
    <DetailSectionCard id="pokedex-numbers" title="Pokédex numbers">
      <ul className="flex flex-col">
        {numbers.map((pokedexNumber) => (
          <li
            key={pokedexNumber.id}
            className="grid gap-x-4 gap-y-1 py-2.5 first:pt-0 last:pb-0 sm:grid-cols-[220px_minmax(0,1fr)] sm:items-center"
          >
            <Link
              href={appRoutes.codexVersionGroupPokedex(
                pokedexNumber.versionGroupSlug,
                pokedexNumber.pokedexSlug,
              )}
              className="hover:bg-surface-2 focus-visible:outline-focus -mx-2 flex min-w-0 items-baseline justify-between gap-3 rounded-sm px-2 py-1.5 transition-colors outline-none focus-visible:outline-3 focus-visible:outline-solid"
            >
              <span className="text-ink-2 text-14 truncate font-bold">
                {pokedexNumber.pokedexName}
              </span>
              <span className="text-16 shrink-0 font-extrabold tabular-nums">
                {pokedexNumber.numberLabel}
              </span>
            </Link>
            <span className="min-w-0">
              {/* TODO(v3-data): each Pokédex's entry text for the Pokémon, per game. */}
              <CodexPendingValue label="Pokédex entry" />
            </span>
          </li>
        ))}
      </ul>
    </DetailSectionCard>
  );
};
