import type { ReactNode } from "react";

import type { PublicArt } from "@/config/public-art";
import { MeadowPartners } from "@/features/site/components/meadow-partners";
import {
  StartMeadow,
  type StartPick,
} from "@/features/site/components/start-meadow";

type StartPageProps = {
  art: PublicArt;
  isAuthenticated: boolean;
  /* Every game's first partner choice, by game slug. */
  picks: Readonly<Record<string, StartPick>>;
  /* The game shelf, injected by the route (the reference module's picker). */
  shelf: ReactNode;
};

/*
 * Start a Play (v3 `start`): "What are you playing?" over the meadow. With no
 * game yet, one first partner per generation stands on the hill; pick a game
 * and the sky takes its colour, its first partners come forward to choose,
 * and Start goes to Sign up carrying the pick. The picks are the meadow's
 * client state, kept in the address (`?game=`, `?partner=`, `?gen=`).
 */
export const StartPage = ({
  art,
  isAuthenticated,
  picks,
  shelf,
}: StartPageProps) => {
  return (
    <StartMeadow
      isAuthenticated={isAuthenticated}
      partners={<MeadowPartners art={art} loading="eager" openStart />}
      picks={picks}
    >
      <h1
        id="start-title"
        className="sm:text-60 pt-5.5 text-[38px] leading-[1.02] tracking-tight sm:pt-8.5"
      >
        What are you playing?
      </h1>
      <p className="text-16 text-ink-2 mx-auto mt-3.5 max-w-[34em] leading-[1.6] font-semibold sm:text-[18px]">
        Pick your game and meet your first partner.
      </p>
      <div className="-mx-4 w-[calc(100%+2rem)] sm:-mx-6 sm:w-[calc(100%+3rem)] lg:-mx-8 lg:w-[calc(100%+4rem)]">
        {shelf}
      </div>
    </StartMeadow>
  );
};
