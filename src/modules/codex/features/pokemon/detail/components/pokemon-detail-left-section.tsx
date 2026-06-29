import { PokemonDetailEvolutionSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-section";
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
    <section className="border-app-surface-border bg-card/76 flex min-w-0 flex-col gap-3 rounded-xl border p-3 shadow-(--app-surface-shadow) backdrop-blur-xl">
      <PokemonDetailPortraitSection
        activeForm={scope.form}
        activeGameSlug={scope.game?.slug ?? null}
        activeGenerationSlug={scope.generation.generation.slug}
        forms={scope.generation.forms}
        speciesName={data.species.name}
        speciesSlug={data.species.slug}
      />

      <PokemonDetailEvolutionSection
        activeFormId={scope.form?.form.id ?? null}
        activeGameSlug={scope.game?.slug ?? null}
        activeGenerationSlug={scope.generation.generation.slug}
        activeGenerationSortOrder={scope.generation.generation.sort_order}
        activeSpeciesId={data.species.id}
        activeVersionGroupId={scope.versionGroup?.versionGroup.id ?? null}
        activeVersionGroupSlug={scope.versionGroup?.versionGroup.slug ?? null}
        family={data.evolutionFamily}
      />
    </section>
  );
};
