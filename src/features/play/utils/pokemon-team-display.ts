import type { PokemonType } from "@/shared/constants/reference";
import type { PlayPokemon } from "../types";

export type PokemonTeamScope = "all" | "team" | "box";

export const sortPokemonByPosition = (pokemon: PlayPokemon[]) => {
  return [...pokemon].sort((left, right) => left.position - right.position);
};

export const filterPokemonByScope = (
  pokemon: PlayPokemon[],
  scope: PokemonTeamScope,
) => {
  if (scope === "team") {
    return sortPokemonByPosition(
      pokemon.filter((member) => member.position <= 6),
    );
  }

  if (scope === "box") {
    return sortPokemonByPosition(
      pokemon.filter((member) => member.position > 6),
    );
  }

  return sortPokemonByPosition(pokemon);
};

export const getPlayPokemonDisplayName = (pokemon: PlayPokemon) => {
  return pokemon.nickname || pokemon.species?.name || "Unknown";
};

export const getPlayPokemonPositionLabel = (position: number) => {
  return position <= 6 ? `Team #${position}` : `Box #${position - 6}`;
};

export const getPlayPokemonTypeKeys = (pokemon: PlayPokemon) => {
  return pokemon.types
    .map((type) => {
      const key = type.name.toLowerCase();
      return key as PokemonType;
    })
    .filter(Boolean);
};

export const getPlayPokemonMoveTypeKeys = (pokemon: PlayPokemon) => {
  return pokemon.moves
    .map((move) => move.type?.name.toLowerCase() as PokemonType | undefined)
    .filter((type): type is PokemonType => Boolean(type));
};

export const buildPokemonSlots = (
  pokemon: PlayPokemon[],
  slotCount = 6,
): Array<PlayPokemon | null> => {
  return Array.from(
    { length: Math.max(slotCount, pokemon.length) },
    (_, index) => pokemon[index] || null,
  );
};
