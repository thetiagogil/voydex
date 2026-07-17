import type { ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMember = ViewRow<"mainline_play_team_detail">;

export type MainlinePlayBrowseProgress =
  | {
      percent: number;
      state: "known";
    }
  | {
      state: "not_recorded" | "unavailable";
    };

export type MainlinePlayBrowseTeam = {
  members: MainlinePlayTeamMember[];
  state: "available" | "unavailable";
};

export type MainlinePlayBrowseItem = MainlinePlaySummary & {
  activeTeam: MainlinePlayBrowseTeam;
  coverImageUrl: string | null;
  progress: MainlinePlayBrowseProgress;
};

export type MainlinePlaysPageData = {
  plays: MainlinePlayBrowseItem[];
};
