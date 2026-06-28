import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type { PokemonDetailData } from "@/modules/codex/shared/types";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type PokemonDetailResetSectionsProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

type PokemonDetailResetCardProps = {
  description: string;
  title: string;
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

export const PokemonDetailResetSections = ({
  data,
  scope,
}: PokemonDetailResetSectionsProps) => {
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
