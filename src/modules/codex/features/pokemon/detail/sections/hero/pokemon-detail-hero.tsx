"use client";

import { useRouter } from "next/navigation";
import { useState, type ReactNode } from "react";

import type { PokemonDetailFormOption } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-form-display";
import type { PokemonDetailPokedexEntryText } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-pokedex-text";
import {
  PokemonFormMenu,
  toPokemonFormOption,
} from "@/modules/reference/features/pokemon/components/pokemon-form-menu";

import type { PokemonDetailHeroSentencePart } from "@/modules/codex/features/pokemon/detail/sections/hero/pokemon-detail-hero-model";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { PokemonTypePair } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconTip } from "@/shared/components/icon-tip";
import { Button } from "@/shared/components/ui/button";

type PokemonDetailHeroProps = {
  /*
   * The route's actions, before Favourite: the Your Plays icon when signed
   * in.
   */
  actions?: ReactNode;
  activeFormSlug: string | null;
  /* What the open game's Pokédex says, one entry per version that has its own words. */
  entries: PokemonDetailPokedexEntryText[];
  eyebrow: PokemonDetailHeroSentencePart[];
  /* The route's heart: a favourite toggle signed in, sign in for a visitor. */
  favourite?: ReactNode;
  formOptions: PokemonDetailFormOption[];
  imageAlt: string;
  imageUrl: string | null;
  name: string;
  sentence: PokemonDetailHeroSentencePart[];
  shinyImageUrl: string | null;
  typePair: PokemonTypePair | null;
  typeSlug: PokemonTypeSlug | null;
};

/* A sentence's pieces, the figures in bold. */
const HeroParts = ({ parts }: { parts: PokemonDetailHeroSentencePart[] }) => {
  return parts.map((part, index) =>
    part.emphasis ? (
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
 * Your Plays, Favourite, the shiny toggle), what the open game's Pokédex
 * says (each version's words when they differ), and the one sentence the
 * page reads for you. Each form is its own page, and the shell remounts the
 * hero for it, so the toggle starts off again. The art and the text sit as
 * one pair centred in the band.
 */
export const PokemonDetailHero = ({
  actions,
  activeFormSlug,
  entries,
  eyebrow,
  favourite,
  formOptions,
  imageAlt,
  imageUrl,
  name,
  sentence,
  shinyImageUrl,
  typePair,
  typeSlug,
}: PokemonDetailHeroProps) => {
  const router = useRouter();
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
              {part.text}
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
         * One line: the form menu, then the actions as icons naming
         * themselves on hover: the route's (Your Plays), Favourite and the
         * shiny toggle.
         */}
        <div className="flex flex-wrap items-center gap-2.5">
          {formOptions.length > 1 ? (
            <PokemonFormMenu
              value={activeFormSlug}
              onValueChange={(formSlug) => {
                const picked = formOptions.find(
                  (option) => option.value === formSlug,
                );

                if (picked) {
                  router.push(picked.href, { scroll: false });
                }
              }}
              options={formOptions.map(toPokemonFormOption)}
            />
          ) : null}
          {/* The icons wrap as one group, never one by one. */}
          <div className="flex items-center gap-2.5">
            {actions}
            {favourite}
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

        {/* The Pokédex's own words, in this game: one paragraph per text, named by version when two differ. */}
        {entries.length ? (
          <div className="mt-5 flex flex-col gap-2.5">
            {entries.map((entry) => (
              <p
                key={entry.text}
                className="text-16 text-ink-2 leading-relaxed"
              >
                {entries.length > 1 ? (
                  <>
                    <b className="text-ink font-extrabold">
                      {entry.gameNames.join(" and ")}
                    </b>{" "}
                  </>
                ) : null}
                {entry.text}
              </p>
            ))}
          </div>
        ) : null}

        {sentence.length ? (
          <p className="text-16 text-ink-2 mt-4 leading-relaxed">
            <HeroParts parts={sentence} />
          </p>
        ) : null}
      </div>
    </section>
  );
};
