import Link from "next/link";

import { PokemonDetailFormThumbnailImage } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-form-thumbnail-image";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  isPokemonDetailFormEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailOtherFormsProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  onSelectForm: () => void;
  speciesSlug: string;
};

type PokemonDetailOtherFormButtonProps = {
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  form: PokemonGenerationFormSummary;
  isActive: boolean;
  onSelectForm: () => void;
  speciesSlug: string;
};

const PokemonDetailOtherFormButton = ({
  activeGameSlug,
  activeGenerationSlug,
  form,
  isActive,
  onSelectForm,
  speciesSlug,
}: PokemonDetailOtherFormButtonProps) => {
  const label = form.form.name;
  const thumbnail = (
    <PokemonDetailFormThumbnailImage
      alt={getPokemonDetailFormImageAlt(form)}
      form={form}
      imageUrl={getPokemonDetailFormImageUrl(form)}
    />
  );

  if (isActive) {
    return (
      <Button
        type="button"
        variant="ghost"
        size="icon-sm"
        aria-label={`Show ${label}`}
        aria-current="true"
        title={label}
        onClick={onSelectForm}
      >
        {thumbnail}
      </Button>
    );
  }

  return (
    <Button
      render={
        <Link
          href={getPokemonDetailScopeHref(speciesSlug, {
            form: form.form.is_default ? undefined : form.form.slug,
            game: activeGameSlug ?? undefined,
            generation: activeGenerationSlug,
          })}
        />
      }
      nativeButton={false}
      variant="ghost"
      size="icon-sm"
      aria-label={`Show ${label}`}
      title={label}
      onClick={onSelectForm}
    >
      {thumbnail}
    </Button>
  );
};

export const PokemonDetailOtherForms = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesSlug,
}: PokemonDetailOtherFormsProps) => {
  return (
    <div
      aria-label="Other forms"
      role="group"
      className="flex min-h-0 flex-col gap-2 overflow-y-auto"
    >
      {forms.map((form) => {
        return (
          <PokemonDetailOtherFormButton
            key={form.form.id}
            activeGameSlug={activeGameSlug}
            activeGenerationSlug={activeGenerationSlug}
            form={form}
            isActive={isPokemonDetailFormEqual(form, activeForm)}
            onSelectForm={onSelectForm}
            speciesSlug={speciesSlug}
          />
        );
      })}
    </div>
  );
};
