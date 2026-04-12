import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export interface DlcVersionGroup {
  id: number;
  slug: string;
  name: string;
}

export const useAvailableDlcs = (versionGroupId?: number) => {
  const enabled = Boolean(versionGroupId);
  return useQuery<DlcVersionGroup[]>({
    queryKey: ["dlc", "available", versionGroupId],
    queryFn: async () => {
      const res = await fetch(`/api/features/play/dlc/${versionGroupId}`);
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch available DLCs");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 60, // 1 hour — DLC list rarely changes
  });
};

export const usePlayDlcs = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery<number[]>({
    queryKey: ["play", playId, "dlc"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/play/${encodeURIComponent(playId || "")}/dlc`,
      );
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch play DLCs");
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
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
        `/api/features/play/${encodeURIComponent(playId)}/dlc`,
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
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
