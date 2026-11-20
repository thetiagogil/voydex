import type { HomeNextUp } from "@/modules/mainline/features/home/data/home-next-up";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import type { GameStarter } from "@/modules/reference/features/games/types";

/* A brand-new Play's partner milestone, waiting for you to tap your partner. */
export type HomePartnerChoice = {
  options: { decisionOptionId: number; starter: GameStarter }[];
  playId: string;
};

/* A brand-new first Play on Home's band. */
export type HomeBand = {
  /* Its partner milestone, while it waits for the tap. */
  partnerChoice: HomePartnerChoice | null;
  play: HomePlay;
};

/* The Play Home's journey card shows, with what comes next in it. */
export type HomeJourney = {
  nextUp: HomeNextUp | null;
  play: HomePlay;
};

export type HomePageData =
  | {
      displayName: string | null;
      kind: "empty";
      picker: NewPlayPickerData;
    }
  | {
      /* The trainer's only Play, which has only just started (v3 `homefirst`). */
      band: HomeBand;
      displayName: string | null;
      kind: "first";
    }
  | {
      displayName: string | null;
      journey: HomeJourney;
      kind: "plays";
      /* The other Plays still underway, opened (or changed) last first. */
      others: HomePlay[];
      /* How many Plays are underway, the journey's included. */
      underwayCount: number;
    };
