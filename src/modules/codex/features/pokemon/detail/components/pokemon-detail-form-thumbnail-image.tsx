import { getPokemonDetailFormTypeSlug } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";

type PokemonDetailFormThumbnailImageProps = {
  alt: string;
  form: PokemonGenerationFormSummary | null;
  imageUrl: string | null;
};

export const PokemonDetailFormThumbnailImage = ({
  alt,
  form,
  imageUrl,
}: PokemonDetailFormThumbnailImageProps) => {
  return (
    <PokemonPortrait
      alt={alt}
      imageUrl={imageUrl}
      type={getPokemonDetailFormTypeSlug(form)}
      fallbackOnError
      className="size-5 rounded-full border-0 bg-transparent"
      glowClassName="hidden"
      imageClassName="p-0.5"
    />
  );
};
