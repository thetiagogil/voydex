import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import type { DlcVersionGroup } from "../types";

export const useAvailableDlcs = (versionGroupId?: number) => {
  const enabled = Boolean(versionGroupId);
  return useQuery<DlcVersionGroup[]>({
    queryKey: ["dlc", "available", versionGroupId],
    queryFn: async () => {
      const res = await fetch(`/api/features/plays/dlc/${versionGroupId}`);
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch available DLCs");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 60, // 1 hour — DLC list rarely changes
  });
};

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
      const res = await fetch(
        `/api/features/plays/${encodeURIComponent(playId)}/dlc`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ versionGroupIds }),
        },
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to update play DLCs");
      return data;
    },
    onSuccess: (_, { playId }) => {
      queryClient.invalidateQueries({ queryKey: ["play", playId] });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "overview"],
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "collectibles"],
      });
      queryClient.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "completion"],
      });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
