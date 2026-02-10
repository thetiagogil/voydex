import type {
  DashboardStats,
  GenerationWithUserStats,
  RecentActivityItem,
} from "@/types/dashboard";
import { useQuery } from "@tanstack/react-query";

// =============================================================================
// Dashboard Stats Hook
// =============================================================================

export const useDashboardStats = () => {
  return useQuery<DashboardStats | null>({
    queryKey: ["dashboard", "stats"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/dashboard/stats");
      if (!res.ok) throw new Error("Failed to fetch dashboard stats");
      const json = await res.json();
      return json.data ?? null;
    },
  });
};

// =============================================================================
// Recent Activity Hook
// =============================================================================

export const useRecentActivity = (limit: number = 10) => {
  return useQuery<RecentActivityItem[]>({
    queryKey: ["dashboard", "activity", limit],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/dashboard/activity?limit=${limit}`,
      );
      if (!res.ok) throw new Error("Failed to fetch recent activity");
      const json = await res.json();
      return json.data ?? [];
    },
  });
};

// =============================================================================
// Generations with User Stats Hook
// =============================================================================

export const useGenerationsWithUserStats = () => {
  return useQuery<GenerationWithUserStats[]>({
    queryKey: ["dashboard", "generations"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/dashboard/generations");
      if (!res.ok) throw new Error("Failed to fetch generations");
      const json = await res.json();
      return json.data ?? [];
    },
  });
};

// =============================================================================
// Combined Adventure Overview Hook
// =============================================================================

export const useAdventureOverview = () => {
  return useQuery({
    queryKey: ["dashboard", "overview"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/dashboard/overview");
      if (!res.ok) throw new Error("Failed to fetch adventure overview");
      const json = await res.json();
      return json.data ?? null;
    },
  });
};
