"use client";

import { useState } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailFormCombobox } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-form-combobox";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormShinyImageUrl,
  getPokemonDetailFormTypeSlug,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { pokemonTypeClassNames } from "@/shared/components/pokemon/type-styles";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailPortraitSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  speciesName: string;
  speciesSlug: string;
};

export const PokemonDetailPortraitSection = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  speciesName,
  speciesSlug,
}: PokemonDetailPortraitSectionProps) => {
  const [showShiny, setShowShiny] = useState(false);
  const typeSlug = getPokemonDetailFormTypeSlug(activeForm);
  const typeClassNames = typeSlug ? pokemonTypeClassNames[typeSlug] : null;
  const defaultImageUrl = getPokemonDetailFormImageUrl(activeForm);
  const shinyImageUrl = getPokemonDetailFormShinyImageUrl(activeForm);
  const hasShinyImage = Boolean(shinyImageUrl);
  const isShowingShiny = showShiny && hasShinyImage;
  const imageUrl =
    isShowingShiny && shinyImageUrl ? shinyImageUrl : defaultImageUrl;

  return (
    <section
      className={cn(
        "overflow-hidden rounded-lg border",
        typeClassNames?.background,
        typeClassNames?.border ?? "border-app-surface-border",
      )}
    >
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(activeForm, speciesName)}
        imageUrl={imageUrl}
        type={typeSlug}
        fallbackOnError
        priority
        className="aspect-4/3 w-full rounded-none border-0 bg-transparent"
        glowClassName="opacity-25"
        imageClassName="p-8 sm:p-10"
      />

      <div className="bg-card/30 p-2 backdrop-blur-sm">
        <div className="flex min-w-0 items-center gap-2">
          <Button
            type="button"
            variant="ghost"
            size="sm"
            aria-pressed={isShowingShiny}
            disabled={!hasShinyImage}
            className={cn(
              "shrink-0",
              isShowingShiny && "border-primary bg-primary/10 text-primary",
            )}
            onClick={() => {
              setShowShiny((current) => !current);
            }}
          >
            <AppIcon icon={appIcons.product.activity} inline="start" />
            Shiny
          </Button>

          <PokemonDetailFormCombobox
            activeForm={activeForm}
            activeGameSlug={activeGameSlug}
            activeGenerationSlug={activeGenerationSlug}
            forms={forms}
            speciesSlug={speciesSlug}
          />
        </div>
      </div>
    </section>
  );
};
