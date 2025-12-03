import { useQuery } from "@tanstack/react-query";

export const useGen = (genId: string) => {
  return useQuery({
    queryKey: ["meta", "gens", genId],
    queryFn: async () => {
      const res = await fetch(`/api/meta/gens/${genId}`);
      if (!res.ok) throw new Error("Failed to fetch generation");
      return await res.json();
    },
    enabled: !!genId,
  });
};
