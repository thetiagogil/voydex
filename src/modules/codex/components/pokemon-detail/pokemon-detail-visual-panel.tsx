"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";

import { cn } from "@/lib/utils";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { SelectControl } from "@/shared/components/select-control";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import type { PokemonTypeSlug } from "@/shared/domain/pokemon/constants";

type PokemonDetailFormOption = {
  href: string;
  label: string;
  value: string;
};

type PokemonDetailVisualPanelProps = {
  activeFormSlug: string | null;
  formOptions: PokemonDetailFormOption[];
  imageAlt: string;
  normalImageUrl: string | null;
  portraitType: PokemonTypeSlug | null;
  shinyImageUrl: string | null;
};

const IMAGE_VARIANT_NORMAL = "normal";
const IMAGE_VARIANT_SHINY = "shiny";

export const PokemonDetailVisualPanel = ({
  activeFormSlug,
  formOptions,
  imageAlt,
  normalImageUrl,
  portraitType,
  shinyImageUrl,
}: PokemonDetailVisualPanelProps) => {
  const router = useRouter();
  const [, startTransition] = useTransition();
  const [imageVariant, setImageVariant] = useState(IMAGE_VARIANT_NORMAL);
  const canShowShiny = Boolean(shinyImageUrl);
  const selectedImageUrl =
    imageVariant === IMAGE_VARIANT_SHINY ? shinyImageUrl : normalImageUrl;
  const selectedImageAlt =
    imageVariant === IMAGE_VARIANT_SHINY ? `Shiny ${imageAlt}` : imageAlt;

  return (
    <div className="grid gap-3">
      <PokemonPortrait
        alt={selectedImageAlt}
        imageUrl={selectedImageUrl}
        type={portraitType}
        className="aspect-4/3 w-full rounded-xl"
        imageClassName="p-5"
        priority
      />

      <div className="grid gap-2">
        <div className="ring-app-surface-border grid grid-cols-2 gap-1 rounded-lg bg-background/30 p-1 ring-1">
          <Button
            type="button"
            variant={imageVariant === IMAGE_VARIANT_NORMAL ? "default" : "ghost"}
            size="sm"
            onClick={() => {
              setImageVariant(IMAGE_VARIANT_NORMAL);
            }}
          >
            Normal
          </Button>
          <Button
            type="button"
            variant={imageVariant === IMAGE_VARIANT_SHINY ? "default" : "ghost"}
            size="sm"
            disabled={!canShowShiny}
            onClick={() => {
              setImageVariant(IMAGE_VARIANT_SHINY);
            }}
          >
            Shiny
          </Button>
        </div>

        {formOptions.length > 1 ? (
          formOptions.length <= 2 ? (
            <div className="ring-app-surface-border grid grid-cols-2 gap-1 rounded-lg bg-background/30 p-1 ring-1">
              {formOptions.map((option) => (
                <Link
                  key={option.value}
                  href={option.href}
                  aria-current={
                    option.value === activeFormSlug ? "page" : undefined
                  }
                  className={cn(
                    buttonVariants({
                      size: "sm",
                      variant:
                        option.value === activeFormSlug ? "default" : "ghost",
                    }),
                    "min-w-0 px-2",
                  )}
                >
                  <span className="truncate">{option.label}</span>
                </Link>
              ))}
            </div>
          ) : (
            <SelectControl
              ariaLabel="Choose form"
              className="w-full"
              onValueChange={(nextValue) => {
                const selectedOption = formOptions.find((option) => {
                  return option.value === nextValue;
                });

                if (!selectedOption || selectedOption.value === activeFormSlug) {
                  return;
                }

                startTransition(() => {
                  router.push(selectedOption.href);
                });
              }}
              options={formOptions}
              placeholder="Choose form"
              value={activeFormSlug ?? ""}
            />
          )
        ) : null}
      </div>
    </div>
  );
};
