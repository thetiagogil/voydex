import { useQuery } from "@tanstack/react-query";

export const useNatures = (enabled = true) => {
  return useQuery<BaseInfo[]>({
    queryKey: ["natures"],
    queryFn: async () => {
      const res = await fetch(`/api/meta/natures`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch natures");
      return data;
    },
    enabled,
    staleTime: 1000 * 60 * 5,
  });
};
