import { PokemonDetailContent } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-content";
import { PokemonDetailLeftSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-left-section";
import { PokemonDetailRightSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-right-section";
import { PokemonDetailTopSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-top-section";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import { getPokemonDetailGenerationNavigationItems } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-generation-navigation";
import type { PokemonDetailData } from "@/modules/codex/shared/types";

type PokemonDetailShellProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailShell = ({
  data,
  scope,
}: PokemonDetailShellProps) => {
  return (
    <>
      <PokemonDetailTopSection
        activeGameSlug={scope.game?.slug ?? null}
        activePokemon={{
          name: data.species.name,
          nationalNumber: data.species.national_number,
          slug: data.species.slug,
        }}
        generations={getPokemonDetailGenerationNavigationItems(data, scope)}
      />

      <PokemonDetailContent
        left={<PokemonDetailLeftSection data={data} scope={scope} />}
        right={<PokemonDetailRightSection scope={scope} />}
      />
    </>
  );
};
