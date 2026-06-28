import type {
  PokemonDetailData,
  PokemonGenerationDetail,
} from "@/modules/codex/shared/types";
import type {
  PokemonDetailScopeParams,
  PokemonDetailVersionGroupScope,
} from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";

export const matchesSlugOrId = (
  row: { id: number; slug: string },
  value?: string,
) => {
  return value === row.slug || value === String(row.id);
};

export const getDefaultGeneration = (data: PokemonDetailData) => {
  return (
    data.generationDetails.find((generation) => {
      return generation.availability.length > 0 || generation.forms.length > 0;
    }) ??
    data.generationDetails[0] ??
    null
  );
};

export const getGenerationFromParams = (
  data: PokemonDetailData,
  params: PokemonDetailScopeParams,
) => {
  if (params.game) {
    const generationByGame = data.generationDetails.find((generationDetail) => {
      return generationDetail.games.some((game) => {
        return matchesSlugOrId(game, params.game);
      });
    });

    if (generationByGame) {
      return generationByGame;
    }
  }

  const generationByParam = data.generationDetails.find((generationDetail) => {
    return matchesSlugOrId(generationDetail.generation, params.generation);
  });

  if (generationByParam) {
    return generationByParam;
  }

  if (params.versionGroup) {
    const generationByVersionGroup = data.generationDetails.find(
      (generationDetail) => {
        return generationDetail.versionGroups.some((versionGroup) => {
          return matchesSlugOrId(versionGroup, params.versionGroup);
        });
      },
    );

    if (generationByVersionGroup) {
      return generationByVersionGroup;
    }
  }

  return getDefaultGeneration(data);
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

export const getDefaultVersionGroup = (
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

export const getVersionGroupFromGame = (
  gameParam: string | undefined,
  versionGroups: PokemonDetailVersionGroupScope[],
) => {
  if (!gameParam) {
    return null;
  }

  return (
    versionGroups.find((scope) => {
      return scope.games.some((game) => {
        return matchesSlugOrId(game, gameParam);
      });
    }) ?? null
  );
};

export const getDefaultGame = (
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

export const getDefaultForm = (
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
