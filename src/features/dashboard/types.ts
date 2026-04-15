import type { UserStats } from "@/shared/types";
import type {
  DashboardActivityType,
  DashboardActivityVariant,
} from "./constants";

export interface DashboardStats {
  total_plays: number;
  active_plays: number;
  completed_plays: number;
}

export interface DashboardGeneration {
  id: number;
  slug: string;
  name: string;
  gameCount: number;
  userStats: UserStats;
}

export interface DashboardActivity {
  id: string;
  type: DashboardActivityType;
  variant: DashboardActivityVariant;
  message: string;
  activityAt: string;
  play: {
    id: string;
    name: string;
  };
  game: {
    slug: string;
    name: string;
  };
  generation: {
    id: number;
    slug: string;
  };
  href: string;
}

export interface DashboardOverview {
  stats: DashboardStats | null;
  generations: DashboardGeneration[];
  activity: DashboardActivity[];
}
