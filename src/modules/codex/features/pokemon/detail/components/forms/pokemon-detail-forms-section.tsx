"use client";

import { ChevronDownIcon } from "lucide-react";
import { useRouter } from "next/navigation";
import { useMemo, useState } from "react";

import { cn } from "@/lib/utils";
import { PokemonDetailFormOptionContent } from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-option";
import {
  getPokemonDetailFormImageAlt,
  getPokemonDetailFormImageUrl,
  getPokemonDetailFormTypeSlug,
  isPokemonDetailFormEqual,
} from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import { getPokemonDetailScopeHref } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-routes";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
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
import { Input } from "@/shared/components/ui/input";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PokemonDetailFormsSectionProps = {
  activeForm: PokemonGenerationFormSummary | null;
  activeGameSlug: string | null;
  activeGenerationSlug: string;
  forms: PokemonGenerationFormSummary[];
  onSelectForm: () => void;
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

const PokemonDetailSelectedFormTriggerContent = ({
  activeForm,
  forms,
}: Pick<PokemonDetailFormsSectionProps, "activeForm" | "forms">) => {
  const selectedForm = activeForm ?? forms[0] ?? null;

  if (!selectedForm) {
    return (
      <span className="text-muted-foreground min-w-0 truncate text-sm">
        Choose form
      </span>
    );
  }

  return (
    <span className="flex min-w-0 flex-1 items-center gap-2 overflow-hidden">
      <PokemonPortrait
        alt={getPokemonDetailFormImageAlt(selectedForm)}
        imageUrl={getPokemonDetailFormImageUrl(selectedForm)}
        type={getPokemonDetailFormTypeSlug(selectedForm)}
        fallbackOnError
        loading="eager"
        sizes="36px"
        className="border-app-surface-border/70 bg-background/30 size-9 shrink-0 rounded-full"
        glowClassName="opacity-20"
        imageClassName="p-1.5"
      />
      <span className="block min-w-0 flex-1 truncate font-medium">
        {selectedForm.form.name}
      </span>
    </span>
  );
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
  PokemonDetailFormsSectionProps,
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
            className="h-auto min-h-12 w-full min-w-0 justify-between gap-2 overflow-hidden px-2 py-1.5 text-left"
          />
        }
      >
        <span className="flex min-w-0 flex-1 overflow-hidden">
          <ComboboxValue>
            {(selectedForm: PokemonGenerationFormSummary | null) => (
              <PokemonDetailSelectedFormTriggerContent
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
  PokemonDetailFormsSectionProps,
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
            className="h-auto min-h-12 w-full min-w-0 justify-between gap-2 overflow-hidden px-2 py-1.5 text-left"
          />
        }
      >
        <PokemonDetailSelectedFormTriggerContent
          activeForm={activeForm}
          forms={forms}
        />
        <ChevronDownIcon
          data-icon="inline-end"
          className="text-muted-foreground"
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

const PokemonDetailFormsControl = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: Pick<
  PokemonDetailFormsSectionProps,
  | "activeForm"
  | "activeGameSlug"
  | "activeGenerationSlug"
  | "forms"
  | "onSelectForm"
  | "speciesNationalNumber"
  | "speciesSlug"
>) => {
  return (
    <>
      <div className="hidden md:block">
        <PokemonDetailFormCombobox
          activeGameSlug={activeGameSlug}
          activeGenerationSlug={activeGenerationSlug}
          activeForm={activeForm}
          forms={forms}
          onSelectForm={onSelectForm}
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
          onSelectForm={onSelectForm}
          speciesNationalNumber={speciesNationalNumber}
          speciesSlug={speciesSlug}
        />
      </div>
    </>
  );
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
    <section className="grid min-w-0 gap-2">
      <h2 className="text-muted-foreground text-sm font-light">Forms</h2>
      <PokemonDetailFormsControl
        activeForm={activeForm}
        activeGameSlug={activeGameSlug}
        activeGenerationSlug={activeGenerationSlug}
        forms={forms}
        onSelectForm={onSelectForm}
        speciesNationalNumber={speciesNationalNumber}
        speciesSlug={speciesSlug}
      />
    </section>
  );
};
