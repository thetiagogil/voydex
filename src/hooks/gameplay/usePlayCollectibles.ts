import type { PlayCollectible } from "@/types/tracking";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export const usePlayCollectibles = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery<PlayCollectible[]>({
    queryKey: ["play", playId, "collectibles"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/collectibles`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch collectibles");
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const useCollectEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: {
      playId: string;
      collectibleEntryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/collectibles/collect`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ collectibleEntryId }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to collect entry");
      }
      return res.json();
    },
    onSuccess: (_data, { playId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "collectibles"],
      });
    },
  });
};

export const useUncollectEntry = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      collectibleEntryId,
    }: {
      playId: string;
      collectibleEntryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/collectibles/uncollect?collectibleEntryId=${collectibleEntryId}`,
        { method: "DELETE" },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncollect entry");
      }
      return res.json();
    },
    onSuccess: (_data, { playId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "collectibles"],
      });
    },
  });
};
