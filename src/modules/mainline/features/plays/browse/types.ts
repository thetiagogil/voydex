import type {
  MainlinePlaySummary,
  MainlinePlayTeamMember,
} from "@/modules/mainline/features/plays/shared/types";

export type PlayBrowseProgressItem = {
  label: "Collectibles" | "Pokédex" | "Story";
  percent: number;
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

export type PlayBrowseItem = MainlinePlaySummary & {
  activeTeam: PlayBrowseTeam;
  coverImageUrl: string | null;
  progress: PlayBrowseProgress;
  regionName: string | null;
};

export type PlaysPageData = {
  plays: PlayBrowseItem[];
};
