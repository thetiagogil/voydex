"use client";

import { useState, type ReactNode } from "react";

import type { PokemonDetailHeroSentencePart } from "@/modules/codex/features/pokemon/detail/components/hero/pokemon-detail-hero-model";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
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
  /*
   * The route's leading actions, before Favourite: "Add to a Play" when
   * signed in.
   */
  actions?: ReactNode;
  activeFormSlug: string | null;
  eyebrow: PokemonDetailHeroSentencePart[];
  formSwitchOptions: SegmentedControlOption<string>[];
  imageAlt: string;
  imageUrl: string | null;
  name: string;
  sentence: PokemonDetailHeroSentencePart[];
  shinyImageUrl: string | null;
  typePair: PokemonTypePair | null;
  typeSlug: PokemonTypeSlug | null;
};

/* A sentence's pieces: figures in bold, missing values as pending markers. */
const HeroParts = ({ parts }: { parts: PokemonDetailHeroSentencePart[] }) => {
  return parts.map((part, index) =>
    part.pending ? (
      <CodexPendingValue key={index} label={part.text} />
    ) : part.emphasis ? (
      <b key={index} className="text-ink font-extrabold">
        {part.text}
      </b>
    ) : (
      <span key={index}>{part.text}</span>
    ),
  );
};

/*
 * v3's entry hero: the art on its type tint in a white rim, on a lip of its
 * type's shade (v3 `.cx-art`), beside the eyebrow, the name, the form
 * switch, the types, the one sentence the page reads for you (the Pokédex's
 * words are per game in Pokédex numbers), then the actions: the route's (Add
 * to a Play), Favourite and the shiny toggle. Each form is its own page, and the shell
 * remounts the hero for it, so the toggle starts off again. The art and the
 * text sit as one pair centred in the band, the text capped at a readable
 * width.
 */
export const PokemonDetailHero = ({
  actions,
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
      className="mt-6 grid items-center gap-4.5 md:grid-cols-[min(460px,calc((100%_-_2.5rem)/2))_minmax(0,32rem)] md:justify-center md:gap-10"
    >
      <PokemonPortrait
        alt={isShowingShiny ? `Shiny ${imageAlt}` : imageAlt}
        imageUrl={isShowingShiny ? shinyImageUrl : imageUrl}
        type={typeSlug}
        fallbackOnError
        preload
        sizes="(min-width: 768px) 46vw, calc(100vw - 2rem)"
        className="aspect-[1.08] w-full rounded-[44%_56%_52%_48%/50%_44%_56%_50%] border-6 border-white shadow-[0_6px_0_color-mix(in_oklab,var(--t)_36%,var(--lip))]"
        imageClassName="p-[9%]"
      />

      <div className="min-w-0">
        <p className="text-16 text-ink-3 font-extrabold tabular-nums">
          {eyebrow.map((part, index) => (
            <span key={index}>
              {index ? " · " : null}
              {part.pending ? (
                // TODO(v3-data): the species' Pokédex category (genus).
                <CodexPendingValue label={part.text} />
              ) : (
                part.text
              )}
            </span>
          ))}
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

        {/* The Pokédex's words live per game in Pokédex numbers below. */}
        <p className="text-16 text-ink-2 mt-5 leading-relaxed">
          {/* TODO(v3-data): heights and weights (unseeded on pokemon_forms). */}
          <HeroParts parts={sentence} />
        </p>

        {/*
         * On phones the main button takes the full width and Favourite and
         * Shiny share the line under it.
         */}
        <div className="mt-7 flex flex-wrap gap-2.5 *:flex-1 sm:*:flex-none [&>*:first-child]:basis-full sm:[&>*:first-child]:basis-auto">
          {actions}
          {/* TODO(v3-data): favourites (no table for a user's favourite Pokémon). */}
          <CodexPendingValue
            label="Favourite"
            className="h-11 w-full justify-center rounded-lg px-4 text-[14.5px] sm:w-auto"
          />
          {shinyImageUrl ? (
            <Button
              variant="outline"
              aria-pressed={isShowingShiny}
              onClick={() => {
                setShowShiny((current) => !current);
              }}
            >
              <AppIcon icon={appIcons.product.shiny} inline="start" />
              Shiny
            </Button>
          ) : null}
        </div>
      </div>
    </section>
  );
};
