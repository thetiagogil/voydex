import { useQuery } from "@tanstack/react-query";

interface Type {
  id: number;
  slug: string;
  name: string;
}

export const useTypes = () => {
  return useQuery({
    queryKey: ["types"],
    queryFn: async () => {
      const res = await fetch("/api/reference/types");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch types");
      return data as Type[];
    },
    staleTime: 1000 * 60 * 60, // 1 hour
  });
};
