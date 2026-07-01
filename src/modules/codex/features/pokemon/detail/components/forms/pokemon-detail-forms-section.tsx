import { PokemonDetailFormSelectorDesktop } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-desktop";
import { PokemonDetailFormSelectorMobile } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-mobile";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";

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
    <Card size="sm" className="bg-card/76 gap-0 py-0 backdrop-blur-xl">
      <CardHeader className="px-4 py-3">
        <CardTitle className="text-muted-foreground text-sm font-light">
          Forms
        </CardTitle>
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className="grid min-w-0 gap-2 px-4 py-4">
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
      </CardContent>
    </Card>
  );
};
