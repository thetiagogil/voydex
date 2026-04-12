import { useMutation, useQueryClient } from "@tanstack/react-query";

type CreatePlayProps = {
  gameId: number;
  name?: string;
};

export const useCreatePlay = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ gameId, name }: CreatePlayProps) => {
      const res = await fetch("/api/features/game/play", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ gameId, name }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to create play");
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["plays"] });
      queryClient.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
