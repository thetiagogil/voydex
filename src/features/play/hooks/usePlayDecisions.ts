import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { playApi } from "../api/client";
import type { TrackingDecisionOption } from "../types";
import { playKeys } from "../api/query-keys";

export const useDecisionOptions = (trackingItemId?: number) => {
  return useQuery<TrackingDecisionOption[]>({
    queryKey: trackingItemId
      ? playKeys.decisionOptions(trackingItemId)
      : ["tracking", "decision", "options"],
    queryFn: () => playApi.getDecisionOptions(trackingItemId!),
    enabled: Boolean(trackingItemId),
    staleTime: 1000 * 60 * 5,
  });
};

export const usePlayDecision = (playId?: string, trackingItemId?: number) => {
  return useQuery<{ selectedOptionId: number | null }>({
    queryKey:
      playId && trackingItemId
        ? playKeys.decision(playId, trackingItemId)
        : [...playKeys.all, "tracking", "decision"],
    queryFn: () => playApi.getDecision(playId!, trackingItemId!),
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
      return playApi.saveDecision(playId, trackingItemId, decisionOptionId);
    },
    onMutate: async ({ playId, trackingItemId, decisionOptionId }) => {
      const decisionKey = playKeys.decision(playId, trackingItemId);
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
      qc.invalidateQueries({ queryKey: playKeys.decision(playId, trackingItemId) });
      qc.invalidateQueries({ queryKey: playKeys.trackingCategories(playId) });
      qc.invalidateQueries({ queryKey: playKeys.trackingCategoryRoot(playId) });
      qc.invalidateQueries({ queryKey: playKeys.completion(playId) });
    },
  });
};
