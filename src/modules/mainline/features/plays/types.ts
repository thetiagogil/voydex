import type {
  GameplayRow,
  ReferenceRow,
  ViewRow,
} from "@/shared/types/database-helpers";

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayGame = ReferenceRow<"games">;
export type MainlinePlayRegion = ReferenceRow<"regions">;

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;

export type MainlinePlayPageData = {
  coverImageUrl: string | null;
  game: MainlinePlayGame | null;
  play: MainlinePlaySummary;
  region: MainlinePlayRegion | null;
  rules: MainlineChallengeRule[];
};

export type MainlinePlaysPageData = {
  plays: MainlinePlaySummary[];
};
