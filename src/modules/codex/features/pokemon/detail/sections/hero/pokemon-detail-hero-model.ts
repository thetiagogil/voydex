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

/*
 * A piece of the hero's eyebrow or sentence. The figures and names are
 * emphasised; a `pending` piece is a value Voydex doesn't have yet, shown as
 * a pending marker labelled with `text`.
 */
export type PokemonDetailHeroSentencePart = {
  emphasis: boolean;
  pending?: boolean;
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

const pending = (label: string): PokemonDetailHeroSentencePart => ({
  emphasis: false,
  pending: true,
  text: label,
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

/*
 * v3's line over the name: "#0059 · Legendary Pokémon · since Generation I".
 * The category is the Pokédex's own ("Legendary Pokémon" for Arcanine);
 * Voydex knows only the legendary, mythical and baby classes, so other
 * Pokémon show a pending category.
 */
export const getPokemonDetailHeroEyebrow = ({
  form,
  species,
}: {
  form: PokemonGenerationFormSummary | null;
  species: PokemonSpecies;
}): PokemonDetailHeroSentencePart[] => {
  const introducedGeneration = form?.introducedGeneration?.name;
  const category = getPokemonDetailCategory(species);

  return [
    plain(formatPokemonNationalNumber(species.national_number)),
    // TODO(v3-data): the species' Pokédex category (genus), such as "Flame Pokémon".
    category ? plain(category) : pending("Category"),
    ...(introducedGeneration ? [plain(`since ${introducedGeneration}`)] : []),
  ];
};

/*
 * The one sentence the entry reads for you (v3): its size, then its best base
 * stat. "1.9 m tall and 155.0 kg, with Attack its best stat at 110." A size
 * Voydex hasn't recorded is a pending piece.
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
  // TODO(v3-data): heights and weights; `pokemon_forms.height_decimeters` and `weight_hectograms` are unseeded.
  const size = [
    heightDecimeters
      ? strong(formatPokemonHeight(heightDecimeters))
      : pending("Height"),
    plain(" tall and "),
    weightHectograms
      ? strong(formatPokemonWeight(weightHectograms))
      : pending("Weight"),
  ];

  if (!stats.length) {
    return [...size, plain(".")];
  }

  const best = Math.max(...stats.map((stat) => stat.value));
  const bestStats = stats.filter((stat) => stat.value === best);
  const bestValue = strong(String(best));

  if (bestStats.length === stats.length) {
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
