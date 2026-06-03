import { useMutation, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import { playKeys } from "../api/query-keys";
import type { Play } from "../types";

export const useUpdatePlayDlcs = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      versionGroupIds,
    }: {
      playId: string;
      versionGroupIds: number[];
    }) => {
      return playApi.updateDlcs(playId, versionGroupIds);
    },
    onSuccess: (
      result: {
        success: boolean;
        data: Play;
      },
      { playId },
    ) => {
      queryClient.setQueryData(playKeys.detail(playId), {
        data: result.data,
      });
      queryClient.invalidateQueries({ queryKey: playKeys.trackingCategoryRoot(playId) });
      queryClient.invalidateQueries({ queryKey: playKeys.trackingCategories(playId) });
      queryClient.invalidateQueries({
        queryKey: playKeys.collectibles(playId),
        exact: true,
      });
      queryClient.invalidateQueries({
        queryKey: playKeys.collectiblesSummary(playId),
        exact: true,
      });
      queryClient.invalidateQueries({
        queryKey: playKeys.pokedex(playId),
        exact: true,
      });
      queryClient.invalidateQueries({
        queryKey: playKeys.pokedexSummary(playId),
        exact: true,
      });
      queryClient.invalidateQueries({ queryKey: playKeys.completion(playId) });
    },
  });
};
