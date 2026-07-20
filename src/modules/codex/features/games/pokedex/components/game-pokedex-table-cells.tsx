import Image from "next/image";

import type { GamePokedexPokemon } from "@/modules/reference/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

type GamePokedexPokemonType = NonNullable<
  GamePokedexPokemon["typePair"]["primaryType"]
>;

export const gamePokedexSpriteColumnClassName = "w-14 min-w-14 max-w-14";
export const gamePokedexDexColumnClassName = "w-16 min-w-16 max-w-16";
export const gamePokedexStatColumnClassName = "w-12 min-w-12 max-w-12";

export const GamePokedexPokemonSpriteCell = ({
  pokemon,
}: {
  pokemon: GamePokedexPokemon;
}) => {
  if (!pokemon.imageUrl) {
    return (
      <div className="bg-muted/35 flex size-12 items-center justify-center rounded-md">
        <span className="text-muted-foreground text-xs">-</span>
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

export const GamePokedexPokemonTypeList = ({
  className,
  pokemon,
}: {
  className?: string;
  pokemon: GamePokedexPokemon;
}) => {
  const types = [
    pokemon.typePair.primaryType,
    pokemon.typePair.secondaryType,
  ].filter((type): type is GamePokedexPokemonType => Boolean(type));

  if (!types.length) {
    return <span className="text-muted-foreground">-</span>;
  }

  return (
    <div className={cn("flex flex-wrap gap-1.5", className)}>
      {types.map((type) =>
        isPokemonTypeSlug(type.slug) ? (
          <PokemonTypeBadge
            key={type.id}
            type={type.slug}
            label={type.name}
            size="sm"
            variant="field-guide"
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

export const GamePokedexPokemonAbilityList = ({
  pokemon,
}: {
  pokemon: GamePokedexPokemon;
}) => {
  if (!pokemon.abilities.length) {
    return <span className="text-muted-foreground">-</span>;
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

export const GamePokedexPokemonStatCell = ({
  pokemon,
  stat,
}: {
  pokemon: GamePokedexPokemon;
  stat: keyof Pick<
    NonNullable<GamePokedexPokemon["attributes"]>,
    | "base_attack"
    | "base_defense"
    | "base_hp"
    | "base_special_attack"
    | "base_special_defense"
    | "base_speed"
  >;
}) => {
  return (
    <span className="tabular-nums">
      {pokemon.attributes ? pokemon.attributes[stat] : "-"}
    </span>
  );
};
