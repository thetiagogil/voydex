import { PokemonDetailFormSelectorDesktop } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-desktop";
import { PokemonDetailFormSelectorMobile } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-mobile";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";

type PokemonDetailFormsSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  onSelectForm: () => void;
  speciesNationalNumber: number;
  speciesSlug: string;
};

export const PokemonDetailFormsSection = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: PokemonDetailFormsSectionProps) => {
  const hasAdditionalForms = forms.length > 1;

  if (!hasAdditionalForms) {
    return null;
  }

  return (
    <section className="grid min-w-0 gap-2">
      <h2 className="text-muted-foreground text-sm font-light">Forms</h2>
      <PokemonDetailFormSelectorDesktop
        activeForm={activeForm}
        activeGameSlug={activeGameSlug}
        activeGenerationSlug={activeGenerationSlug}
        forms={forms}
        onSelectForm={onSelectForm}
        speciesNationalNumber={speciesNationalNumber}
        speciesSlug={speciesSlug}
      />
      <PokemonDetailFormSelectorMobile
        activeForm={activeForm}
        activeGameSlug={activeGameSlug}
        activeGenerationSlug={activeGenerationSlug}
        forms={forms}
        onSelectForm={onSelectForm}
        speciesNationalNumber={speciesNationalNumber}
        speciesSlug={speciesSlug}
      />
    </section>
  );
};
