import { useQuery } from "@tanstack/react-query";

export const useMoves = (enabled = true) => {
  return useQuery<BaseInfo[]>({
    queryKey: ["moves"],
    queryFn: async () => {
      const res = await fetch(`/api/meta/moves`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch moves");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 5,
  });
};
