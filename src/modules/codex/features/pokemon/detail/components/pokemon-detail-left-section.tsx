"use client";

import { useState } from "react";

import { PokemonDetailEvolutionSection } from "@/modules/codex/features/pokemon/detail/components/evolution/pokemon-detail-evolution-section";
import { PokemonDetailFormsSection } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-forms-section";
import { PokemonDetailPortraitSection } from "@/modules/codex/features/pokemon/detail/components/portrait/pokemon-detail-portrait-section";
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
  const isShowingShiny = showShiny && Boolean(shinyImageUrl);
  const resetShinyVariant = () => {
    setShowShiny(false);
  };

  return (
    <section className="flex min-w-0 flex-col gap-2">
      <PokemonDetailPortraitSection
        activeForm={scope.form}
        defaultImageUrl={defaultImageUrl}
        isShowingShiny={isShowingShiny}
        onShinyChange={setShowShiny}
        shinyImageUrl={shinyImageUrl}
        speciesName={data.species.name}
      />

      <PokemonDetailFormsSection
        activeForm={scope.form}
        activeGameSlug={scope.game?.slug ?? null}
        activeGenerationSlug={scope.generation.generation.slug}
        forms={scope.forms}
        onSelectForm={resetShinyVariant}
        speciesNationalNumber={data.species.national_number}
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
