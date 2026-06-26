import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonDetailData,
  PokemonGenerationDetail,
  PokemonGenerationFormSummary,
  PokemonPokedexSummary,
  VersionGroup,
} from "@/modules/codex/types";

export type PokemonDetailScopeParams = {
  form?: string;
  game?: string;
  generation?: string;
  versionGroup?: string;
};

export type PokemonDetailVersionGroupScope = {
  games: Game[];
  versionGroup: VersionGroup;
};

export type ResolvedPokemonDetailScope = {
  availability: PokemonAvailabilitySummary[];
  form: PokemonGenerationFormSummary | null;
  game: Game | null;
  generation: PokemonGenerationDetail;
  pokedexEntries: PokemonPokedexSummary[];
  versionGroup: PokemonDetailVersionGroupScope | null;
  versionGroups: PokemonDetailVersionGroupScope[];
};

const matchesSlugOrId = (row: { id: number; slug: string }, value?: string) => {
  return value === row.slug || value === String(row.id);
};

const getDefaultGeneration = (data: PokemonDetailData) => {
  return (
    data.generationDetails.find((generation) => {
      return generation.availability.length > 0 || generation.forms.length > 0;
    }) ??
    data.generationDetails[0] ??
    null
  );
};

export const buildPokemonDetailVersionGroupScopes = (
  generation: PokemonGenerationDetail,
): PokemonDetailVersionGroupScope[] => {
  return generation.versionGroups.map((versionGroup) => ({
    games: generation.games.filter((game) => {
      return game.version_group_id === versionGroup.id;
    }),
    versionGroup,
  }));
};

const getDefaultVersionGroup = (
  generation: PokemonGenerationDetail,
  versionGroups: PokemonDetailVersionGroupScope[],
) => {
  const availabilityVersionGroupId = generation.availability.find((row) => {
    return row.targetVersionGroup;
  })?.targetVersionGroup?.id;

  return (
    versionGroups.find((scope) => {
      return scope.versionGroup.id === availabilityVersionGroupId;
    }) ??
    versionGroups[0] ??
    null
  );
};

const getDefaultGame = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
) => {
  if (!versionGroup) {
    return null;
  }

  const availabilityGameId = generation.availability.find((row) => {
    return (
      row.targetVersionGroup?.id === versionGroup.versionGroup.id && row.game
    );
  })?.game?.id;

  return (
    versionGroup.games.find((game) => {
      return game.id === availabilityGameId;
    }) ??
    versionGroup.games[0] ??
    null
  );
};

const getScopedAvailability = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  game: Game | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const scopedRows = generation.availability.filter((row) => {
    if (
      versionGroup &&
      row.targetVersionGroup?.id !== versionGroup.versionGroup.id
    ) {
      return false;
    }

    if (game && row.game && row.game.id !== game.id) {
      return false;
    }

    if (
      form &&
      row.availability.form_id &&
      row.availability.form_id !== form.form.id
    ) {
      return false;
    }

    return true;
  });

  if (scopedRows.length || !form) {
    return scopedRows;
  }

  return generation.availability.filter((row) => {
    if (
      versionGroup &&
      row.targetVersionGroup?.id !== versionGroup.versionGroup.id
    ) {
      return false;
    }

    return !game || !row.game || row.game.id === game.id;
  });
};

const getScopedPokedexEntries = (
  generation: PokemonGenerationDetail,
  versionGroup: PokemonDetailVersionGroupScope | null,
  form: PokemonGenerationFormSummary | null,
) => {
  const versionGroupEntries = versionGroup
    ? generation.pokedexEntries.filter(({ pokedex }) => {
        return pokedex?.version_group_id === versionGroup.versionGroup.id;
      })
    : generation.pokedexEntries;
  const scopedEntries = versionGroupEntries.filter(({ entry }) => {
    return (
      !form ||
      !entry.display_form_id ||
      entry.display_form_id === form.form.id
    );
  });

  return scopedEntries.length ? scopedEntries : versionGroupEntries;
};

const getDefaultForm = (
  generation: PokemonGenerationDetail,
  formParam?: string,
) => {
  return (
    generation.forms.find((form) => {
      return matchesSlugOrId(form.form, formParam);
    }) ??
    generation.forms.find((form) => {
      return form.form.is_default;
    }) ??
    generation.forms[0] ??
    null
  );
};

export const getPokemonDetailScopeQuery = (
  generation: PokemonGenerationDetail,
  versionGroup?: PokemonDetailVersionGroupScope | null,
  game?: Game | null,
  form?: PokemonGenerationFormSummary | null,
) => {
  const defaultVersionGroup =
    versionGroup ??
    getDefaultVersionGroup(
      generation,
      buildPokemonDetailVersionGroupScopes(generation),
    );
  const defaultGame = game ?? getDefaultGame(generation, defaultVersionGroup);

  return {
    form: form?.form.slug,
    game: defaultGame?.slug,
    generation: generation.generation.slug,
    versionGroup: defaultVersionGroup?.versionGroup.slug,
  } satisfies PokemonDetailScopeParams;
};

export const resolvePokemonDetailScope = (
  data: PokemonDetailData,
  params: PokemonDetailScopeParams,
): ResolvedPokemonDetailScope | null => {
  const generation =
    data.generationDetails.find((generationDetail) => {
      return matchesSlugOrId(generationDetail.generation, params.generation);
    }) ?? getDefaultGeneration(data);

  if (!generation) {
    return null;
  }

  const versionGroups = buildPokemonDetailVersionGroupScopes(generation);
  const versionGroup =
    versionGroups.find((scope) => {
      return matchesSlugOrId(scope.versionGroup, params.versionGroup);
    }) ?? getDefaultVersionGroup(generation, versionGroups);
  const game =
    versionGroup?.games.find((availableGame) => {
      return matchesSlugOrId(availableGame, params.game);
    }) ?? getDefaultGame(generation, versionGroup);
  const form = getDefaultForm(generation, params.form);

  return {
    availability: getScopedAvailability(generation, versionGroup, game, form),
    form,
    game,
    generation,
    pokedexEntries: getScopedPokedexEntries(generation, versionGroup, form),
    versionGroup,
    versionGroups,
  };
};
