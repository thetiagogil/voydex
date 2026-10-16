import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  GamePokedexPokemonAbilityList,
  GamePokedexPokemonPortraitCell,
  GamePokedexPokemonStatCell,
  gamePokedexDexColumnClassName,
  gamePokedexSpriteColumnClassName,
  gamePokedexStatColumnClassName,
} from "@/modules/codex/features/games/pokedex/components/game-pokedex-table-cells";
import {
  formatLocalPokedexNumber,
  getGamePokedexStatColumns,
  getGamePokedexTableMinWidthClassName,
} from "@/modules/codex/features/games/pokedex/data/game-pokedex-browser-model";
import {
  getVersionGroupShortName,
  getVersionGroupTitle,
} from "@/modules/codex/shared/utils/game-names";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import {
  formatPokedexName,
  formatPokemonNationalNumber,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import type {
  GamePokedexData,
  GamePokedexPokemon,
} from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Card } from "@/shared/components/ui/card";
import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import { cn } from "@/shared/utils/cn";

type GamePokedexTableProps = {
  data: GamePokedexData;
  hasAbilities: boolean;
  pokemon: GamePokedexPokemon[];
};

/*
 * The quiet table: rows between hairlines on one card, with abilities and
 * base stats. On narrow screens each row folds into a compact line.
 */
export const GamePokedexTable = ({
  data,
  hasAbilities,
  pokemon,
}: GamePokedexTableProps) => {
  const statColumns = getGamePokedexStatColumns(data);
  const statGridClassName =
    statColumns.length === 5 ? "grid-cols-5" : "grid-cols-6";

  return (
    <Card className="gap-0 py-0">
      <Table
        className={cn(
          getGamePokedexTableMinWidthClassName(hasAbilities, statColumns),
          "block table-fixed xl:table",
        )}
      >
        <TableCaption className="sr-only">
          {formatPokedexName(data.pokedex.name)} Pokémon in{" "}
          {getVersionGroupTitle(data.versionGroup.name)}, with their Pokédex
          number, types
          {hasAbilities ? ", abilities" : ""} and base stats.
        </TableCaption>

        <colgroup className="hidden xl:table-column-group">
          <col className={gamePokedexDexColumnClassName} />
          <col className={gamePokedexSpriteColumnClassName} />
          <col className="w-52" />
          <col className="w-44" />
          {hasAbilities ? <col className="w-56" /> : null}
          {statColumns.map((stat) => (
            <col key={stat.key} className={gamePokedexStatColumnClassName} />
          ))}
        </colgroup>

        <TableHeader className="hidden xl:table-header-group">
          <TableRow>
            <TableHead
              className={cn(gamePokedexDexColumnClassName, "pl-5 text-left")}
            >
              No.
            </TableHead>
            <TableHead className={gamePokedexSpriteColumnClassName}>
              <span className="sr-only">Art</span>
            </TableHead>
            <TableHead className="w-52">Name</TableHead>
            <TableHead className="w-44">Types</TableHead>
            {hasAbilities ? (
              <TableHead className="w-56">Abilities</TableHead>
            ) : null}
            {statColumns.map((stat) => (
              <TableHead
                key={stat.key}
                className={cn(gamePokedexStatColumnClassName, "text-center")}
              >
                {stat.label}
              </TableHead>
            ))}
          </TableRow>
        </TableHeader>

        <TableBody className="block xl:table-row-group">
          {pokemon.map((entry) => (
            <TableRow
              key={`${entry.entry.pokedex_id}-${entry.entry.pokedex_number}-${entry.entry.species_id}`}
              className="group relative grid min-h-18 grid-cols-[2.75rem_3rem_minmax(0,1fr)] items-center gap-x-3 px-4 py-2.5 [contain-intrinsic-size:auto_4.5rem] [content-visibility:auto] md:grid-cols-[2.75rem_3rem_minmax(9rem,1fr)_minmax(15rem,0.9fr)] xl:table-row xl:min-h-0 xl:p-0"
            >
              <TableCell
                className={cn(
                  gamePokedexDexColumnClassName,
                  "text-12 text-ink-3 col-start-1 row-span-2 row-start-1 block p-0 font-extrabold tabular-nums xl:table-cell xl:py-2.5 xl:pr-2.5 xl:pl-5",
                )}
              >
                #{formatLocalPokedexNumber(entry.entry.pokedex_number)}
              </TableCell>

              <TableCell className="col-start-2 row-span-2 row-start-1 block p-0 whitespace-normal xl:table-cell xl:px-2.5 xl:py-2">
                <GamePokedexPokemonPortraitCell pokemon={entry} />
              </TableCell>

              <TableCell className="col-start-3 row-start-1 block min-w-0 p-0 pr-6 whitespace-normal xl:table-cell xl:p-2.5">
                <Link
                  href={appRoutes.codexPokemonEntry(
                    data.versionGroup.slug,
                    entry.species.slug,
                  )}
                  aria-label={`Open ${entry.species.name} in ${getVersionGroupShortName(data.versionGroup.name)}`}
                  className="text-15 group-hover:text-link hover:text-link rounded-xs font-extrabold transition-colors after:absolute after:inset-0 after:content-[''] xl:after:hidden"
                >
                  {entry.species.name}
                </Link>
                <div className="text-12 text-ink-3 font-semibold tabular-nums">
                  {formatPokemonNationalNumber(entry.species.national_number)}
                </div>
                <AppIcon
                  icon={appIcons.actions.continue}
                  size="sm"
                  className="text-ink-3 group-hover:text-link absolute top-1/2 right-4 -translate-y-1/2 transition-transform group-hover:translate-x-0.5 xl:hidden"
                  aria-hidden
                />
              </TableCell>

              <TableCell className="col-start-3 row-start-2 block min-w-0 p-0 whitespace-normal xl:table-cell xl:p-2.5">
                <PokemonTypeList
                  badgeDisplay="icon-label"
                  badgeSize="sm"
                  className="flex-wrap gap-1"
                  primaryType={entry.typePair.primaryType}
                  secondaryType={entry.typePair.secondaryType}
                />
              </TableCell>

              {hasAbilities ? (
                <TableCell className="hidden whitespace-normal xl:table-cell">
                  <GamePokedexPokemonAbilityList pokemon={entry} />
                </TableCell>
              ) : null}

              <TableCell className="col-start-4 row-span-2 row-start-1 hidden p-0 whitespace-normal md:block xl:hidden">
                <dl className={cn("grid min-w-0 gap-2", statGridClassName)}>
                  {statColumns.map((stat) => (
                    <div key={stat.key} className="min-w-0 text-center">
                      <dt className="text-12 text-ink-3 font-bold">
                        {stat.label}
                      </dt>
                      <dd className="text-14 font-bold">
                        <GamePokedexPokemonStatCell
                          pokemon={entry}
                          stat={stat.key}
                        />
                      </dd>
                    </div>
                  ))}
                </dl>
              </TableCell>

              {statColumns.map((stat) => (
                <TableCell
                  key={stat.key}
                  className={cn(
                    gamePokedexStatColumnClassName,
                    "hidden text-center font-semibold xl:table-cell",
                  )}
                >
                  <GamePokedexPokemonStatCell pokemon={entry} stat={stat.key} />
                </TableCell>
              ))}
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </Card>
  );
};
