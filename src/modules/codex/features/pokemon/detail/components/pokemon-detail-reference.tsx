import {
  PokemonDetailHeader,
  type PokemonDetailHeaderGeneration,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-header";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/data/pokemon-detail-scope";
import { getGameCoverImageUrl } from "@/modules/codex/shared/media/game-images";
import type {
  Game,
  PokemonAvailabilitySummary,
  PokemonDetailData,
} from "@/modules/codex/shared/types";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type PokemonDetailReferenceProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

type PokemonDetailResetCardProps = {
  description: string;
  title: string;
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

const PokemonDetailResetCard = ({
  description,
  title,
}: PokemonDetailResetCardProps) => {
  return (
    <Card className="bg-card/76 shadow-(--app-surface-shadow) backdrop-blur-xl">
      <CardHeader>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
      </CardHeader>
    </Card>
  );
};

const PokemonDetailResetSections = ({
  data,
  scope,
}: PokemonDetailReferenceProps) => {
  const activeGame = scope.game?.name ?? "No game selected";
  const activeForm = scope.form?.form.name ?? "No form selected";
  const availabilityCount = scope.availability.length;

  return (
    <section className="grid gap-4">
      <Card className="bg-card/76 shadow-(--app-surface-shadow) backdrop-blur-xl">
        <CardHeader>
          <CardTitle>Selected reference scope</CardTitle>
          <CardDescription>
            The top selector is the active part of this detail view. The
            sections below are intentionally simplified while the detail page is
            rebuilt.
          </CardDescription>
        </CardHeader>
        <CardContent className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4">
          <div>
            <div className="text-muted-foreground text-xs">Pokémon</div>
            <div className="font-medium">{data.species.name}</div>
          </div>
          <div>
            <div className="text-muted-foreground text-xs">Generation</div>
            <div className="font-medium">
              {scope.generation.generation.name}
            </div>
          </div>
          <div>
            <div className="text-muted-foreground text-xs">Game</div>
            <div className="font-medium">{activeGame}</div>
          </div>
          <div>
            <div className="text-muted-foreground text-xs">Form</div>
            <div className="font-medium">{activeForm}</div>
          </div>
        </CardContent>
      </Card>

      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
        <PokemonDetailResetCard
          title="Profile"
          description="Typing, height, weight, forms, abilities, egg groups, and dex numbers will be rebuilt here."
        />
        <PokemonDetailResetCard
          title="Battle data"
          description="Stats and generation-specific mechanics will return as compact read-only sections."
        />
        <PokemonDetailResetCard
          title="Availability"
          description={`${availabilityCount} seeded availability row${
            availabilityCount === 1 ? "" : "s"
          } found for the selected scope.`}
        />
        <PokemonDetailResetCard
          title="Evolution line"
          description="Evolution chains will be rebuilt as a dedicated responsive section."
        />
        <PokemonDetailResetCard
          title="Moves"
          description="Game-specific move data is intentionally deferred until the core detail layout is settled."
        />
      </div>
    </section>
  );
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

      <PokemonDetailResetSections data={data} scope={scope} />
    </div>
  );
};
