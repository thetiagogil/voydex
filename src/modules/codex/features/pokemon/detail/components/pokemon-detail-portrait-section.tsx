import { cn } from "@/lib/utils";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { pokemonTypeClassNames } from "@/shared/components/pokemon/type-styles";

type PokemonDetailPortraitSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  imageUrl: string | null;
  isShowingShiny: boolean;
  speciesName: string;
};

export const PokemonDetailPortraitSection = ({
  activeForm,
  imageUrl,
  isShowingShiny,
  speciesName,
}: PokemonDetailPortraitSectionProps) => {
  const typeSlug = getPokemonDetailFormTypeSlug(activeForm);
  const typeClassNames = typeSlug ? pokemonTypeClassNames[typeSlug] : null;

  return (
    <section
      className={cn(
        "relative overflow-hidden rounded-lg border",
        typeClassNames?.background,
        typeClassNames?.border ?? "border-app-surface-border",
      )}
    >
      <PokemonPortrait
        alt={`${isShowingShiny ? "Shiny " : ""}${getPokemonDetailFormImageAlt(
          activeForm,
          speciesName,
        )}`}
        imageUrl={imageUrl}
        type={typeSlug}
        fallbackOnError
        priority
        className="aspect-4/3 w-full rounded-none border-0 bg-transparent"
        glowClassName="opacity-25"
        imageClassName="p-8 sm:p-10"
      />
    </section>
  );
};
