import type { GameCatalogue } from "@/modules/reference/features/games/types";
import type { MoveAttribute, Type } from "@/modules/reference/types";
import type { BaseStats } from "@/modules/reference/features/pokemon/domain/battle-math";
import type { GameplayRow, ViewRow } from "@/shared/types/database-helpers";

export type MainlinePlaySummary = ViewRow<"mainline_play_summary">;
export type MainlinePlayTimelineEvent =
  ViewRow<"mainline_play_timeline_detail">;
export type MainlinePlayOverview = ViewRow<"mainline_play_overview">;
export type MainlinePlayTeamMemberRow = ViewRow<"mainline_play_team_detail">;

export type MainlineChallengeRule = GameplayRow<"mainline_challenge_rules">;
export type MainlinePlayChallengeRuleLink =
  GameplayRow<"mainline_play_challenge_rules">;

export type MainlinePlayTeamMove = {
  attributes: MoveAttribute | null;
  id: number;
  name: string;
  slot: number;
  slug: string;
  type: Type | null;
};

export type MainlinePlayTeamMember = Omit<
  MainlinePlayTeamMemberRow,
  "moves"
> & {
  abilityEffectSummary: string | null;
  /* Its form's base stats in the Play's generation; null without them. */
  baseStats: BaseStats | null;
  /* What its held item does, when one is recorded. */
  heldItemEffectSummary: string | null;
  /* Its held item's and Poké Ball's slugs, for their sprites. */
  heldItemSlug: string | null;
  ballItemSlug: string | null;
  moves: MainlinePlayTeamMove[];
  natureDecreasedStat: string | null;
  natureIncreasedStat: string | null;
  primaryType: Type | null;
  secondaryType: Type | null;
};

export type MainlinePlayRuleRows = {
  links: MainlinePlayChallengeRuleLink[];
  rules: MainlineChallengeRule[];
  /* The types the rules' options name (Monotype's), by id. */
  types: { id: number; name: string }[];
};

/* The battle Level caps takes its cap from: "Gym Leader" and "Misty". */
export type MainlinePlayCapBattle = {
  /* A Legends: Z-A promotion match, named by its trainer alone ("Zach"). */
  isPromotionMatch: boolean;
  kind: string;
  name: string;
};

/*
 * Level caps' cap: the highest level on the team of the next Gym Leader,
 * Kahuna, Elite Four member, Champion or Z-A promotion match the Play hasn't
 * beaten in Story.
 * "no-team" when Voydex doesn't have that battle's team, "no-battle" when
 * none is left (after the Champion) or the game has none.
 */
export type MainlinePlayLevelCap =
  | { battle: MainlinePlayCapBattle; level: number; status: "capped" }
  | { battle: MainlinePlayCapBattle; status: "no-team" }
  | { status: "no-battle" };

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
  members: MainlinePlayTeamMemberRow[];
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

/* A tag of the trainer's, as a Play carries it. */
export type PlayBrowseTag = {
  id: string;
  name: string;
  slug: string;
};

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
  /* By name; empty when the Play has none or they couldn't be read. */
  tags: PlayBrowseTag[];
};

/* What starting a Play offers, on New Play and Home's first-Play picker. */
export type NewPlayPickerData = GameCatalogue & {
  /* The trainer name a new Play starts with: your default trainer name, else your display name. */
  trainerName: string | null;
};
