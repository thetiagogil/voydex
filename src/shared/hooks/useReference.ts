import { fetcher } from "@/lib/utils/fetcher";
import type { BaseInfo } from "@/shared/types";
import { useQuery } from "@tanstack/react-query";

export const useTypes = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "types"],
    queryFn: async () => {
      const res = await fetch("/api/reference/types");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch types");
      return data;
    },
    staleTime: 1000 * 60 * 60,
  });
};

export const useGenerations = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "generations"],
    queryFn: () => fetcher<BaseInfo[]>("/api/reference/generations"),
    staleTime: 1000 * 60 * 60,
  });
};
