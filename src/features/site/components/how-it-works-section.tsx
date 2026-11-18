import type { ReactNode } from "react";

import type {
  PublicArt,
  PublicPlayArt,
  PublicPokemon,
} from "@/config/public-art";
import { frontPageSections } from "@/config/routes";
import {
  CodexStage,
  LookBackStage,
  PlanATeamStage,
  RecordAsYouGoStage,
  StartAPlayStage,
} from "@/features/site/components/intro/intro-stages";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import { SiteSectionHead } from "@/features/site/components/site-section-head";
import { StepNumber } from "@/features/site/components/step-number";
import { stepPartners } from "@/features/site/data/intro-showcase";
import { Card } from "@/shared/components/ui/card";

type HowItWorksSectionProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

type StepCardProps = {
  art: PublicArt;
  children: ReactNode;
  /* Which step it is: 1, 2 or 3. */
  number: number;
  /* The partner at this point of the Play, standing on the card. */
  partner: PublicPokemon;
  text: string;
  title: string;
  when: string;
};

/*
 * One step of How it works: its number and when it happens, the words, then a
 * small picture of the screen. The partner stands on the card's top edge,
 * growing from step to step.
 */
const StepCard = ({
  art,
  children,
  number,
  partner,
  text,
  title,
  when,
}: StepCardProps) => (
  <article className="relative flex">
    <PokemonRender
      art={art}
      pokemon={partner}
      className="absolute -top-13 right-3 z-1 size-26 object-contain sm:-top-15 sm:size-30"
    />
    <Card className="w-full gap-0 p-5 sm:p-6">
      <p className="text-13 text-ink-2 flex items-center gap-2.5 pr-28 font-extrabold tracking-wider uppercase">
        <StepNumber number={number} />
        {when}
      </p>
      <h3 className="title-card mt-4">{title}</h3>
      <p className="text-15 text-ink-2 mt-2 mb-4.5 leading-relaxed font-semibold">
        {text}
      </p>
      <div className="mt-auto">{children}</div>
    </Card>
  </article>
);

const AlsoCard = ({
  children,
  text,
  title,
}: {
  children: ReactNode;
  text: string;
  title: string;
}) => (
  <Card className="flex-row flex-wrap items-center justify-between gap-x-6 gap-y-4 p-5 sm:p-6">
    <div className="min-w-48 flex-1">
      <h3 className="title-card">{title}</h3>
      <p className="text-15 text-ink-2 mt-1.5 leading-relaxed font-semibold">
        {text}
      </p>
    </div>
    {children}
  </Card>
);

/*
 * How it works, on the front page: three numbered steps, with one Play
 * followed through them and its partner growing along the way. Then two
 * smaller things.
 */
export const HowItWorksSection = ({ art, playArt }: HowItWorksSectionProps) => (
  <section
    id={frontPageSections.howItWorks}
    aria-labelledby="how-it-works-title"
    tabIndex={-1}
    className="scroll-mt-6 outline-none"
  >
    <SiteSectionHead
      id="how-it-works-title"
      title="How it works"
      text="Every playthrough gets its own Play, so you can put the game down for months and still know exactly where you were."
    />
    <div className="grid gap-x-6 gap-y-18 pt-13 sm:pt-15 lg:grid-cols-3">
      <StepCard
        art={art}
        number={1}
        partner={stepPartners.dayOne}
        when="Day one"
        title="Start a Play"
        text="Pick the game, name the Play and choose what to track: story, Pokédex, collectibles, challenge rules."
      >
        <StartAPlayStage art={art} />
      </StepCard>
      <StepCard
        art={art}
        number={2}
        partner={stepPartners.alongTheWay}
        when="Along the way"
        title="Record as you go"
        text="Add Pokémon as they join the team, stamp each badge as you earn it, and mark the Pokédex while you play."
      >
        <RecordAsYouGoStage art={art} playArt={playArt} />
      </StepCard>
      <StepCard
        art={art}
        number={3}
        partner={stepPartners.monthsLater}
        when="Months later"
        title="Look back"
        text="Every change becomes part of the Play's history, next to your own notes: badges, evolutions, who joined and who retired."
      >
        <LookBackStage playArt={playArt} />
      </StepCard>
    </div>
    <div className="mt-6 grid gap-6 md:grid-cols-2">
      <AlsoCard
        title="Plan a team"
        text="Try teams out before you commit. Voydex points out what's hard to get in one save."
      >
        <PlanATeamStage art={art} />
      </AlsoCard>
      <AlsoCard
        title="Look it up in the Codex"
        text="Pokémon, games, moves and where to find them, one tap away while you play."
      >
        <CodexStage art={art} />
      </AlsoCard>
    </div>
  </section>
);
