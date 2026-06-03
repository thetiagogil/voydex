import { useQuery } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { PlayCompletionData } from "../types";
import { playKeys } from "../api/query-keys";

export const usePlayCompletion = (
  playId?: string,
  options?: {
    initialData?: PlayCompletionData;
    enabled?: boolean;
  },
) => {
  return useQuery<PlayCompletionData>({
    queryKey: playId
      ? playKeys.completion(playId)
      : [...playKeys.all, "completion"],
    queryFn: () => playApi.getCompletion(playId!),
    enabled: options?.enabled ?? Boolean(playId),
    staleTime: Infinity,
    initialData: options?.initialData,
  });
};
