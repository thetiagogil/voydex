import type {
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";

/* `percent` is null when the Play doesn't track that part: the bar reads "Off". */
export type PlayBrowseProgressItem = {
  label: "Collectibles" | "Pokédex" | "Story";
  percent: number | null;
};

/* `available` with no items means the Play has nothing to count yet. */
export type PlayBrowseProgress =
  | {
      items: PlayBrowseProgressItem[];
      state: "available";
    }
  | {
      state: "unavailable";
    };

export type PlayBrowseTeam = {
  members: MainlinePlayTeamMember[];
  state: "available" | "unavailable";
};

/*
 * Where the Play is in its story: the next objective, or done. Null when the
 * game records no story or it couldn't be read.
 */
export type PlayBrowseStoryPosition =
  | { kind: "complete" }
  | { kind: "next"; name: string };

export type PlayBrowseItem = MainlinePlaySummary & {
  activeTeam: PlayBrowseTeam;
  coverImageUrl: string | null;
  progress: PlayBrowseProgress;
  regionName: string | null;
  storyPosition: PlayBrowseStoryPosition | null;
};

export type PlaysPageData = {
  plays: PlayBrowseItem[];
};
