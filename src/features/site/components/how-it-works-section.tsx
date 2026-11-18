import type { ReactNode } from "react";

import type { PublicArt, PublicPlayArt } from "@/config/public-art";
import { frontPageSections } from "@/config/routes";
import { IntroChapter } from "@/features/site/components/intro/intro-chapter";
import {
  CodexStage,
  LookBackStage,
  PlanATeamStage,
  RecordAsYouGoStage,
  StartAPlayStage,
} from "@/features/site/components/intro/intro-stages";
import { SiteSectionHead } from "@/features/site/components/site-section-head";
import { introChapterPartners } from "@/features/site/data/intro-showcase";
import { Card } from "@/shared/components/ui/card";

type HowItWorksSectionProps = {
  art: PublicArt;
  playArt: PublicPlayArt;
};

const SideCard = ({
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
      <h3 className="title-card">{title}</h3>
      <p className="text-15 text-ink-2 mt-2 leading-relaxed font-semibold">
        {text}
      </p>
    </div>
    {children}
  </Card>
);

/*
 * How it works, on the front page: one Play followed over time (day one,
 * along the way, months later), then two smaller things.
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
      text="Every playthrough gets its own Play: one run of one game, with its team, its story and its Pokédex. Put the game down for months and you'll still know exactly where you were."
    />
    <div className="flex flex-col gap-4.5 sm:gap-6">
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
        <SideCard
          title="Plan a team"
          text="Try teams out before you commit. Voydex points out what's hard to get in one save, and you decide."
        >
          <PlanATeamStage art={art} />
        </SideCard>
        <SideCard
          title="Look it up in the Codex"
          text="Pokémon, games, moves and where to find them, one tap away while you play."
        >
          <CodexStage art={art} />
        </SideCard>
      </div>
    </div>
  </section>
);
