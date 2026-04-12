import { fetcher } from "@/lib/utils/fetcher";
import { useQuery } from "@tanstack/react-query";
import type { Play } from "../types";

export const usePlay = (playId?: string) => {
  return useQuery<{
    data: Play;
    breadcrumbs: { label: string; href: string; current?: boolean }[];
  }>({
    queryKey: ["play", playId],
    queryFn: () => fetcher(`/api/features/play/${encodeURIComponent(playId!)}`),
    enabled: Boolean(playId),
    staleTime: 1000 * 30,
  });
};
