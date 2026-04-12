import { fetcher } from "@/lib/utils/fetcher";
import type { BaseInfo } from "@/shared/types";
import { useQuery } from "@tanstack/react-query";

export const useGenerations = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "generations"],
    queryFn: () => fetcher<BaseInfo[]>("/api/features/reference/generations"),
    staleTime: 1000 * 60 * 60,
  });
};
