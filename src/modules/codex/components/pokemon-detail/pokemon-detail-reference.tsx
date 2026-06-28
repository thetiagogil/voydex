import { PokemonDetailDossier } from "@/modules/codex/components/pokemon-detail/pokemon-detail-dossier";
import {
  PokemonDetailHeader,
  type PokemonDetailHeaderGeneration,
} from "@/modules/codex/components/pokemon-detail/pokemon-detail-header";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/data/pokemon-detail-scope";
import { getGameCoverImageUrl } from "@/modules/codex/media/game-images";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonDetailData,
} from "@/modules/codex/types";
import { getPokemonDetailScopeHref } from "@/modules/codex/utils/pokemon-detail-routes";

type PokemonDetailReferenceProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

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

const getGenerationMenuItems = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
): PokemonDetailHeaderGeneration[] => {
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

export const PokemonDetailReference = ({
  data,
  scope,
}: PokemonDetailReferenceProps) => {
  return (
    <div className="grid gap-4">
      <PokemonDetailHeader
        activeGameSlug={scope.game?.slug ?? null}
        activePokemon={{
          name: data.species.name,
          nationalNumber: data.species.national_number,
          slug: data.species.slug,
        }}
        generations={getGenerationMenuItems(data, scope)}
      />

      <PokemonDetailDossier data={data} scope={scope} />
    </div>
  );
};
