import type { BaseInfo } from "@/shared/types";
import { useQuery } from "@tanstack/react-query";

export const useTypes = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["types"],
    queryFn: async () => {
      const res = await fetch("/api/features/reference/types");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch types");
      return data;
    },
    staleTime: 1000 * 60 * 60,
  });
};
