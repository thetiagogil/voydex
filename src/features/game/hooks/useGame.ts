import { useQuery } from "@tanstack/react-query";

export const useGameOverview = (gameSlug: string) => {
  return useQuery({
    queryKey: ["reference", "games", "slug", gameSlug],
    queryFn: async () => {
      const res = await fetch(`/api/features/games/${gameSlug}/overview`);
      if (!res.ok) throw new Error("Failed to fetch game");
      return await res.json();
    },
    enabled: !!gameSlug,
  });
};
