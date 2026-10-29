import type { GameCatalogue } from "@/modules/reference/features/games/types";
import type { ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;
export type MainlinePlayTimelineEvent =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMember = ViewRow<"mainline_play_team_detail">;

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
  /* Each member's primary type slug by form id, for its portrait's tint. */
  typeSlugByFormId: Record<number, string>;
};

/*
 * Where the Play is in its story: the next objective, or done. Null when the
 * game records no story or it couldn't be read.
 */
export type PlayBrowseStoryPosition =
  | { kind: "complete" }
  | { kind: "next"; name: string };

/* One Play in the trainer's library, as Plays and Home list it. */
export type PlayBrowseItem = MainlinePlaySummary & {
  activeTeam: PlayBrowseTeam;
  coverImageUrl: string | null;
  progress: PlayBrowseProgress;
  regionName: string | null;
  /* Null with Story turned off, or when it couldn't be read. */
  storyPosition: PlayBrowseStoryPosition | null;
  /* Whether the Play tracks Story; on when its settings can't be read. */
  storyTracked: boolean;
};

/* What starting a Play offers, on New Play and Home's first-Play picker. */
export type NewPlayPickerData = GameCatalogue & {
  /* The trainer name a new Play starts with: your default trainer name, else your display name. */
  trainerName: string | null;
};
