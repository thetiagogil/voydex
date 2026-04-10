import { useQuery } from "@tanstack/react-query";
import type { DashboardActivity, DashboardOverview } from "../types";

// =============================================================================
// Dashboard Overview Hook (primary entrypoint for the dashboard page)
// =============================================================================

export const useDashboardOverview = () => {
  return useQuery<DashboardOverview | null>({
    queryKey: ["dashboard", "overview"],
    queryFn: async () => {
      const res = await fetch("/api/features/dashboard/overview");
      if (!res.ok) throw new Error("Failed to fetch dashboard overview");
      const json = await res.json();
      return json.data ?? null;
    },
  });
};

// =============================================================================
// Dashboard Activity Hook (for standalone load-more behavior)
// =============================================================================

export const useDashboardActivity = (limit: number = 10) => {
  return useQuery<DashboardActivity[]>({
    queryKey: ["dashboard", "activity", limit],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/dashboard/activity?limit=${limit}`,
      );
      if (!res.ok) throw new Error("Failed to fetch dashboard activity");
      const json = await res.json();
      return json.data ?? [];
    },
  });
};
