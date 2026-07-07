import Link from "next/link";

import { cn } from "@/lib/utils";
import { PokemonDetailFormListItemContent } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-list-item-content";
import { getPokemonDetailFormHref } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-links";
import {
  getPokemonDetailFormTypeSlug,
  isPokemonDetailFormEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { CodexDetailSectionCard } from "@/modules/codex/shared/components/codex-detail-section-card";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import {
  getPokemonTypeCssVariables,
  pokemonTypeHoverSurfaceClassName,
  pokemonTypeSelectedSurfaceClassName,
} from "@/shared/components/pokemon/pokemon-type-styles";

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
    <CodexDetailSectionCard title="Forms" contentClassName="grid min-w-0 gap-2">
      {forms.map((form) => {
        const isActive = isPokemonDetailFormEqual(form, activeForm);
        const typeSlug = getPokemonDetailFormTypeSlug(form);

        return (
          <Link
            key={form.form.id}
            href={getPokemonDetailFormHref({
              activeGameSlug,
              activeGenerationSlug,
              form,
              speciesSlug,
            })}
            aria-current={isActive ? "true" : undefined}
            style={getPokemonTypeCssVariables(typeSlug)}
            className={cn(
              "border-app-surface-border/70 bg-background focus-visible:ring-primary focus-visible:ring-offset-background min-w-0 rounded-lg border p-2 focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
              pokemonTypeHoverSurfaceClassName,
              isActive && pokemonTypeSelectedSurfaceClassName,
            )}
            onClick={() => {
              if (!isActive) {
                onSelectForm();
              }
            }}
          >
            <PokemonDetailFormListItemContent
              form={form}
              nationalNumber={speciesNationalNumber}
            />
          </Link>
        );
      })}
    </CodexDetailSectionCard>
  );
};
