import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

interface DecisionOption {
  id: number;
  slug: string;
  name: string;
  pokemon_species_id: number | null;
  pokemon_form_id: number | null;
  pokemondb_sprite_slug: string | null;
  sort_order: number;
}

export const useDecisionOptions = (trackingItemId?: number) => {
  return useQuery<DecisionOption[]>({
    queryKey: ["tracking", "decision", trackingItemId, "options"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/_/tracking/decision/${trackingItemId}/options`,
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
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/tracking/decision/${trackingItemId}`,
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/tracking/decision/${trackingItemId}`,
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
      // Invalidate all category item lists since completion state may change
      qc.invalidateQueries({
        queryKey: ["play", playId, "tracking", "category"],
      });
    },
  });
};
