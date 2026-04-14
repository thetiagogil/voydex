import { useMutation, useQueryClient } from "@tanstack/react-query";

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
      queryClient.invalidateQueries({
        queryKey: ["play", playId],
        exact: true,
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "tracking"],
      });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "collectibles"],
      });
      queryClient.invalidateQueries({ queryKey: ["play", playId, "pokedex"] });
      queryClient.invalidateQueries({
        queryKey: ["play", playId, "completion"],
      });
    },
  });
};
