import type { PokemonLearnsetSummary } from "@/modules/codex/shared/types";

export const POKEMON_DETAIL_LEARNSET_ALL_METHODS = "all";

export type PokemonDetailLearnsetMethodFilter =
  | typeof POKEMON_DETAIL_LEARNSET_ALL_METHODS
  | string;

export type PokemonDetailLearnsetMethodOption = {
  count: number;
  label: string;
  value: PokemonDetailLearnsetMethodFilter;
};

const pokemonDetailLearnsetFilterLabels = {
  egg: "Egg",
  hm: "HM",
  level_up: "Lv.",
  tm: "TM",
  tutor: "Tutor",
} as const;

const getPokemonDetailLearnsetFilterLabel = (
  learnset: PokemonLearnsetSummary,
) => {
  const methodSlug = learnset.method?.slug;

  if (methodSlug && methodSlug in pokemonDetailLearnsetFilterLabels) {
    return pokemonDetailLearnsetFilterLabels[
      methodSlug as keyof typeof pokemonDetailLearnsetFilterLabels
    ];
  }

  return learnset.method?.name ?? "Unknown";
};

const normalizeSearchValue = (value: string) => {
  return value.trim().toLowerCase();
};

const getMethodSortOrder = (learnset: PokemonLearnsetSummary) => {
  return learnset.method?.sort_order ?? Number.MAX_SAFE_INTEGER;
};

const getLearnsetSortOrder = (learnset: PokemonLearnsetSummary) => {
  return learnset.learnset.sort_order ?? Number.MAX_SAFE_INTEGER;
};

export const getPokemonDetailLearnsetMethodOptions = (
  learnsets: PokemonLearnsetSummary[],
): PokemonDetailLearnsetMethodOption[] => {
  const methodsBySlug = new Map<
    string,
    {
      count: number;
      label: string;
      sortOrder: number;
    }
  >();

  for (const learnset of learnsets) {
    const methodSlug = learnset.method?.slug ?? "unknown";
    const method = methodsBySlug.get(methodSlug);

    methodsBySlug.set(methodSlug, {
      count: (method?.count ?? 0) + 1,
      label: getPokemonDetailLearnsetFilterLabel(learnset),
      sortOrder: Math.min(
        method?.sortOrder ?? Number.MAX_SAFE_INTEGER,
        getMethodSortOrder(learnset),
      ),
    });
  }

  const methodOptions = [...methodsBySlug.entries()]
    .map(([value, method]) => ({
      count: method.count,
      label: method.label,
      sortOrder: method.sortOrder,
      value,
    }))
    .sort((firstMethod, secondMethod) => {
      return (
        firstMethod.sortOrder - secondMethod.sortOrder ||
        firstMethod.label.localeCompare(secondMethod.label)
      );
    })
    .map(({ count, label, value }) => ({
      count,
      label,
      value,
    }));

  return [
    {
      count: learnsets.length,
      label: "All",
      value: POKEMON_DETAIL_LEARNSET_ALL_METHODS,
    },
    ...methodOptions,
  ];
};

export const getFilteredPokemonDetailLearnsets = ({
  learnsets,
  method,
  query,
}: {
  learnsets: PokemonLearnsetSummary[];
  method: PokemonDetailLearnsetMethodFilter;
  query: string;
}) => {
  const normalizedQuery = normalizeSearchValue(query);

  return learnsets
    .filter((learnset) => {
      if (method === POKEMON_DETAIL_LEARNSET_ALL_METHODS) {
        return true;
      }

      return learnset.method?.slug === method;
    })
    .filter((learnset) => {
      if (!normalizedQuery) {
        return true;
      }

      return [
        learnset.move.name,
        getPokemonDetailLearnsetMethodDetail(learnset),
        learnset.method?.name,
        learnset.attributes?.damage_class,
        learnset.type?.name,
        learnset.learnset.machine_label,
        learnset.learnset.condition_summary,
      ]
        .filter(Boolean)
        .some((value) => {
          return normalizeSearchValue(String(value)).includes(normalizedQuery);
        });
    })
    .sort((firstLearnset, secondLearnset) => {
      return (
        getMethodSortOrder(firstLearnset) -
          getMethodSortOrder(secondLearnset) ||
        getLearnsetSortOrder(firstLearnset) -
          getLearnsetSortOrder(secondLearnset) ||
        firstLearnset.move.name.localeCompare(secondLearnset.move.name)
      );
    });
};

export const formatPokemonDetailLearnsetValue = (
  value: number | null | undefined,
  suffix = "",
) => {
  return value === null || value === undefined ? "-" : `${value}${suffix}`;
};

export const formatPokemonDetailLearnsetDamageClass = (
  damageClass?: string | null,
) => {
  if (!damageClass) {
    return "Unknown";
  }

  return damageClass
    .split("-")
    .map((word) => {
      return word.slice(0, 1).toUpperCase() + word.slice(1);
    })
    .join(" ");
};

export const getPokemonDetailLearnsetMethodDetail = (
  learnset: PokemonLearnsetSummary,
) => {
  if (
    learnset.method?.slug === "level_up" &&
    learnset.learnset.level_learned_at !== null
  ) {
    if (learnset.learnset.level_learned_at === 0) {
      return "Evolution";
    }

    if (learnset.learnset.level_learned_at === 1) {
      return "-";
    }

    return `Lv. ${learnset.learnset.level_learned_at}`;
  }

  const machineLabel = learnset.learnset.machine_label?.replace(/\s+/g, "");

  if (machineLabel) {
    return machineLabel;
  }

  return learnset.method?.name ?? "Unknown";
};

export const getPokemonDetailLearnsetAddedContentLabel = (
  learnset: PokemonLearnsetSummary,
) => {
  if (!learnset.sourceVersionGroup?.parent_version_group_id) {
    return null;
  }

  return `Added in ${learnset.sourceVersionGroup.name}.`;
};
