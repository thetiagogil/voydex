import type { GamePokedexStatKey } from "@/modules/codex/features/games/pokedex/data/game-pokedex-browser-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { GamePokedexPokemon } from "@/modules/reference/types";
import { Badge } from "@/shared/components/ui/badge";

export const gamePokedexSpriteColumnClassName = "w-16 min-w-16 max-w-16";
export const gamePokedexDexColumnClassName = "w-16 min-w-16 max-w-16";
export const gamePokedexStatColumnClassName = "w-12 min-w-12 max-w-12";

/* The art on its soft type-tint circle, as in the Play Pokédex list. */
export const GamePokedexPokemonPortraitCell = ({
  pokemon,
}: {
  pokemon: GamePokedexPokemon;
}) => {
  const primaryType = pokemon.typePair.primaryType;

  return (
    <PokemonPortrait
      alt=""
      imageUrl={pokemon.imageUrl}
      fallbackOnError
      sizes="3rem"
      type={
        primaryType && isPokemonTypeSlug(primaryType.slug)
          ? primaryType.slug
          : null
      }
      className="size-12 shrink-0"
      imageClassName="p-1"
    />
  );
};

export const GamePokedexPokemonAbilityList = ({
  pokemon,
}: {
  pokemon: GamePokedexPokemon;
}) => {
  if (!pokemon.abilities.length) {
    return <span className="text-ink-3">-</span>;
  }

  return (
    <div className="flex max-w-56 flex-wrap gap-1.5">
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
  stat: GamePokedexStatKey;
}) => {
  return (
    <span className="tabular-nums">
      {pokemon.attributes ? pokemon.attributes[stat] : "-"}
    </span>
  );
};
