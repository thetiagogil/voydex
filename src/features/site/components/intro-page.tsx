import type { ReactNode } from "react";

import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { IntroChapter } from "@/features/site/components/intro/intro-chapter";
import {
  CodexStage,
  LookBackStage,
  PlanATeamStage,
  RecordAsYouGoStage,
  StartAPlayStage,
} from "@/features/site/components/intro/intro-stages";
import { MeadowCard } from "@/features/site/components/meadow-card";
import { SiteActions } from "@/features/site/components/site-actions";
import { introChapterPartners } from "@/features/site/data/intro-showcase";
import { getSiteVisitor } from "@/features/site/server/site-visitor-query";
import { Card } from "@/shared/components/ui/card";

type IntroPageProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

const IntroSideCard = ({
  children,
  text,
  title,
}: {
  children: ReactNode;
  text: string;
  title: string;
}) => (
  <Card className="gap-4.5 p-5 sm:p-6">
    <div>
      <h2 className="text-[22px] leading-tight tracking-[-0.01em]">{title}</h2>
      <p className="text-15 text-ink-2 mt-2 leading-[1.65] font-semibold">
        {text}
      </p>
    </div>
    {children}
  </Card>
);

/*
 * How it works: one Play followed over time (day one, along the way, months
 * later), then two smaller things, and the meadow to finish.
 */
export const IntroPage = async ({ art, playArt }: IntroPageProps) => {
  const { isAuthenticated } = await getSiteVisitor();

  return (
    <div className="flex min-w-0 flex-col">
      <header className="max-w-[780px] pt-7.5 pb-1.5 sm:pt-14">
        <h1 className="text-[38px] leading-[1.02] tracking-[-0.025em] sm:text-[56px]">
          How Voydex works
        </h1>
        <p className="text-16 text-ink-2 mt-4.5 max-w-[36em] leading-[1.6] font-semibold sm:text-[18px]">
          Every playthrough gets its own Play: one run of one game, with its
          team, its story and its Pokédex. Put the game down for months and
          you&apos;ll still know exactly where you were.
        </p>
      </header>
      <div className="mt-6.5 mb-4.5 flex flex-col gap-4.5 sm:mt-9 sm:mb-6 sm:gap-6">
        <Card className="gap-0 px-4.5 pt-5.5 pb-0.5 sm:px-9 sm:pt-8.5 sm:pb-2">
          <IntroChapter
            playArt={playArt}
            partner={introChapterPartners.dayOne}
            when="Day one"
            title="Start a Play"
            text="Pick the game, name the Play and choose what to track: story, Pokédex, collectibles, challenge rules. The Play takes its game's colour, so you always know which journey you're in."
          >
            <StartAPlayStage art={art} playArt={playArt} />
          </IntroChapter>
          <IntroChapter
            playArt={playArt}
            partner={introChapterPartners.alongTheWay}
            when="Along the way"
            title="Record as you go"
            text="Add Pokémon as they join the team, stamp each badge as you earn it, and mark the Pokédex while you play. Caught or seen, one tap each."
          >
            <RecordAsYouGoStage art={art} playArt={playArt} />
          </IntroChapter>
          <IntroChapter
            playArt={playArt}
            partner={introChapterPartners.monthsLater}
            when="Months later"
            title="Look back"
            text="Every change becomes part of the Play's history, next to your own notes. Badges, evolutions, who joined the team and who retired, all in order."
          >
            <LookBackStage playArt={playArt} />
          </IntroChapter>
        </Card>
        <div className="grid gap-4.5 sm:gap-6 md:grid-cols-2">
          <IntroSideCard
            title="Plan a team"
            text="Try teams out before you commit. Voydex points out what's hard to get in one save, and you decide."
          >
            <PlanATeamStage art={art} />
          </IntroSideCard>
          <IntroSideCard
            title="Look it up in the Codex"
            text="Pokémon, games, moves and where to find them. Open to everyone, no account needed."
          >
            <CodexStage art={art} />
          </IntroSideCard>
        </div>
      </div>
      <MeadowCard art={art} titleId="intro-next-title">
        <h2
          id="intro-next-title"
          className="pt-7 text-[28px] tracking-[-0.02em] sm:pt-10.5 sm:text-[38px]"
        >
          Ready for your next Play?
        </h2>
        <p className="text-17 text-ink-2 mt-2.5 mb-6 font-semibold">
          Keep every playthrough in one place.
        </p>
        <SiteActions isAuthenticated={isAuthenticated} />
      </MeadowCard>
    </div>
  );
};
