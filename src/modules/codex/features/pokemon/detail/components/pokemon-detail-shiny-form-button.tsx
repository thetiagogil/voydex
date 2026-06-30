import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormShinyImageUrl,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { PokemonDetailFormThumbnailImage } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-form-thumbnail-image";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailShinyFormButtonProps = {
  activeForm: PokemonGenerationFormSummary | null;
  isShowingShiny: boolean;
  onShinyChange: (isShowingShiny: boolean) => void;
  speciesName: string;
};

export const PokemonDetailShinyFormButton = ({
  activeForm,
  isShowingShiny,
  onShinyChange,
  speciesName,
}: PokemonDetailShinyFormButtonProps) => {
  const shinyImageUrl = getPokemonDetailFormShinyImageUrl(activeForm);
  const label = `Shiny ${activeForm?.form.name ?? speciesName}`;

  return (
    <Button
      type="button"
      variant="ghost"
      size="icon-sm"
      aria-label={`Show ${label}`}
      aria-pressed={isShowingShiny}
      disabled={!shinyImageUrl}
      title={label}
      onClick={() => {
        onShinyChange(!isShowingShiny);
      }}
    >
      <PokemonDetailFormThumbnailImage
        alt={`Shiny ${getPokemonDetailFormImageAlt(activeForm, speciesName)}`}
        form={activeForm}
        imageUrl={shinyImageUrl}
      />
    </Button>
  );
};
