import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import type { GameStarter } from "@/modules/reference/features/games/types";

/* A brand-new Play's partner milestone, waiting for you to tap your partner. */
export type HomePartnerChoice = {
  options: { decisionOptionId: number; starter: GameStarter }[];
  playId: string;
};

/* A Play on Home's shelf, with what its band shows. */
export type HomeBand = {
  /* Its partner milestone, while a brand-new Play waits for the tap. */
  partnerChoice: HomePartnerChoice | null;
  play: HomePlay;
};

export type HomePageData =
  | {
      displayName: string | null;
      kind: "empty";
      picker: NewPlayPickerData;
    }
  | {
      /* The shelf's Plays, latest first, at most `HOME_SHELF_PLAY_COUNT`. */
      bands: HomeBand[];
      currentPlayId: string;
      displayName: string | null;
      /* The trainer's only Play has only just started (v3 `homefirst`). */
      isFirstPlay: boolean;
      kind: "plays";
    };
