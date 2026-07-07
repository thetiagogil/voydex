"use client";

import Image from "next/image";
import { useRouter } from "next/navigation";
import type { KeyboardEvent } from "react";

import { appRoutes } from "@/config/routes";
import {
  formatLocalPokedexNumber,
  getGamePokedexStatColumns,
  getGamePokedexTableMinWidthClassName,
  type GamePokedexStatKey,
} from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser-model";
import { CodexEmptyState } from "@/modules/codex/shared/components/codex-browse";
import type {
  GamePokedexData,
  GamePokedexPokemon,
} from "@/modules/codex/shared/types";
import { PokemonTypeBadge } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";

type GamePokedexTableProps = {
  data: GamePokedexData;
  hasAbilities: boolean;
  pokemon: GamePokedexPokemon[];
};

type GamePokedexPokemonType = NonNullable<
  GamePokedexPokemon["typePair"]["primaryType"]
>;

const spriteColumnClassName = "w-14 min-w-14 max-w-14";
const dexColumnClassName = "w-16 min-w-16 max-w-16";
const statColumnClassName = "w-12 min-w-12 max-w-12";

const PokemonSpriteCell = ({ pokemon }: { pokemon: GamePokedexPokemon }) => {
  if (!pokemon.imageUrl) {
    return (
      <div className="bg-muted/35 flex size-12 items-center justify-center rounded-md">
        <span className="text-muted-foreground text-xs">—</span>
      </div>
    );
  }

  return (
    <div className="relative size-12 overflow-hidden rounded-md">
      <Image
        src={pokemon.imageUrl}
        alt={pokemon.imageAlt || `${pokemon.species.name} sprite`}
        fill
        sizes="3rem"
        className="object-contain"
      />
    </div>
  );
};

const PokemonTypeList = ({ pokemon }: { pokemon: GamePokedexPokemon }) => {
  const types = [
    pokemon.typePair.primaryType,
    pokemon.typePair.secondaryType,
  ].filter((type): type is GamePokedexPokemonType => Boolean(type));

  if (!types.length) {
    return <span className="text-muted-foreground">—</span>;
  }

  return (
    <div className="flex flex-wrap gap-1.5">
      {types.map((type) =>
        isPokemonTypeSlug(type.slug) ? (
          <PokemonTypeBadge
            key={type.id}
            type={type.slug}
            label={type.name}
            size="sm"
          />
        ) : (
          <Badge key={type.id} variant="outline">
            {type.name}
          </Badge>
        ),
      )}
    </div>
  );
};

const PokemonAbilityList = ({ pokemon }: { pokemon: GamePokedexPokemon }) => {
  if (!pokemon.abilities.length) {
    return <span className="text-muted-foreground">—</span>;
  }

  return (
    <div className="flex max-w-48 flex-wrap gap-1.5">
      {pokemon.abilities.map(({ ability, slot }) => (
        <Badge
          key={`${ability.id}-${slot}`}
          variant={slot === "hidden" ? "secondary" : "outline"}
          className="max-w-full"
        >
          <span className="truncate">
            {ability.name}
            {slot === "hidden" ? " (HA)" : ""}
          </span>
        </Badge>
      ))}
    </div>
  );
};

const PokemonStatCell = ({
  pokemon,
  stat,
}: {
  pokemon: GamePokedexPokemon;
  stat: GamePokedexStatKey;
}) => {
  return (
    <span className="tabular-nums">
      {pokemon.attributes ? pokemon.attributes[stat] : "—"}
    </span>
  );
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
    <div className="bg-card/75 ring-app-surface-border overflow-hidden rounded-xl ring-1 backdrop-blur-xl">
      <Table
        className={`${getGamePokedexTableMinWidthClassName(
          hasAbilities,
          statColumns,
        )} table-fixed`}
      >
        <colgroup>
          <col className={spriteColumnClassName} />
          <col className={dexColumnClassName} />
          <col className="w-52" />
          <col className="w-44" />
          {hasAbilities ? <col className="w-56" /> : null}
          {statColumns.map((stat) => (
            <col key={stat.key} className={statColumnClassName} />
          ))}
        </colgroup>
        <TableHeader>
          <TableRow className="hover:bg-transparent">
            <TableHead className={`${spriteColumnClassName} text-center`}>
              Sprite
            </TableHead>
            <TableHead className={`${dexColumnClassName} text-center`}>
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
                className={`${statColumnClassName} text-center`}
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
                <TableCell className={`${spriteColumnClassName}`}>
                  <PokemonSpriteCell pokemon={entry} />
                </TableCell>
                <TableCell
                  className={`${dexColumnClassName} text-center font-medium tabular-nums`}
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
                  <PokemonTypeList pokemon={entry} />
                </TableCell>
                {hasAbilities ? (
                  <TableCell>
                    <PokemonAbilityList pokemon={entry} />
                  </TableCell>
                ) : null}
                {statColumns.map((stat) => (
                  <TableCell
                    key={stat.key}
                    className={`${statColumnClassName} text-center`}
                  >
                    <PokemonStatCell pokemon={entry} stat={stat.key} />
                  </TableCell>
                ))}
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </div>
  );
};
