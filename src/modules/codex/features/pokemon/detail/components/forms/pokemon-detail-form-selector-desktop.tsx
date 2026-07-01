"use client";

import { useRouter } from "next/navigation";
import { useMemo, useState } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailFormSelectorOptionContent } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-option";
import {
  PokemonDetailFormSelectorTrigger,
  pokemonDetailFormSelectorTriggerClassName,
} from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-trigger";
import {
  getFilteredPokemonDetailForms,
  getPokemonDetailFormHref,
  getPokemonDetailFormItemValue,
  getPokemonDetailFormSearchValue,
  type PokemonDetailFormSelectorScope,
} from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-utils";
import { isPokemonDetailFormEqual } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
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

type PokemonDetailFormSelectorDesktopProps = PokemonDetailFormSelectorScope & {
  activeForm: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
  onSelectForm: () => void;
  speciesNationalNumber: number;
};

export const PokemonDetailFormSelectorDesktop = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: PokemonDetailFormSelectorDesktopProps) => {
  const router = useRouter();
  const [inputValue, setInputValue] = useState("");
  const filteredForms = useMemo(
    () => getFilteredPokemonDetailForms(forms, inputValue),
    [forms, inputValue],
  );

  return (
    <div className="hidden md:block">
      <Combobox
        items={filteredForms}
        inputValue={inputValue}
        value={activeForm}
        filter={null}
        itemToStringLabel={getPokemonDetailFormSearchValue}
        itemToStringValue={getPokemonDetailFormItemValue}
        isItemEqualToValue={isPokemonDetailFormEqual}
        onInputValueChange={setInputValue}
        onValueChange={(selectedForm) => {
          if (
            !selectedForm ||
            isPokemonDetailFormEqual(selectedForm, activeForm)
          ) {
            return;
          }

          onSelectForm();
          router.push(
            getPokemonDetailFormHref({
              activeGameSlug,
              activeGenerationSlug,
              form: selectedForm,
              speciesSlug,
            }),
          );
        }}
        onOpenChange={(open) => {
          if (!open) {
            setInputValue("");
          }
        }}
        autoHighlight
      >
        <ComboboxTrigger
          render={
            <Button
              variant="outline"
              aria-label="Choose Pokemon form"
              className={pokemonDetailFormSelectorTriggerClassName}
            />
          }
        >
          <span className="flex min-w-0 flex-1 overflow-hidden">
            <ComboboxValue>
              {(selectedForm: PokemonGenerationFormSummary | null) => (
                <PokemonDetailFormSelectorTrigger
                  activeForm={selectedForm ?? activeForm}
                  forms={forms}
                />
              )}
            </ComboboxValue>
          </span>
        </ComboboxTrigger>
        <ComboboxContent className="w-96 max-w-[calc(100vw-2rem)]">
          <ComboboxInput showTrigger={false} placeholder="Search forms" />
          <ComboboxEmpty>No forms found.</ComboboxEmpty>
          <ComboboxList className="max-h-96 pt-0">
            {(form: PokemonGenerationFormSummary) => (
              <ComboboxItem
                key={form.form.id}
                value={form}
                aria-current={
                  isPokemonDetailFormEqual(form, activeForm)
                    ? "true"
                    : undefined
                }
                className={cn(
                  "min-h-14 gap-3",
                  isPokemonDetailFormEqual(form, activeForm) &&
                    "bg-accent text-accent-foreground",
                )}
              >
                <PokemonDetailFormSelectorOptionContent
                  form={form}
                  nationalNumber={speciesNationalNumber}
                />
              </ComboboxItem>
            )}
          </ComboboxList>
        </ComboboxContent>
      </Combobox>
    </div>
  );
};
