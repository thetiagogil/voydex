"use client";

import { useRouter } from "next/navigation";
import { useMemo, useState } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailFormOptionContent } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-form-option";
import { isPokemonDetailFormEqual } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
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
import { Input } from "@/shared/components/ui/input";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PokemonDetailVariantFormsSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  hasShinyImage: boolean;
  isShowingShiny: boolean;
  onShinyChange: (isShowingShiny: boolean) => void;
  speciesNationalNumber: number;
  speciesSlug: string;
};

type PokemonDetailFormHrefParams = {
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  form: PokemonGenerationFormSummary;
  speciesSlug: string;
};

const getPokemonDetailFormSearchValue = (
  form: PokemonGenerationFormSummary,
) => {
  return [
    form.form.name,
    form.typePair.primaryType?.name,
    form.typePair.secondaryType?.name,
  ]
    .filter(Boolean)
    .join(" ");
};

const getPokemonDetailFormItemValue = (form: PokemonGenerationFormSummary) => {
  return form.form.slug;
};

const getFilteredPokemonDetailForms = (
  forms: PokemonGenerationFormSummary[],
  inputValue: string,
) => {
  const normalizedInputValue = inputValue.trim().toLowerCase();

  if (!normalizedInputValue) {
    return forms;
  }

  return forms.filter((form) => {
    return getPokemonDetailFormSearchValue(form)
      .toLowerCase()
      .includes(normalizedInputValue);
  });
};

const getPokemonDetailFormHref = ({
  activeGameSlug,
  activeGenerationSlug,
  form,
  speciesSlug,
}: PokemonDetailFormHrefParams) => {
  return getPokemonDetailScopeHref(speciesSlug, {
    form: form.form.is_default ? undefined : form.form.slug,
    game: activeGameSlug ?? undefined,
    generation: activeGenerationSlug,
  });
};

const PokemonDetailSelectedFormTriggerLabel = ({
  activeForm,
  forms,
}: Pick<PokemonDetailVariantFormsSectionProps, "activeForm" | "forms">) => {
  const selectedForm = activeForm ?? forms[0] ?? null;

  if (!selectedForm) {
    return <span className="text-muted-foreground text-sm">Choose form</span>;
  }

  return <span className="min-w-0 truncate">{selectedForm.form.name}</span>;
};

const PokemonDetailFormCombobox = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: Pick<
  PokemonDetailVariantFormsSectionProps,
  | "activeForm"
  | "activeGameSlug"
  | "activeGenerationSlug"
  | "forms"
  | "speciesNationalNumber"
  | "speciesSlug"
> & {
  onSelectForm: () => void;
}) => {
  const router = useRouter();
  const [inputValue, setInputValue] = useState("");
  const filteredForms = useMemo(
    () => getFilteredPokemonDetailForms(forms, inputValue),
    [forms, inputValue],
  );

  return (
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
            size="sm"
            aria-label="Choose Pokemon form"
            className="h-auto min-h-11 w-full min-w-0 justify-start px-2 py-1.5 text-left"
          />
        }
      >
        <ComboboxValue>
          {(selectedForm: PokemonGenerationFormSummary | null) => (
            <PokemonDetailSelectedFormTriggerLabel
              activeForm={selectedForm ?? activeForm}
              forms={forms}
            />
          )}
        </ComboboxValue>
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
                isPokemonDetailFormEqual(form, activeForm) ? "true" : undefined
              }
              className={cn(
                "min-h-14 gap-3",
                isPokemonDetailFormEqual(form, activeForm) &&
                  "bg-accent text-accent-foreground",
              )}
            >
              <PokemonDetailFormOptionContent
                form={form}
                nationalNumber={speciesNationalNumber}
              />
            </ComboboxItem>
          )}
        </ComboboxList>
      </ComboboxContent>
    </Combobox>
  );
};

const PokemonDetailFormSheet = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: Pick<
  PokemonDetailVariantFormsSectionProps,
  | "activeForm"
  | "activeGameSlug"
  | "activeGenerationSlug"
  | "forms"
  | "speciesNationalNumber"
  | "speciesSlug"
> & {
  onSelectForm: () => void;
}) => {
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [inputValue, setInputValue] = useState("");
  const filteredForms = useMemo(
    () => getFilteredPokemonDetailForms(forms, inputValue),
    [forms, inputValue],
  );

  const closeSheet = () => {
    setOpen(false);
    setInputValue("");
  };

  const selectForm = (form: PokemonGenerationFormSummary) => {
    onSelectForm();
    closeSheet();

    if (!isPokemonDetailFormEqual(form, activeForm)) {
      router.push(
        getPokemonDetailFormHref({
          activeGameSlug,
          activeGenerationSlug,
          form,
          speciesSlug,
        }),
      );
    }
  };

  return (
    <Sheet
      open={open}
      onOpenChange={(nextOpen) => {
        setOpen(nextOpen);

        if (!nextOpen) {
          setInputValue("");
        }
      }}
    >
      <SheetTrigger
        render={
          <Button
            variant="outline"
            size="sm"
            aria-label="Choose Pokemon form"
            className="h-auto min-h-11 w-full min-w-0 justify-start px-2 py-1.5 text-left"
          />
        }
      >
        <PokemonDetailSelectedFormTriggerLabel
          activeForm={activeForm}
          forms={forms}
        />
      </SheetTrigger>
      <SheetContent
        side="bottom"
        className="border-app-surface-border bg-popover/96 max-h-[86dvh] gap-0 rounded-t-xl p-0 backdrop-blur-xl md:hidden"
      >
        <SheetHeader>
          <SheetTitle>Choose form</SheetTitle>
          <SheetDescription>
            Search forms available in this game scope.
          </SheetDescription>
        </SheetHeader>

        <div className="border-border/50 border-y p-4">
          <Input
            value={inputValue}
            onChange={(event) => {
              setInputValue(event.target.value);
            }}
            placeholder="Search forms"
            aria-label="Search forms"
            autoFocus
          />
        </div>

        <div className="min-h-0 flex-1 overflow-y-auto p-4 pt-2">
          {filteredForms.length ? (
            <div className="grid gap-1">
              {filteredForms.map((form) => {
                const isActive = isPokemonDetailFormEqual(form, activeForm);

                return (
                  <Button
                    key={form.form.id}
                    variant="ghost"
                    aria-current={isActive ? "true" : undefined}
                    className={cn(
                      "h-auto min-h-14 w-full justify-start gap-3 p-2 text-left",
                      isActive && "bg-accent text-accent-foreground",
                    )}
                    onClick={() => {
                      selectForm(form);
                    }}
                  >
                    <PokemonDetailFormOptionContent
                      form={form}
                      nationalNumber={speciesNationalNumber}
                    />
                  </Button>
                );
              })}
            </div>
          ) : (
            <p className="text-muted-foreground px-2 py-8 text-center text-sm">
              No forms found.
            </p>
          )}
        </div>
      </SheetContent>
    </Sheet>
  );
};

const PokemonDetailVariantTrigger = ({
  hasShinyImage,
  isShowingShiny,
  onShinyChange,
}: Pick<
  PokemonDetailVariantFormsSectionProps,
  "hasShinyImage" | "isShowingShiny" | "onShinyChange"
>) => {
  const selectedVariantLabel = isShowingShiny ? "Shiny" : "Base";
  const nextVariantLabel = isShowingShiny ? "Base" : "Shiny";

  return (
    <Button
      type="button"
      variant="outline"
      size="sm"
      aria-pressed={isShowingShiny}
      disabled={!hasShinyImage}
      aria-label={
        hasShinyImage
          ? `Showing ${selectedVariantLabel} variant. Switch to ${nextVariantLabel}.`
          : "Base variant selected. Shiny artwork unavailable."
      }
      className="h-11 w-full min-w-0 justify-between px-3 text-left"
      onClick={() => {
        onShinyChange(!isShowingShiny);
      }}
    >
      <span className="min-w-0 truncate">{selectedVariantLabel}</span>
      <span className="text-muted-foreground ml-2 shrink-0 text-xs">
        {hasShinyImage ? "Switch" : "Only base"}
      </span>
    </Button>
  );
};

const PokemonDetailFormsControl = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onShinyChange,
  speciesNationalNumber,
  speciesSlug,
}: Pick<
  PokemonDetailVariantFormsSectionProps,
  | "activeForm"
  | "activeGameSlug"
  | "activeGenerationSlug"
  | "forms"
  | "onShinyChange"
  | "speciesNationalNumber"
  | "speciesSlug"
>) => {
  const handleSelectForm = () => {
    onShinyChange(false);
  };

  return (
    <>
      <div className="hidden md:block">
        <PokemonDetailFormCombobox
          activeGameSlug={activeGameSlug}
          activeGenerationSlug={activeGenerationSlug}
          activeForm={activeForm}
          forms={forms}
          onSelectForm={handleSelectForm}
          speciesNationalNumber={speciesNationalNumber}
          speciesSlug={speciesSlug}
        />
      </div>
      <div className="md:hidden">
        <PokemonDetailFormSheet
          activeForm={activeForm}
          activeGameSlug={activeGameSlug}
          activeGenerationSlug={activeGenerationSlug}
          forms={forms}
          onSelectForm={handleSelectForm}
          speciesNationalNumber={speciesNationalNumber}
          speciesSlug={speciesSlug}
        />
      </div>
    </>
  );
};

export const PokemonDetailVariantFormsSection = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  hasShinyImage,
  isShowingShiny,
  onShinyChange,
  speciesNationalNumber,
  speciesSlug,
}: PokemonDetailVariantFormsSectionProps) => {
  const hasMultipleForms = forms.length > 1;

  return (
    <section className="border-app-surface-border/60 grid gap-3 border-b pb-3">
      <div className={cn("grid gap-3", hasMultipleForms && "sm:grid-cols-3")}>
        <div className="grid min-w-0 gap-2">
          <h2 className="text-muted-foreground text-sm font-light">Variant</h2>
          <PokemonDetailVariantTrigger
            hasShinyImage={hasShinyImage}
            isShowingShiny={isShowingShiny}
            onShinyChange={onShinyChange}
          />
        </div>

        {hasMultipleForms ? (
          <div className="grid min-w-0 gap-2 sm:col-span-2">
            <h2 className="text-muted-foreground text-sm font-light">Forms</h2>
            <PokemonDetailFormsControl
              activeForm={activeForm}
              activeGameSlug={activeGameSlug}
              activeGenerationSlug={activeGenerationSlug}
              forms={forms}
              onShinyChange={onShinyChange}
              speciesNationalNumber={speciesNationalNumber}
              speciesSlug={speciesSlug}
            />
          </div>
        ) : null}
      </div>
    </section>
  );
};
