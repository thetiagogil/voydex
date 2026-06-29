"use client";

import { useRouter } from "next/navigation";

import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormTypeSlug,
  isPokemonDetailFormEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
} from "@/shared/components/ui/combobox";

type PokemonDetailFormComboboxProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  speciesSlug: string;
};

type PokemonDetailFormOptionProps = {
  form: PokemonGenerationFormSummary;
  isActive: boolean;
};

const getFormSearchValue = (form: PokemonGenerationFormSummary) => {
  return form.form.name;
};

const getFormValue = (form: PokemonGenerationFormSummary) => {
  return form.form.slug;
};

const PokemonDetailFormOption = ({
  form,
  isActive,
}: PokemonDetailFormOptionProps) => {
  return (
    <ComboboxItem
      value={form}
      aria-current={isActive ? "true" : undefined}
      className="min-h-14 gap-3"
    >
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(form)}
        imageUrl={getPokemonDetailFormImageUrl(form)}
        type={getPokemonDetailFormTypeSlug(form)}
        fallbackOnError
        className="size-11 shrink-0 rounded-lg"
        imageClassName="p-1"
      />
      <span className="min-w-0 flex-1">
        <span className="block truncate font-medium">{form.form.name}</span>
        <span className="text-muted-foreground block truncate text-xs">
          {form.introducedGeneration?.name ?? "Unknown generation"}
        </span>
      </span>
      <PokemonTypeList
        primaryType={form.typePair.primaryType}
        secondaryType={form.typePair.secondaryType}
        badgeDisplay="icon"
        badgeSize="sm"
        className="ml-auto shrink-0 gap-1"
      />
    </ComboboxItem>
  );
};

export const PokemonDetailFormCombobox = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  speciesSlug,
}: PokemonDetailFormComboboxProps) => {
  const router = useRouter();

  if (forms.length <= 1) {
    return null;
  }

  return (
    <Combobox
      items={forms}
      value={activeForm}
      itemToStringLabel={getFormSearchValue}
      itemToStringValue={getFormValue}
      isItemEqualToValue={isPokemonDetailFormEqual}
      onValueChange={(nextForm) => {
        if (!nextForm || isPokemonDetailFormEqual(nextForm, activeForm)) {
          return;
        }

        router.push(
          getPokemonDetailScopeHref(speciesSlug, {
            form: nextForm.form.is_default ? undefined : nextForm.form.slug,
            game: activeGameSlug ?? undefined,
            generation: activeGenerationSlug,
          }),
        );
      }}
      autoHighlight
    >
      <ComboboxTrigger
        render={
          <Button
            variant="outline"
            size="sm"
            className="max-w-full min-w-0 flex-1 justify-between"
            aria-label="Choose Pokémon form"
          />
        }
      >
        <ComboboxValue>
          {(selectedForm: PokemonGenerationFormSummary | null) => (
            <span className="inline-flex items-center gap-1 truncate">
              <AppIcon icon={appIcons.product.form} inline="start" />
              {selectedForm?.form.name ?? activeForm?.form.name ?? "Form"}
            </span>
          )}
        </ComboboxValue>
      </ComboboxTrigger>
      <ComboboxContent className="w-80 max-w-[calc(100vw-2rem)]">
        <ComboboxInput showTrigger={false} placeholder="Search forms" />
        <ComboboxEmpty>No forms found.</ComboboxEmpty>
        <ComboboxList className="max-h-80">
          {(form: PokemonGenerationFormSummary) => (
            <PokemonDetailFormOption
              key={form.form.id}
              form={form}
              isActive={isPokemonDetailFormEqual(form, activeForm)}
            />
          )}
        </ComboboxList>
      </ComboboxContent>
    </Combobox>
  );
};
