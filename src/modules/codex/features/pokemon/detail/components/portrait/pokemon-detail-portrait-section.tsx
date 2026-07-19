import { PokemonDetailActionPortrait } from "@/modules/codex/features/pokemon/detail/components/portrait/pokemon-detail-action-portrait";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/reference/types";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";

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

  return (
    <section
      style={typeStyle}
      className="ring-app-surface-border/80 bg-card/80 relative overflow-hidden rounded-xl shadow-none ring-1"
    >
      <PokemonPortrait
        alt={`${isShowingShiny ? "Shiny " : ""}${imageAlt}`}
        imageUrl={imageUrl}
        type={typeSlug}
        fallbackOnError
        loading="eager"
        preload
        sizes="(min-width: 1024px) 346px, (min-width: 640px) 346px, calc(100vw - 4rem)"
        className="aspect-4/3 w-full rounded-none border-0 bg-transparent sm:aspect-video lg:aspect-4/3"
        glowClassName="inset-10 opacity-10"
        imageClassName="p-5 sm:p-7"
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
