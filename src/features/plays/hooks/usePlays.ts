import { useQuery } from "@tanstack/react-query";
import type { PlaysPlayOverview } from "../types";

export const usePlays = () => {
  return useQuery<PlaysPlayOverview[]>({
    queryKey: ["plays"],
    queryFn: async () => {
      const res = await fetch("/api/features/plays/overview");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch plays");
      return data;
    },
    staleTime: 1000 * 30,
  });
};
