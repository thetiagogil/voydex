import type { PokemonDetailStat } from "@/modules/codex/features/pokemon/detail/components/stats/pokemon-detail-stats-model";
import type {
  PokemonGenerationFormSummary,
  PokemonSpecies,
} from "@/modules/reference/types";
import {
  formatPokemonHeight,
  formatPokemonNationalNumber,
  formatPokemonWeight,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

/* A piece of the hero's sentence; the figures and names are emphasised. */
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

const getPokemonDetailCategory = (species: PokemonSpecies) => {
  if (species.is_mythical) {
    return "Mythical Pokémon";
  }

  if (species.is_legendary) {
    return "Legendary Pokémon";
  }

  return species.is_baby ? "Baby Pokémon" : null;
};

/* v3's line over the name: "#0059 · Legendary Pokémon · since Generation I". */
export const getPokemonDetailHeroEyebrow = ({
  form,
  species,
}: {
  form: PokemonGenerationFormSummary | null;
  species: PokemonSpecies;
}) => {
  const introducedGeneration = form?.introducedGeneration?.name;

  return [
    formatPokemonNationalNumber(species.national_number),
    getPokemonDetailCategory(species),
    introducedGeneration ? `since ${introducedGeneration}` : null,
  ]
    .filter(Boolean)
    .join(" · ");
};

/*
 * The one sentence the entry reads for you (v3): its size when it's recorded,
 * then its best base stat. "1.9 m tall and 155.0 kg, with Attack its best stat
 * at 110." Without a size: "Its best stat is Attack, at 110."
 */
export const getPokemonDetailHeroSentence = ({
  form,
  stats,
}: {
  form: PokemonGenerationFormSummary | null;
  stats: PokemonDetailStat[];
}): PokemonDetailHeroSentencePart[] | null => {
  const heightDecimeters = form?.form.height_decimeters ?? null;
  const weightHectograms = form?.form.weight_hectograms ?? null;
  const size = [
    ...(heightDecimeters
      ? [strong(formatPokemonHeight(heightDecimeters)), plain(" tall")]
      : []),
    ...(heightDecimeters && weightHectograms ? [plain(" and ")] : []),
    ...(weightHectograms
      ? [
          ...(heightDecimeters ? [] : [plain("Weighs ")]),
          strong(formatPokemonWeight(weightHectograms)),
        ]
      : []),
  ];

  if (!stats.length) {
    return size.length ? [...size, plain(".")] : null;
  }

  const best = Math.max(...stats.map((stat) => stat.value));
  const bestStats = stats.filter((stat) => stat.value === best);
  const bestValue = strong(String(best));

  if (bestStats.length === stats.length) {
    return size.length
      ? [...size, plain(", with every base stat at "), bestValue, plain(".")]
      : [plain("Every base stat is "), bestValue, plain(".")];
  }

  const isPlural = bestStats.length > 1;

  if (size.length) {
    return [
      ...size,
      plain(", with "),
      ...listStatNames(bestStats),
      plain(isPlural ? " its best stats at " : " its best stat at "),
      bestValue,
      plain("."),
    ];
  }

  return [
    plain(isPlural ? "Its best stats are " : "Its best stat is "),
    ...listStatNames(bestStats),
    plain(", at "),
    bestValue,
    plain("."),
  ];
};
