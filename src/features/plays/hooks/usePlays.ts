import { useQuery } from "@tanstack/react-query";
import type { PlaySummary } from "../types";

export const usePlays = () => {
  return useQuery<PlaySummary[]>({
    queryKey: ["plays"],
    queryFn: async () => {
      const res = await fetch("/api/features/plays");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch plays");
      return data;
    },
    staleTime: 1000 * 30,
  });
};
