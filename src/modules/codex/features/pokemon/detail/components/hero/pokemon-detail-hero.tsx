"use client";

import { useState } from "react";

import type { PokemonDetailHeroSentencePart } from "@/modules/codex/features/pokemon/detail/components/hero/pokemon-detail-hero-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonTypePair } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  SegmentedControl,
  type SegmentedControlOption,
} from "@/shared/components/segmented-control";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailHeroProps = {
  activeFormSlug: string | null;
  eyebrow: string;
  formSwitchOptions: SegmentedControlOption<string>[];
  imageAlt: string;
  imageUrl: string | null;
  name: string;
  sentence: PokemonDetailHeroSentencePart[] | null;
  shinyImageUrl: string | null;
  typePair: PokemonTypePair | null;
  typeSlug: PokemonTypeSlug | null;
};

/*
 * v3's entry hero: the art, flat on its type tint, beside the number, the
 * name, the form switch, the types and the one sentence the page reads for
 * you. The shiny toggle sits where v3 keeps the entry's actions; each form
 * is its own page, and the shell remounts the hero for it, so the toggle
 * starts off again. The art
 * keeps v3's 1 : 1.05 split and stops at the size v3's widest page gives it.
 */
export const PokemonDetailHero = ({
  activeFormSlug,
  eyebrow,
  formSwitchOptions,
  imageAlt,
  imageUrl,
  name,
  sentence,
  shinyImageUrl,
  typePair,
  typeSlug,
}: PokemonDetailHeroProps) => {
  const [showShiny, setShowShiny] = useState(false);
  const isShowingShiny = showShiny && Boolean(shinyImageUrl);

  return (
    <section
      aria-label={name}
      className="mt-6 grid items-center gap-4.5 md:grid-cols-[min(525px,calc((100%_-_2.5rem)/2.05))_minmax(0,1fr)] md:gap-10"
    >
      <PokemonPortrait
        alt={isShowingShiny ? `Shiny ${imageAlt}` : imageAlt}
        imageUrl={isShowingShiny ? shinyImageUrl : imageUrl}
        type={typeSlug}
        fallbackOnError
        preload
        sizes="(min-width: 768px) 46vw, calc(100vw - 2rem)"
        className="aspect-[1.08] w-full rounded-[44%_56%_52%_48%/50%_44%_56%_50%] border-0"
        imageClassName="p-[9%]"
      />

      <div className="min-w-0">
        <p className="text-16 text-ink-3 font-extrabold tabular-nums">
          {eyebrow}
        </p>
        <h1 className="text-44 sm:text-60 mt-1.5 mb-4 leading-none tracking-[-0.015em] break-words">
          {name}
        </h1>

        {formSwitchOptions.length > 1 ? (
          <div className="mb-3.5">
            <SegmentedControl
              ariaLabel="Form"
              variant="segment"
              className="flex-wrap"
              options={formSwitchOptions}
              value={activeFormSlug}
            />
          </div>
        ) : null}

        <PokemonTypeList
          primaryType={typePair?.primaryType ?? null}
          secondaryType={typePair?.secondaryType ?? null}
          badgeSize="lg"
          className="flex-wrap gap-2"
        />

        {sentence ? (
          <p className="text-16 text-ink-2 mt-4.5 max-w-[44ch] leading-relaxed">
            {sentence.map((part, index) =>
              part.emphasis ? (
                <b key={index} className="text-ink font-extrabold">
                  {part.text}
                </b>
              ) : (
                <span key={index}>{part.text}</span>
              ),
            )}
          </p>
        ) : null}

        {shinyImageUrl ? (
          <div className="mt-7 flex flex-wrap gap-3">
            <Button
              variant="outline"
              size="lg"
              aria-pressed={isShowingShiny}
              onClick={() => {
                setShowShiny((current) => !current);
              }}
            >
              <AppIcon icon={appIcons.product.shiny} inline="start" />
              Shiny
            </Button>
          </div>
        ) : null}
      </div>
    </section>
  );
};
