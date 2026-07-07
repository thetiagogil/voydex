"use client";

import { useRouter } from "next/navigation";
import type { KeyboardEvent } from "react";

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
import { CodexEmptyState } from "@/modules/codex/shared/components/codex-empty-state";
import type {
  GamePokedexData,
  GamePokedexPokemon,
} from "@/modules/codex/shared/types";
import { Card } from "@/shared/components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

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
  const router = useRouter();
  const statColumns = getGamePokedexStatColumns(data);

  if (!pokemon.length) {
    return (
      <CodexEmptyState
        title="No Pokémon found"
        description={
          hasAbilities
            ? "Try a different name, Pokédex number, ability, or type."
            : "Try a different name, Pokédex number, or type."
        }
      />
    );
  }

  return (
    <Card className="p-0">
      <Table
        className={`${getGamePokedexTableMinWidthClassName(
          hasAbilities,
          statColumns,
        )} table-fixed`}
      >
        <colgroup>
          <col className={gamePokedexSpriteColumnClassName} />
          <col className={gamePokedexDexColumnClassName} />
          <col className="w-52" />
          <col className="w-44" />
          {hasAbilities ? <col className="w-56" /> : null}
          {statColumns.map((stat) => (
            <col key={stat.key} className={gamePokedexStatColumnClassName} />
          ))}
        </colgroup>
        <TableHeader>
          <TableRow className="hover:bg-transparent">
            <TableHead
              className={`${gamePokedexSpriteColumnClassName} text-center`}
            >
              Sprite
            </TableHead>
            <TableHead
              className={`${gamePokedexDexColumnClassName} text-center`}
            >
              Dex
            </TableHead>
            <TableHead className="w-52">Name</TableHead>
            <TableHead className="w-44">Types</TableHead>
            {hasAbilities ? (
              <TableHead className="w-56">Abilities</TableHead>
            ) : null}
            {statColumns.map((stat) => (
              <TableHead
                key={stat.key}
                className={`${gamePokedexStatColumnClassName} text-center`}
              >
                {stat.label}
              </TableHead>
            ))}
          </TableRow>
        </TableHeader>
        <TableBody>
          {pokemon.map((entry) => {
            const href = appRoutes.codexPokemonGameSpecies(
              data.game.slug,
              entry.species.slug,
            );

            const handleKeyDown = (
              event: KeyboardEvent<HTMLTableRowElement>,
            ) => {
              if (event.key !== "Enter" && event.key !== " ") {
                return;
              }

              event.preventDefault();
              router.push(href);
            };

            return (
              <TableRow
                key={`${entry.entry.pokedex_id}-${entry.entry.pokedex_number}-${entry.entry.species_id}`}
                role="link"
                tabIndex={0}
                aria-label={`Open ${entry.species.name} in ${data.game.name}`}
                className="group focus-visible:bg-muted/50 cursor-pointer focus-visible:ring-2 focus-visible:ring-(--pokemon-game-color)/50 focus-visible:outline-none"
                onClick={() => {
                  router.push(href);
                }}
                onFocus={() => {
                  router.prefetch(href);
                }}
                onKeyDown={handleKeyDown}
                onMouseEnter={() => {
                  router.prefetch(href);
                }}
              >
                <TableCell className={gamePokedexSpriteColumnClassName}>
                  <GamePokedexPokemonSpriteCell pokemon={entry} />
                </TableCell>
                <TableCell
                  className={`${gamePokedexDexColumnClassName} text-center font-medium tabular-nums`}
                >
                  {formatLocalPokedexNumber(entry.entry.pokedex_number)}
                </TableCell>
                <TableCell>
                  <span className="text-foreground font-medium transition-colors group-hover:text-(--pokemon-game-color)">
                    {entry.species.name}
                  </span>
                  <div className="text-muted-foreground text-xs leading-5 tabular-nums">
                    {formatPokemonNationalNumber(entry.species.national_number)}
                  </div>
                </TableCell>
                <TableCell>
                  <GamePokedexPokemonTypeList pokemon={entry} />
                </TableCell>
                {hasAbilities ? (
                  <TableCell>
                    <GamePokedexPokemonAbilityList pokemon={entry} />
                  </TableCell>
                ) : null}
                {statColumns.map((stat) => (
                  <TableCell
                    key={stat.key}
                    className={`${gamePokedexStatColumnClassName} text-center`}
                  >
                    <GamePokedexPokemonStatCell
                      pokemon={entry}
                      stat={stat.key}
                    />
                  </TableCell>
                ))}
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </Card>
  );
};
