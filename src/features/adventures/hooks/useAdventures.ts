import { useQuery } from "@tanstack/react-query";
import type { AdventuresPlayOverview } from "../types";

export const usePlays = () => {
  return useQuery<AdventuresPlayOverview[]>({
    queryKey: ["plays"],
    queryFn: async () => {
      const res = await fetch("/api/features/adventures/overview");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch plays");
      return data;
    },
    staleTime: 1000 * 30,
  });
};
