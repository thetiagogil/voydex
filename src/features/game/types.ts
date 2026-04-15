import type { DlcVersionGroup } from "@/features/play/types";
import type { BaseInfo, PlayStatusInfo, UserStats } from "@/shared/types";

export type GameType = "main" | "remake" | "enhanced" | "dlc" | "spin-off";

export interface Game {
  id: number;
  slug: string;
  name: string;
  type: GameType;
  versionGroupId: number;
  releaseYear: number;
  coverUrl: string;
  generation: BaseInfo;
  region: BaseInfo;
}

export interface GamePlayPokemonTeamMember {
  id: string;
  nickname: string | null;
  level: number;
  speciesId: number;
  species: BaseInfo;
  pokemonDbSpriteSlug: string;
}

export interface GamePlay {
  id: string;
  name: string;
  status: PlayStatusInfo;
  createdAt: string;
  updatedAt: string;
  pokemonTeam: GamePlayPokemonTeamMember[];
}

export interface GameData extends Game {
  plays: GamePlay[];
  userStats: UserStats;
  availableDlcs: DlcVersionGroup[];
}
