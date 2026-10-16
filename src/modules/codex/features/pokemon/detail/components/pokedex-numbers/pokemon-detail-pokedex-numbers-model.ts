import type { PokemonDetailGenerationPokedexEntry } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type { PokemonPokedexSummary } from "@/modules/reference/types";
import {
  formatPokedexName,
  formatPokemonNationalNumber,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

export type PokemonDetailPokedexNumber = {
  id: string;
  isCompletionRelevant: boolean;
  isNational: boolean;
  number: number;
  numberLabel: string;
  pokedexName: string;
  pokedexSlug: string;
  sortOrder: number;
  /* The group whose Pokédex page the number opens. */
  versionGroupSlug: string;
};

const NATIONAL_POKEDEX_KIND = "national";

const formatPokemonPokedexNumber = (number: number) => {
  return `#${number.toString().padStart(3, "0")}`;
};

const getPokemonDetailPokedexNumberId = ({
  entry,
  isNational,
  pokedexId,
}: {
  entry: PokemonPokedexSummary["entry"];
  isNational: boolean;
  pokedexId: number;
}) => {
  if (isNational) {
    return `${NATIONAL_POKEDEX_KIND}:${entry.pokedex_number}`;
  }

  return [pokedexId, entry.pokedex_number, entry.display_form_id ?? 0].join(
    ":",
  );
};

const formatPokemonDetailPokedexNumber = ({
  isNational,
  number,
}: {
  isNational: boolean;
  number: number;
}) => {
  return isNational
    ? formatPokemonNationalNumber(number)
    : formatPokemonPokedexNumber(number);
};

const comparePokemonDetailPokedexNumbers = (
  firstNumber: PokemonDetailPokedexNumber,
  secondNumber: PokemonDetailPokedexNumber,
) => {
  return (
    Number(secondNumber.isNational) - Number(firstNumber.isNational) ||
    Number(secondNumber.isCompletionRelevant) -
      Number(firstNumber.isCompletionRelevant) ||
    firstNumber.sortOrder - secondNumber.sortOrder ||
    firstNumber.pokedexName.localeCompare(secondNumber.pokedexName) ||
    firstNumber.number - secondNumber.number
  );
};

const collectPokemonDetailPokedexNumbers = ({
  includeNational,
  pokedexEntries,
  seenIds,
}: {
  includeNational: boolean;
  pokedexEntries: PokemonDetailGenerationPokedexEntry[];
  seenIds: Set<string>;
}) => {
  const numbers: PokemonDetailPokedexNumber[] = [];

  for (const { entry, pokedex, versionGroupSlug } of pokedexEntries) {
    if (!pokedex) {
      continue;
    }

    const isNational = pokedex.pokedex_kind === NATIONAL_POKEDEX_KIND;

    if (isNational !== includeNational) {
      continue;
    }

    const id = getPokemonDetailPokedexNumberId({
      entry,
      isNational,
      pokedexId: pokedex.id,
    });

    if (seenIds.has(id)) {
      continue;
    }

    seenIds.add(id);
    numbers.push({
      id,
      isNational,
      isCompletionRelevant: pokedex.is_completion_relevant,
      number: entry.pokedex_number,
      numberLabel: formatPokemonDetailPokedexNumber({
        isNational,
        number: entry.pokedex_number,
      }),
      pokedexName: formatPokedexName(pokedex.name),
      pokedexSlug: pokedex.slug,
      sortOrder: pokedex.sort_order,
      versionGroupSlug,
    });
  }

  return numbers;
};

/* Each Pokédex of the generation that lists the Pokémon, the National one first. */
export const getPokemonDetailPokedexNumbers = ({
  scopedPokedexEntries,
}: {
  scopedPokedexEntries: PokemonDetailGenerationPokedexEntry[];
}) => {
  const seenIds = new Set<string>();

  return [
    ...collectPokemonDetailPokedexNumbers({
      includeNational: true,
      pokedexEntries: scopedPokedexEntries,
      seenIds,
    }),
    ...collectPokemonDetailPokedexNumbers({
      includeNational: false,
      pokedexEntries: scopedPokedexEntries,
      seenIds,
    }),
  ].sort(comparePokemonDetailPokedexNumbers);
};
