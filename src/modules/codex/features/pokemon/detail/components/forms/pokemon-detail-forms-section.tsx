import Link from "next/link";

import { cn } from "@/shared/utils/cn";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import { PokemonDetailFormListItemContent } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-list-item-content";
import { getPokemonDetailFormHref } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-links";
import { isPokemonDetailFormEqual } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/reference/types";

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
            className={cn(
              "border-line bg-surface-2 focus-visible:ring-primary focus-visible:ring-offset-background hover:bg-muted/60 min-w-0 rounded-lg border p-2 transition-colors focus-visible:ring-2 focus-visible:ring-offset-2 focus-visible:outline-none",
              isActive && "border-primary/45 bg-primary/5",
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
