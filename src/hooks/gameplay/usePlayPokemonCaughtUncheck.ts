import { useMutation, useQueryClient } from "@tanstack/react-query";

export const useUncheckPlayPokemonCaught = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      speciesId,
      formId,
    }: {
      playId: string;
      speciesId: number;
      formId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/uncheck?speciesId=${speciesId}&formId=${formId}`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(
          errorData?.error || "Failed to uncheck pokemon as caught",
        );
      }

      return await res.json();
    },
    onMutate: async ({ playId, speciesId }) => {
      const caughtQueryKey = ["play", playId, "pokemon-caught"];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      // Cancel outgoing refetches
      await qc.cancelQueries({ queryKey: caughtQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      // Snapshot previous values
      const previousCaught = qc.getQueryData(caughtQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update to mark as not caught
      qc.setQueryData(caughtQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((pokemon: any) =>
          pokemon.species_id === speciesId
            ? { ...pokemon, caught: false }
            : pokemon,
        );
      });

      // Optimistically update categories (decrement completed for Pokedex category)
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.slug?.includes("pokedex")) {
            const newCompleted = Math.max(0, (cat.items_completed || 0) - 1);
            const total = cat.items_total || 1;
            return {
              ...cat,
              items_completed: newCompleted,
              percentage_completed: (newCompleted / total) * 100,
            };
          }
          return cat;
        });
      });

      return {
        previousCaught,
        previousCategories,
        caughtQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      // Rollback on error
      if (context?.previousCaught) {
        qc.setQueryData(context.caughtQueryKey, context.previousCaught);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: () => {
      // No refetch needed - optimistic updates are accurate
    },
  });
};

export const useUncheckPlayPokemonCaughtBatch = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      speciesIds,
    }: {
      playId: string;
      speciesIds: number[];
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/batch-uncheck`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ speciesIds }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncheck pokemon");
      }

      return await res.json();
    },
    onMutate: async ({ playId, speciesIds }) => {
      const caughtQueryKey = ["play", playId, "pokemon-caught"];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      await qc.cancelQueries({ queryKey: caughtQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      const previousCaught = qc.getQueryData(caughtQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update pokemon caught
      qc.setQueryData(caughtQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((p: any) =>
          speciesIds.includes(p.species_id) ? { ...p, caught: false } : p,
        );
      });

      // Optimistically update categories
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.slug?.includes("pokedex")) {
            const newCompleted = Math.max(
              0,
              (cat.items_completed || 0) - speciesIds.length,
            );
            const total = cat.items_total || 1;
            return {
              ...cat,
              items_completed: newCompleted,
              percentage_completed: (newCompleted / total) * 100,
            };
          }
          return cat;
        });
      });

      return {
        previousCaught,
        previousCategories,
        caughtQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      if (context?.previousCaught) {
        qc.setQueryData(context.caughtQueryKey, context.previousCaught);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "pokemon-caught"],
      });
    },
  });
};
