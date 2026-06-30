"use client";

import { useState } from "react";

import { PokemonDetailEvolutionSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-evolution-section";
import { PokemonDetailFormSections } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-form-sections";
import { PokemonDetailPortraitSection } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-portrait-section";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import {
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormShinyImageUrl,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonDetailData } from "@/modules/codex/shared/types";

type PokemonDetailLeftSectionProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailLeftSection = ({
  data,
  scope,
}: PokemonDetailLeftSectionProps) => {
  const [showShiny, setShowShiny] = useState(false);
  const defaultImageUrl = getPokemonDetailFormImageUrl(scope.form);
  const shinyImageUrl = getPokemonDetailFormShinyImageUrl(scope.form);
  const hasShinyImage = Boolean(shinyImageUrl);
  const isShowingShiny = showShiny && hasShinyImage;
  const imageUrl =
    isShowingShiny && shinyImageUrl ? shinyImageUrl : defaultImageUrl;

  return (
    <section className="border-app-surface-border bg-card/76 flex min-w-0 flex-col gap-3 rounded-xl border p-3 shadow-(--app-surface-shadow) backdrop-blur-xl sm:p-5">
      <PokemonDetailPortraitSection
        activeForm={scope.form}
        formControls={
          <PokemonDetailFormSections
            activeForm={scope.form}
            activeGameSlug={scope.game?.slug ?? null}
            activeGenerationSlug={scope.generation.generation.slug}
            forms={scope.forms}
            isShowingShiny={isShowingShiny}
            onShinyChange={setShowShiny}
            speciesName={data.species.name}
            speciesSlug={data.species.slug}
          />
        }
        imageUrl={imageUrl}
        isShowingShiny={isShowingShiny}
        speciesName={data.species.name}
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
