import { useQuery } from "@tanstack/react-query";

export const usePlays = () => {
  return useQuery({
    queryKey: ["plays"],
    queryFn: async () => {
      const res = await fetch("/api/gameplay/plays");
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Failed to fetch plays");
      return data as GamePlaySummary[];
    },
    staleTime: 1000 * 30,
  });
};
