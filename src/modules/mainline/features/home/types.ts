import type { StartIntent } from "@/config/start-intent";
import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { PlayMomentContextEntries } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import type { NewPlayPickerData } from "@/modules/mainline/features/plays/shared/types";
import type { GameStarter } from "@/modules/reference/features/games/types";

/* A brand-new Play's partner milestone, waiting for you to tap your partner. */
export type HomePartnerChoice = {
  options: { decisionOptionId: number; starter: GameStarter }[];
  playId: string;
};

/* The game (and partner) picked on Start a Play before signing up. */
export type HomeIntentOffer = {
  gameName: string;
  gameShortName: string;
  gameSlug: string;
  partner: GameStarter | null;
};

export type HomeMomentsData = {
  context: PlayMomentContextEntries;
  /* Oldest first, at most five. */
  events: MainlinePlayTimelineEvent[];
  /* Something was recorded before the first of them. */
  hasEarlier: boolean;
};

/* A Play on Home's shelf, with what its band and moments show. */
export type HomeBand = {
  moments: HomeMomentsData;
  /* Its partner milestone, while a brand-new Play waits for the tap. */
  partnerChoice: HomePartnerChoice | null;
  play: HomePlay;
};

export type HomePageData =
  | {
      displayName: string | null;
      intent: StartIntent | null;
      kind: "empty";
      picker: NewPlayPickerData;
    }
  | {
      /* The shelf's Plays, latest first, at most `HOME_SHELF_PLAY_COUNT`. */
      bands: HomeBand[];
      currentPlayId: string;
      displayName: string | null;
      intentOffer: HomeIntentOffer | null;
      /* The trainer's only Play has only just started (v3 `homefirst`). */
      isFirstPlay: boolean;
      kind: "plays";
      /* What a Play started from the offer is named for: your default trainer name, else your display name. */
      trainerName: string | null;
    };
