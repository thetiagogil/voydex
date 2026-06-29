import { PokemonDetailPortraitSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-portrait-section";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import type { PokemonDetailData } from "@/modules/codex/shared/types";

type PokemonDetailLeftSectionProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailLeftSection = ({
  data,
  scope,
}: PokemonDetailLeftSectionProps) => {
  return (
    <div className="flex min-w-0 flex-col gap-4">
      <PokemonDetailPortraitSection
        activeForm={scope.form}
        activeGameSlug={scope.game?.slug ?? null}
        activeGenerationSlug={scope.generation.generation.slug}
        forms={scope.generation.forms}
        speciesName={data.species.name}
        speciesSlug={data.species.slug}
      />
    </div>
  );
};
