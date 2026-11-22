import type {
  MainlinePlayTimelineEvent,
  PlayBrowseItem,
} from "@/modules/mainline/features/plays/shared/types";
import type { FavouritePokemon } from "@/modules/mainline/shared/data/favourite-pokemon-model";
import type { StatsCover } from "@/modules/mainline/shared/data/stats-model";

/* One of the latest moments, with the Play it was recorded in. */
export type HomeMoment = {
  coverImageUrl: string | null;
  event: MainlinePlayTimelineEvent;
  gameName: string;
  gameSlug: string | null;
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
  /* When every moment happened, for the activity history. */
  momentInstants: string[];
  /* The latest moments across every Play, newest first. */
  moments: HomeMoment[];
  /* Your trainer title, such as "Region Hopper". */
  title: string;
};

/* Home: your trainer profile, and the Play you're on. */
export type HomePageData = {
  displayName: string | null;
  /*
   * The Play you're on: the one `?play=` names, else the latest underway.
   * Null with no Play yet: the same Home, empty, with the way to start one.
   */
  journey: PlayBrowseItem | null;
  profile: HomeProfile;
};
