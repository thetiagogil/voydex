import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonDetailData,
} from "@/modules/codex/shared/types";

const getShortGenerationLabel = (generationName: string) => {
  return generationName.replace("Generation ", "");
};

const isPokemonAvailableInGame = (
  availability: PokemonAvailabilitySummary[],
  game: Game,
) => {
  return availability.some((row) => {
    return (
      row.targetVersionGroup?.id === game.version_group_id &&
      (!row.game || row.game.id === game.id)
    );
  });
};

const getScopedFormSlug = (scope: ResolvedPokemonDetailScope) => {
  return scope.form && !scope.form.form.is_default
    ? scope.form.form.slug
    : undefined;
};

export const getPokemonDetailGenerationNavigationItems = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): PokemonDetailGenerationNavigationItem[] => {
  return data.generationDetails.map((generationDetail) => ({
    games: generationDetail.games.map((game) => {
      const isAvailable = isPokemonAvailableInGame(
        generationDetail.availability,
        game,
      );

      return {
        href: getPokemonDetailScopeHref(data.species.slug, {
          form: getScopedFormSlug(scope),
          game: game.slug,
        }),
        id: game.id,
        imageUrl: getGameCoverImageUrl(game),
        isActive: game.id === scope.game?.id,
        isAvailable,
        name: game.name,
        slug: game.slug,
      };
    }),
    id: generationDetail.generation.id,
    isActive: generationDetail.generation.id === scope.generation.generation.id,
    label: getShortGenerationLabel(generationDetail.generation.name),
  }));
};
