import { referenceApi } from "@/shared/api/reference";
import type { BaseInfo } from "@/shared/types";
import { useQuery } from "@tanstack/react-query";

export const useTypes = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "types"],
    queryFn: referenceApi.getTypes,
    staleTime: 1000 * 60 * 60,
  });
};

export const useGenerations = () => {
  return useQuery<BaseInfo[]>({
    queryKey: ["reference", "generations"],
    queryFn: referenceApi.getGenerations,
    staleTime: 1000 * 60 * 60,
  });
};
