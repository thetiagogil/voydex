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
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { PendingData } from "@/shared/components/pending-data";
import { Button } from "@/shared/components/ui/button";

/* One of the Pokémon's abilities in the generation, its effect on hover. */
export type PokemonDetailHeroAbility = {
  effect: string | null;
  isHidden: boolean;
  name: string;
};

type PokemonDetailHeroProps = {
  /* Empty before Generation III and in games without abilities. */
  abilities: PokemonDetailHeroAbility[];
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
 * switch, the types, the abilities it has as chips (each effect on hover or
 * tap; none before Generation III), the Pokédex's quote and the one sentence
 * the page reads for you, then the actions: the route's (Add to a Play),
 * Favourite and the shiny toggle. Each form is its own page, and the shell
 * remounts the hero for it, so the toggle starts off again. The art keeps
 * v3's 1 : 1.05 split and stops at the size v3's widest page gives it.
 */
export const PokemonDetailHero = ({
  abilities,
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
      className="mt-6 grid items-center gap-4.5 md:grid-cols-[min(525px,calc((100%_-_2.5rem)/2.05))_minmax(0,1fr)] md:gap-10"
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

        {abilities.length ? (
          <div className="mt-3.5 flex flex-wrap items-center gap-2">
            <span className="text-14 text-ink-3 mr-0.5 font-bold">
              Abilities
            </span>
            {abilities.map((ability) => (
              <ExplanatoryTip
                key={ability.name}
                side="bottom"
                contentClassName="w-64"
                content={
                  <p>
                    <b>{ability.name}.</b>{" "}
                    {ability.effect ?? "No effect summary recorded."}
                  </p>
                }
                trigger={
                  <button
                    type="button"
                    className="bg-surface text-14 hover:bg-hover focus-visible:outline-focus inline-flex h-8 items-center gap-1.5 rounded-full px-3 font-extrabold transition-colors focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
                  />
                }
              >
                {ability.name}
                {ability.isHidden ? (
                  <span className="text-12 text-ink-3 font-bold">Hidden</span>
                ) : null}
              </ExplanatoryTip>
            ))}
          </div>
        ) : null}

        {/* TODO(v3-data): Pokédex flavour text per game, with the game it's from. */}
        <PendingData
          className="mt-5.5 max-w-[46ch] items-start px-5 py-4 text-left"
          label="Pokédex entry"
          note="What the Pokédex says about it, quoted from a game."
        />

        <p className="text-16 text-ink-2 mt-4.5 max-w-[44ch] leading-relaxed">
          {/* TODO(v3-data): heights and weights (unseeded on pokemon_forms). */}
          <HeroParts parts={sentence} />
        </p>

        <div className="mt-7 flex flex-wrap gap-3">
          {actions}
          {/* TODO(v3-data): favourites (no table for a user's favourite Pokémon). */}
          <CodexPendingValue
            label="Favourite"
            className="text-15 h-13 rounded-lg px-5"
          />
          {shinyImageUrl ? (
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
          ) : null}
        </div>
      </div>
    </section>
  );
};
