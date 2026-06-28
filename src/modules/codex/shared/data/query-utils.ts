import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import type {
  Game,
  GameCard,
  GamePlatform,
  GameType,
  Generation,
  Platform,
  PokemonAttributes,
  PokemonTypePair,
  Region,
  Type,
  VersionGroup,
} from "@/modules/codex/shared/types";

export const byId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return new Map(rows.map((row) => [row.id, row]));
};

export const byNullableId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return byId(rows);
};

export const normalizeSearchQuery = (query?: string | null): string => {
  return query?.trim() ?? "";
};

export const normalizeSlug = (value?: string | null): string => {
  return value?.trim().toLowerCase() ?? "";
};

export const resolveReferenceFilter = <
  T extends {
    id: number;
    slug: string;
  },
>(
  rows: T[],
  value: string,
) => {
  return rows.find((row) => row.slug === value || String(row.id) === value);
};

export const isNumber = (value: number | null | undefined): value is number => {
  return typeof value === "number";
};

export const selectLatestAttributes = (
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> => {
  const latestByForm = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    if (!attribute.form_id) {
      continue;
    }

    const current = latestByForm.get(attribute.form_id);

    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      latestByForm.set(attribute.form_id, attribute);
    }
  }

  return latestByForm;
};

export const resolveTypePair = (
  attribute: PokemonAttributes | null,
  typeById: Map<number, Type>,
): PokemonTypePair => {
  if (!attribute) {
    return {
      primaryType: null,
      secondaryType: null,
    };
  }

  return {
    primaryType: typeById.get(attribute.primary_type_id) ?? null,
    secondaryType: attribute.secondary_type_id
      ? (typeById.get(attribute.secondary_type_id) ?? null)
      : null,
  };
};

export const buildGameCards = (params: {
  gamePlatforms: GamePlatform[];
  gameTypes: GameType[];
  games: Game[];
  generations: Generation[];
  platforms: Platform[];
  regions: Region[];
  versionGroups: VersionGroup[];
}): GameCard[] => {
  const generationById = byId(params.generations);
  const regionById = byId(params.regions);
  const versionGroupById = byId(params.versionGroups);
  const gameTypeById = byId(params.gameTypes);
  const platformById = byId(params.platforms);
  const platformsByGame = new Map<number, Platform[]>();

  for (const gamePlatform of params.gamePlatforms) {
    const platform = platformById.get(gamePlatform.platform_id);

    if (!platform) {
      continue;
    }

    const current = platformsByGame.get(gamePlatform.game_id) ?? [];

    current.push(platform);
    platformsByGame.set(gamePlatform.game_id, current);
  }

  return params.games.map((game) => ({
    game,
    coverImageUrl: getGameCoverImageUrl(game),
    generation: generationById.get(game.generation_id) ?? null,
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
    gameType: gameTypeById.get(game.game_type_id) ?? null,
    platforms: platformsByGame.get(game.id) ?? [],
  }));
};
