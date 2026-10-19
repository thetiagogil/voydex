"use client";

import { useState, type ReactNode } from "react";

import type { PokemonDetailHeroSentencePart } from "@/modules/codex/features/pokemon/detail/sections/hero/pokemon-detail-hero-model";
import { CodexPendingValue } from "@/modules/codex/shared/components/codex-pending-value";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonTypePair } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import { PendingData } from "@/shared/components/pending-data";
import {
  SegmentedControl,
  type SegmentedControlOption,
} from "@/shared/components/segmented-control";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailHeroProps = {
  /*
   * The route's actions, before Favourite: the Your Plays icon when signed
   * in.
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
 * type's shade (v3 `.cx-art`), beside the eyebrow, the name, its types
 * named under it, one line of the form switch and the actions as icons (the route's
 * Your Plays, Favourite, the shiny toggle), the description, and the one
 * sentence the page reads for you (the Pokédex's words are per game in
 * Pokédex numbers). Each form is its own page, and the shell remounts the
 * hero for it, so the toggle starts off again. The art and the text sit as
 * one pair centred in the band.
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
      className="mt-6 grid items-center gap-4.5 md:grid-cols-[min(460px,calc((100%-2.5rem)/2))_minmax(0,40rem)] md:justify-center md:gap-10"
    >
      <PokemonPortrait
        alt={isShowingShiny ? `Shiny ${imageAlt}` : imageAlt}
        imageUrl={isShowingShiny ? shinyImageUrl : imageUrl}
        name={name}
        type={typeSlug}
        preload
        className="shadow-soft aspect-[1.08] w-full rounded-[44%_56%_52%_48%/50%_44%_56%_50%] border-6 border-white"
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
        <h1 className="title-hero mt-1.5 wrap-break-word">{name}</h1>
        {/* Its types, named, on their own line under the name. */}
        <PokemonTypeList
          primaryType={typePair?.primaryType ?? null}
          secondaryType={typePair?.secondaryType ?? null}
          badgeSize="xl"
          className="mt-3.5 mb-5 flex-wrap gap-2"
        />

        {/*
         * One line: the form switch, then the actions as icons naming
         * themselves on hover: the route's (Your Plays), Favourite and the
         * shiny toggle.
         */}
        <div className="flex flex-wrap items-center gap-2.5">
          {formSwitchOptions.length > 1 ? (
            <SegmentedControl
              ariaLabel="Form"
              variant="segment"
              className="flex-wrap"
              options={formSwitchOptions}
              value={activeFormSlug}
            />
          ) : null}
          {/* The icons wrap as one group, never one by one. */}
          <div className="flex items-center gap-2.5">
            {actions}
            {/* TODO(v3-data): favourites (no table for a user's favourite Pokémon). */}
            <IconTip
              label="Favourite: not in Voydex yet"
              trigger={
                <span
                  role="img"
                  aria-label="Favourite, not in Voydex yet"
                  className="empty-slot text-ink-3 grid size-12 place-items-center rounded-full"
                >
                  <AppIcon icon={appIcons.product.favourite} />
                </span>
              }
            />
            {shinyImageUrl ? (
              <IconTip
                label={isShowingShiny ? "Show regular colours" : "Show shiny"}
                trigger={
                  <Button
                    variant="secondary"
                    size="icon"
                    aria-label="Shiny"
                    aria-pressed={isShowingShiny}
                    onClick={() => {
                      setShowShiny((current) => !current);
                    }}
                  >
                    <AppIcon icon={appIcons.product.shiny} />
                  </Button>
                }
              />
            ) : null}
          </div>
        </div>

        {/* TODO(v3-data): a general description of each species. */}
        <PendingData
          className="mt-5 items-start px-4.5 py-3.5 text-left"
          label="About this Pokémon"
          note="A few lines on what it is; its Pokédex entries are per game below."
        />

        <p className="text-16 text-ink-2 mt-4 leading-relaxed">
          {/* TODO(v3-data): heights and weights (unseeded on pokemon_forms). */}
          <HeroParts parts={sentence} />
        </p>
      </div>
    </section>
  );
};
