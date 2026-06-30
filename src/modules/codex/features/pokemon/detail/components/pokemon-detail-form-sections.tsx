"use client";

import { PokemonDetailOtherForms } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-other-forms";
import { PokemonDetailShinyFormButton } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-shiny-form-button";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";

type PokemonDetailFormSectionsProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  isShowingShiny: boolean;
  onShinyChange: (isShowingShiny: boolean) => void;
  speciesName: string;
  speciesSlug: string;
};

export const PokemonDetailFormSections = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  isShowingShiny,
  onShinyChange,
  speciesName,
  speciesSlug,
}: PokemonDetailFormSectionsProps) => {
  const hasMultipleForms = forms.length > 1;

  return (
    <section
      aria-label={"Pok\u00e9mon form display options"}
      className="flex h-full max-h-full flex-col gap-4"
    >
      <div aria-label="Shiny form" role="group">
        <PokemonDetailShinyFormButton
          activeForm={activeForm}
          isShowingShiny={isShowingShiny}
          onShinyChange={onShinyChange}
          speciesName={speciesName}
        />
      </div>

      {hasMultipleForms ? (
        <PokemonDetailOtherForms
          activeForm={activeForm}
          activeGameSlug={activeGameSlug}
          activeGenerationSlug={activeGenerationSlug}
          forms={forms}
          onSelectForm={() => {
            onShinyChange(false);
          }}
          speciesSlug={speciesSlug}
        />
      ) : null}
    </section>
  );
};
