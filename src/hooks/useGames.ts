import { useQuery } from "@tanstack/react-query";

export const useGame = (gameId: string) => {
  return useQuery({
    queryKey: ["meta", "games", gameId],
    queryFn: async () => {
      const res = await fetch(`/api/meta/games/${gameId}`);
      if (!res.ok) throw new Error("Failed to fetch game");
      return await res.json();
    },
    enabled: !!gameId,
  });
};

export const useGameBySlug = (gameSlug: string) => {
  return useQuery({
    queryKey: ["meta", "games", "slug", gameSlug],
    queryFn: async () => {
      const res = await fetch(`/api/meta/games/slug/${gameSlug}`);
      if (!res.ok) throw new Error("Failed to fetch game");
      return await res.json();
    },
    enabled: !!gameSlug,
  });
};
