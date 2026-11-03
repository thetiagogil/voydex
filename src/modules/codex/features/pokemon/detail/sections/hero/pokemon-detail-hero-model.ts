import type { PokemonDetailStat } from "@/modules/codex/features/pokemon/detail/sections/stats/pokemon-detail-stats-model";
import type {
  PokemonGenerationFormSummary,
  PokemonSpecies,
} from "@/modules/reference/types";
import {
  formatPokemonHeight,
  formatPokemonNationalNumber,
  formatPokemonWeight,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

/* A piece of the hero's eyebrow or sentence; the figures and names are emphasised. */
export type PokemonDetailHeroSentencePart = {
  emphasis: boolean;
  text: string;
};

const plain = (text: string): PokemonDetailHeroSentencePart => ({
  emphasis: false,
  text,
});

const strong = (text: string): PokemonDetailHeroSentencePart => ({
  emphasis: true,
  text,
});

/* "Attack", "Attack and Speed", "HP, Attack and Speed", each emphasised. */
const listStatNames = (stats: PokemonDetailStat[]) => {
  return stats.flatMap((stat, index) => {
    const separator =
      index === 0 ? null : index === stats.length - 1 ? " and " : ", ";

    return separator
      ? [plain(separator), strong(stat.name)]
      : [strong(stat.name)];
  });
};

/*
 * v3's line over the name: "#0059 · Legendary Pokémon · since Generation I",
 * with the Pokédex's own category for the form shown (Arcanine is the
 * Legendary Pokémon, Hisuian Growlithe the Scout Pokémon).
 */
export const getPokemonDetailHeroEyebrow = ({
  form,
  species,
}: {
  form: PokemonGenerationFormSummary | null;
  species: PokemonSpecies;
}): PokemonDetailHeroSentencePart[] => {
  const introducedGeneration = form?.introducedGeneration?.name;
  const pokedexCategory = form?.form.category ?? species.category;

  return [
    plain(formatPokemonNationalNumber(species.national_number)),
    plain(`${pokedexCategory} Pokémon`),
    ...(introducedGeneration ? [plain(`since ${introducedGeneration}`)] : []),
  ];
};

/*
 * The one sentence the entry reads for you (v3): its size, then its best base
 * stat. "1.9 m tall and 155.0 kg, with Attack its best stat at 110." A size
 * the games don't give (Eternamax Eternatus's weight) is left out, and
 * without any the sentence starts at the stats.
 */
export const getPokemonDetailHeroSentence = ({
  form,
  stats,
}: {
  form: PokemonGenerationFormSummary | null;
  stats: PokemonDetailStat[];
}): PokemonDetailHeroSentencePart[] => {
  const heightDecimeters = form?.form.height_decimeters ?? null;
  const weightHectograms = form?.form.weight_hectograms ?? null;
  const height = heightDecimeters
    ? [strong(formatPokemonHeight(heightDecimeters)), plain(" tall")]
    : [];
  const weight = weightHectograms
    ? [strong(formatPokemonWeight(weightHectograms))]
    : [];
  const size =
    height.length && weight.length
      ? [...height, plain(" and "), ...weight]
      : [...height, ...weight];

  if (!stats.length) {
    return size.length ? [...size, plain(".")] : [];
  }

  const best = Math.max(...stats.map((stat) => stat.value));
  const bestStats = stats.filter((stat) => stat.value === best);
  const bestValue = strong(String(best));
  const allEqual = bestStats.length === stats.length;

  if (!size.length) {
    return allEqual
      ? [plain("Every base stat is "), bestValue, plain(".")]
      : [
          ...listStatNames(bestStats),
          plain(
            bestStats.length > 1
              ? " are its best stats at "
              : " is its best stat at ",
          ),
          bestValue,
          plain("."),
        ];
  }

  if (allEqual) {
    return [
      ...size,
      plain(", with every base stat at "),
      bestValue,
      plain("."),
    ];
  }

  return [
    ...size,
    plain(", with "),
    ...listStatNames(bestStats),
    plain(bestStats.length > 1 ? " its best stats at " : " its best stat at "),
    bestValue,
    plain("."),
  ];
};
