import { cn } from "@/shared/utils/cn";
import { PokemonDetailActionPortrait } from "@/modules/codex/features/pokemon/detail/components/portrait/pokemon-detail-action-portrait";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { getPokemonTypeBackgroundImageUrl } from "@/shared/components/pokemon/pokemon-type-backgrounds";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
  pokemonTypeSoftBorderClassName,
} from "@/shared/components/pokemon/pokemon-type-styles";

type PokemonDetailPortraitSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  defaultImageUrl: string | null;
  isShowingShiny: boolean;
  onShinyChange: (isShowingShiny: boolean) => void;
  shinyImageUrl: string | null;
  speciesName: string;
};

export const PokemonDetailPortraitSection = ({
  activeForm,
  defaultImageUrl,
  isShowingShiny,
  onShinyChange,
  shinyImageUrl,
  speciesName,
}: PokemonDetailPortraitSectionProps) => {
  const typeSlug = getPokemonDetailFormTypeSlug(activeForm);
  const typeStyle = typeSlug ? getPokemonTypeCssVariables(typeSlug) : undefined;
  const imageAlt = getPokemonDetailFormImageAlt(activeForm, speciesName);
  const imageUrl =
    isShowingShiny && shinyImageUrl ? shinyImageUrl : defaultImageUrl;
  const toggleImageUrl = isShowingShiny ? defaultImageUrl : shinyImageUrl;
  const toggleImageAlt = isShowingShiny ? imageAlt : `Shiny ${imageAlt}`;
  const backgroundImageUrl = getPokemonTypeBackgroundImageUrl(typeSlug);

  return (
    <section
      style={typeStyle}
      className={cn(
        "relative overflow-hidden rounded-lg border",
        typeSlug && pokemonTypeSoftBackgroundClassName,
        typeSlug ? pokemonTypeSoftBorderClassName : "border-app-surface-border",
      )}
    >
      <PokemonPortrait
        alt={`${isShowingShiny ? "Shiny " : ""}${imageAlt}`}
        backgroundImageClassName="scale-105 opacity-65 saturate-75 contrast-90 brightness-90 blur-[0.5px]"
        backgroundImageUrl={backgroundImageUrl}
        backgroundOverlayClassName="bg-background/30"
        imageUrl={imageUrl}
        type={typeSlug}
        fallbackOnError
        loading="eager"
        preload
        sizes="(min-width: 1024px) 346px, (min-width: 640px) 346px, calc(100vw - 4rem)"
        className="aspect-4/3 w-full rounded-none border-0 bg-transparent"
        glowClassName="opacity-25"
        imageClassName="p-2 sm:p-4"
      />

      {shinyImageUrl && toggleImageUrl ? (
        <button
          type="button"
          aria-pressed={isShowingShiny}
          aria-label={
            isShowingShiny ? "Show base variant" : "Show shiny variant"
          }
          style={getPokemonTypeCssVariables(typeSlug)}
          className="group focus-visible:ring-primary focus-visible:ring-offset-background absolute top-3 right-3 rounded-full focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none"
          onClick={() => {
            onShinyChange(!isShowingShiny);
          }}
        >
          <PokemonDetailActionPortrait
            alt={toggleImageAlt}
            imageUrl={toggleImageUrl}
            size="compact"
            type={typeSlug}
          />
        </button>
      ) : null}
    </section>
  );
};
