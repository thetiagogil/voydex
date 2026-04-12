import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import type { DecisionOption } from "../types";

export const useDecisionOptions = (trackingItemId?: number) => {
  return useQuery<DecisionOption[]>({
    queryKey: ["tracking", "decision", trackingItemId, "options"],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/play/_/tracking/decision/${trackingItemId}/options`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch decision options");
      return data;
    },
    enabled: Boolean(trackingItemId),
    staleTime: 1000 * 60 * 5,
  });
};

export const usePlayDecision = (playId?: string, trackingItemId?: number) => {
  return useQuery<{ selectedOptionId: number | null }>({
    queryKey: ["play", playId, "tracking", "decision", trackingItemId],
    queryFn: async () => {
      const res = await fetch(
        `/api/features/play/${encodeURIComponent(playId!)}/tracking/decision/${trackingItemId}`,
      );
      const data = await res.json();
      if (!res.ok)
        throw new Error(data.error || "Failed to fetch play decision");
      return data;
    },
    enabled: Boolean(playId && trackingItemId),
    staleTime: 1000 * 30,
  });
};

export const useSaveDecision = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({
      playId,
      trackingItemId,
      decisionOptionId,
    }: {
      playId: string;
      trackingItemId: number;
      decisionOptionId: number | null;
    }) => {
      const res = await fetch(
        `/api/features/play/${encodeURIComponent(playId)}/tracking/decision/${trackingItemId}`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ decisionOptionId }),
        },
      );
      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to save decision");
      }
      return res.json();
    },
    onMutate: async ({ playId, trackingItemId, decisionOptionId }) => {
      const decisionKey = [
        "play",
        playId,
        "tracking",
        "decision",
        trackingItemId,
      ];
      await qc.cancelQueries({ queryKey: decisionKey });
      const previousDecision = qc.getQueryData(decisionKey);
      qc.setQueryData(decisionKey, {
        selectedOptionId: decisionOptionId,
      });
      return { previousDecision, decisionKey };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.decisionKey, context.previousDecision);
      }
    },
    onSettled: (_data, _error, { playId, trackingItemId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "decision", trackingItemId],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "categories"],
      });
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category"],
      });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    },
  });
};
