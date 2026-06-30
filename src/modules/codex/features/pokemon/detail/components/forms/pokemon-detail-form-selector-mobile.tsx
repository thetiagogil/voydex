"use client";

import { ChevronDownIcon } from "lucide-react";
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
  type PokemonDetailFormSelectorScope,
} from "@/modules/codex/features/pokemon/detail/components/forms/pokemon-detail-form-selector-utils";
import { isPokemonDetailFormEqual } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonGenerationFormSummary } from "@/modules/codex/shared/types";
import { Button } from "@/shared/components/ui/button";
import { Input } from "@/shared/components/ui/input";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/shared/components/ui/sheet";

type PokemonDetailFormSelectorMobileProps = PokemonDetailFormSelectorScope & {
  activeForm: PokemonGenerationFormSummary | null;
  forms: PokemonGenerationFormSummary[];
  onSelectForm: () => void;
  speciesNationalNumber: number;
};

export const PokemonDetailFormSelectorMobile = ({
  activeForm,
  activeGameSlug,
  activeGenerationSlug,
  forms,
  onSelectForm,
  speciesNationalNumber,
  speciesSlug,
}: PokemonDetailFormSelectorMobileProps) => {
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
    <div className="md:hidden">
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
              className={pokemonDetailFormSelectorTriggerClassName}
            />
          }
        >
          <PokemonDetailFormSelectorTrigger
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
                      <PokemonDetailFormSelectorOptionContent
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
    </div>
  );
};
