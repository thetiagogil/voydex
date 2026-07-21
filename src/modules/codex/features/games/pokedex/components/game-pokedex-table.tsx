import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  formatLocalPokedexNumber,
  getGamePokedexStatColumns,
  getGamePokedexTableMinWidthClassName,
} from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser-model";
import {
  GamePokedexPokemonAbilityList,
  GamePokedexPokemonSpriteCell,
  GamePokedexPokemonStatCell,
  GamePokedexPokemonTypeList,
  gamePokedexDexColumnClassName,
  gamePokedexSpriteColumnClassName,
  gamePokedexStatColumnClassName,
} from "@/modules/codex/features/games/pokedex/components/game-pokedex-table-cells";
import {
  formatPokedexName,
  formatPokemonNationalNumber,
} from "@/modules/reference/features/pokemon/display/pokemon-formatters";
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

type GamePokedexTableProps = {
  data: GamePokedexData;
  hasAbilities: boolean;
  pokemon: GamePokedexPokemon[];
};

export const GamePokedexTable = ({
  data,
  hasAbilities,
  pokemon,
}: GamePokedexTableProps) => {
  const statColumns = getGamePokedexStatColumns(data);
  const statGridClassName =
    statColumns.length === 5 ? "grid-cols-5" : "grid-cols-6";

  return (
    <Card className="bg-card ring-app-surface-border/80 gap-0 p-0 shadow-xs">
      <Table
        className={`${getGamePokedexTableMinWidthClassName(
          hasAbilities,
          statColumns,
        )} block table-fixed xl:table`}
      >
        <TableCaption className="sr-only">
          {formatPokedexName(data.pokedex.name)} Pokémon in {data.game.name},
          including local Pokédex number, types, abilities, and base stats.
        </TableCaption>

        <colgroup className="hidden xl:table-column-group">
          <col className={gamePokedexSpriteColumnClassName} />
          <col className={gamePokedexDexColumnClassName} />
          <col className="w-52" />
          <col className="w-44" />
          {hasAbilities ? <col className="w-56" /> : null}
          {statColumns.map((stat) => (
            <col key={stat.key} className={gamePokedexStatColumnClassName} />
          ))}
        </colgroup>

        <TableHeader className="bg-muted/20 hidden xl:table-header-group">
          <TableRow className="hover:bg-transparent">
            <TableHead
              className={`${gamePokedexSpriteColumnClassName} text-muted-foreground text-center text-xs font-semibold tracking-[0.06em] uppercase`}
            >
              Sprite
            </TableHead>
            <TableHead
              className={`${gamePokedexDexColumnClassName} text-muted-foreground text-center text-xs font-semibold tracking-[0.06em] uppercase`}
            >
              Dex
            </TableHead>
            <TableHead className="text-muted-foreground w-52 text-xs font-semibold tracking-[0.06em] uppercase">
              Name
            </TableHead>
            <TableHead className="text-muted-foreground w-44 text-xs font-semibold tracking-[0.06em] uppercase">
              Types
            </TableHead>
            {hasAbilities ? (
              <TableHead className="text-muted-foreground w-56 text-xs font-semibold tracking-[0.06em] uppercase">
                Abilities
              </TableHead>
            ) : null}
            {statColumns.map((stat) => (
              <TableHead
                key={stat.key}
                className={`${gamePokedexStatColumnClassName} text-muted-foreground text-center text-xs font-semibold tracking-[0.06em] uppercase`}
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
              className="group relative grid min-h-20 grid-cols-[3.25rem_3rem_minmax(0,1fr)] items-center gap-x-2 px-3 py-2 [contain-intrinsic-size:5rem] [content-visibility:auto] md:grid-cols-[3.25rem_3rem_minmax(9rem,1fr)_minmax(15rem,0.9fr)] xl:table-row xl:min-h-0 xl:p-0"
            >
              <TableCell className="col-start-2 row-span-2 row-start-1 block p-0 whitespace-normal xl:table-cell xl:p-2">
                <GamePokedexPokemonSpriteCell pokemon={entry} />
              </TableCell>

              <TableCell
                className={`${gamePokedexDexColumnClassName} text-muted-foreground xl:text-foreground col-start-1 row-span-2 row-start-1 block p-0 text-xs font-semibold whitespace-nowrap tabular-nums xl:table-cell xl:p-2 xl:text-center`}
              >
                <span className="xl:hidden">No. </span>
                {formatLocalPokedexNumber(entry.entry.pokedex_number)}
              </TableCell>

              <TableCell className="col-start-3 row-start-1 block min-w-0 p-0 pr-6 whitespace-normal xl:table-cell xl:p-2">
                <Link
                  href={appRoutes.codexPokemonGameSpecies(
                    data.game.slug,
                    entry.species.slug,
                  )}
                  aria-label={`Open ${entry.species.name} in ${data.game.name}`}
                  className="text-foreground focus-visible:ring-ring group-hover:text-primary hover:text-primary rounded-sm font-serif text-base font-semibold transition-colors after:absolute after:inset-0 after:content-[''] focus-visible:ring-2 focus-visible:outline-none xl:after:hidden"
                >
                  {entry.species.name}
                </Link>
                <div className="text-muted-foreground text-xs leading-5 tabular-nums">
                  {formatPokemonNationalNumber(entry.species.national_number)}
                </div>
                <AppIcon
                  icon={appIcons.actions.continue}
                  size="sm"
                  className="text-muted-foreground group-hover:text-primary absolute top-1/2 right-3 -translate-y-1/2 transition-transform group-hover:translate-x-0.5 xl:hidden"
                  aria-hidden
                />
              </TableCell>

              <TableCell className="col-start-3 row-start-2 block min-w-0 p-0 whitespace-normal xl:table-cell xl:p-2">
                <GamePokedexPokemonTypeList pokemon={entry} className="gap-1" />
              </TableCell>

              {hasAbilities ? (
                <TableCell className="hidden xl:table-cell">
                  <GamePokedexPokemonAbilityList pokemon={entry} />
                </TableCell>
              ) : null}

              <TableCell className="col-start-4 row-span-2 row-start-1 hidden p-0 whitespace-normal md:block xl:hidden">
                <dl className={`grid min-w-0 gap-2 ${statGridClassName}`}>
                  {statColumns.map((stat) => (
                    <div key={stat.key} className="min-w-0 text-center">
                      <dt className="text-muted-foreground text-[0.62rem] leading-4 font-semibold tracking-[0.06em] uppercase">
                        {stat.label}
                      </dt>
                      <dd className="text-foreground text-xs font-medium">
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
                  className={`${gamePokedexStatColumnClassName} hidden text-center xl:table-cell`}
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
