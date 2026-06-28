import { PokemonDetailHeader } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-header";
import { PokemonDetailResetSections } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-reset-sections";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import { getPokemonDetailGenerationNavigationItems } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-generation-navigation";
import type { PokemonDetailData } from "@/modules/codex/shared/types";

type PokemonDetailReferenceProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
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
        generations={getPokemonDetailGenerationNavigationItems(data, scope)}
      />

      <PokemonDetailResetSections data={data} scope={scope} />
    </div>
  );
};
