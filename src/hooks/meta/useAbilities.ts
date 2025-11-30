import { useQuery } from "@tanstack/react-query";

export const useAbilities = (enabled = true) => {
  return useQuery<BaseInfo[]>({
    queryKey: ["abilities"],
    queryFn: async () => {
      const res = await fetch(`/api/meta/abilities`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch abilities");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 5,
  });
};
