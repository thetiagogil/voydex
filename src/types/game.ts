// =============================================================================
// GAME TYPE
// =============================================================================

import type { BaseInfo } from "./common";
import type { PlayStatus } from "./play";

export type GameType = "main" | "remake" | "enhanced" | "dlc" | "spin-off";

// =============================================================================
// GAME
// =============================================================================

export interface Game {
  id: number;
  slug: string;
  name: string;
  type: GameType | string | null;
  versionGroupId: number;
  releaseYear: number;
  coverUrl: string | null;
  generation: BaseInfo;
  region: BaseInfo;
}

// =============================================================================
// GAME PLAY SUMMARY (from play_summary view)
// =============================================================================

export interface GamePlaySummary {
  id: string;
  name: string;
  status: {
    slug: PlayStatus;
    name: string;
    isTerminal: boolean;
    description: string;
  };
  createdAt: string;
  updatedAt: string;
  game?: {
    id: number;
    slug: string;
    name: string;
    type: string;
    versionGroupId: number;
    generation: BaseInfo;
    region: BaseInfo;
  };
}

// =============================================================================
// GAME WITH FULL DATA (from reference/game service — includes plays + user stats)
// =============================================================================

export interface GameWithFullData extends Game {
  plays: GamePlaySummary[];
  userStats: {
    totalPlaythroughs: number;
    activePlaythroughs: number;
    completedPlaythroughs: number;
  };
}
