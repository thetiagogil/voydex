import Link from "next/link";

import { cn } from "@/lib/utils";
import { PokemonDetailFormListItemContent } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-list-item-content";
import { getPokemonDetailFormHref } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-utils";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import { getPokemonDetailActionPortraitStyle } from "@/modules/codex/features/pokemon/detail/components/portrait/pokemon-detail-action-portrait";
import {
  getPokemonDetailFormTypeSlug,
  isPokemonDetailFormEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
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
    <PokemonDetailSectionCard
      title="Forms"
      contentClassName="grid min-w-0 gap-2"
    >
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
            style={getPokemonDetailActionPortraitStyle(typeSlug)}
            className={cn(
              "border-app-surface-border/70 bg-background/30 focus-visible:ring-primary focus-visible:ring-offset-background min-w-0 rounded-lg border p-2 transition-all duration-200 hover:border-(--pokemon-detail-action-portrait-color) hover:bg-(--pokemon-detail-action-portrait-background) hover:shadow-(--pokemon-detail-action-portrait-shadow) focus-visible:border-(--pokemon-detail-action-portrait-color) focus-visible:bg-(--pokemon-detail-action-portrait-background) focus-visible:shadow-(--pokemon-detail-action-portrait-shadow) focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
              isActive &&
                "border-(--pokemon-detail-action-portrait-color) bg-(--pokemon-detail-action-portrait-background)",
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
    </PokemonDetailSectionCard>
  );
};
