import type { HomePlay } from "@/modules/mainline/features/home/data/home-play-model";
import type { PlayMomentContextEntries } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import type {
  MainlinePlayTimelineEvent,
  NewPlayPickerData,
} from "@/modules/mainline/features/plays/shared/types";
import type { FavouritePokemon } from "@/modules/mainline/shared/data/favourite-pokemon-model";
import type {
  StatsCover,
  StatsTypeTally,
} from "@/modules/mainline/shared/data/stats-model";
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

/* One of the latest moments, with the name of the Play it was recorded in. */
export type HomeMoment = {
  event: MainlinePlayTimelineEvent;
  playName: string;
};

/* Who you are as a trainer, as Home's profile shows it. */
export type HomeProfile = {
  /* One cover per game you've played, the latest first. */
  covers: StatsCover[];
  /* Newest heart first. */
  favourites: FavouritePokemon[];
  figures: {
    minutes: number;
    /* Species that have joined your teams, as the Collection counts them. */
    ownedCount: number;
    playCount: number;
    regionCount: number;
    visitedRegionCount: number;
  };
  /* What the moments' medallions need: badges, trophies, Pokémon types. */
  momentContext: PlayMomentContextEntries;
  /* When every moment happened, for the activity history. */
  momentInstants: string[];
  /* The latest moments across every Play, newest first. */
  moments: HomeMoment[];
  /* Your trainer title, such as "Region Hopper". */
  title: string;
  /* The types on your teams, most used first. */
  types: StatsTypeTally[];
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
      /* The Play you're on: the one `?play=` names, else the latest underway. */
      journey: HomePlay;
      kind: "plays";
      profile: HomeProfile;
    };
