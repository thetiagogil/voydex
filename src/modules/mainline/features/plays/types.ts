import type { ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;

export type MainlinePlayPageData = {
  play: MainlinePlaySummary;
};

export type MainlinePlaysPageData = {
  plays: MainlinePlaySummary[];
};
