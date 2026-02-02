import { deleteFetcher, postFetcher } from "@/lib/utils/fetcher";
import { useMutation, useQueryClient } from "@tanstack/react-query";

// =============================================================================
// TYPES
// =============================================================================

interface CheckPokemonParams {
  playId: string;
  speciesId: number;
  formId: number;
}

interface CheckPokemonBulkParams {
  playId: string;
  pokemon: Array<{ speciesId: number; formId: number }>;
}

interface UncheckPokemonBulkParams {
  playId: string;
  speciesIds: number[];
}

// =============================================================================
// OPTIMISTIC UPDATE HELPERS
// =============================================================================

const getQueryKeys = (playId: string) => ({
  caught: ["play", playId, "pokemon-caught"],
  categories: ["play", playId, "progress", "categories"],
});

const updateCaughtOptimistically = (
  old: any[],
  speciesIds: number[],
  caught: boolean,
) => {
  if (!old) return old;
  return old.map((pokemon: any) =>
    speciesIds.includes(pokemon.species_id) ? { ...pokemon, caught } : pokemon,
  );
};

const updateCategoriesOptimistically = (old: any[], delta: number) => {
  if (!old) return old;
  return old.map((cat: any) => {
    if (cat.slug?.includes("pokedex")) {
      return {
        ...cat,
        completedItems: Math.max(0, (cat.completedItems || 0) + delta),
      };
    }
    return cat;
  });
};

// =============================================================================
// CHECK SINGLE POKEMON
// =============================================================================

export const useCheckPlayPokemonCaught = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, speciesId, formId }: CheckPokemonParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/check`,
        { speciesId, formId },
      );
    },
    onMutate: async ({ playId, speciesId }) => {
      const keys = getQueryKeys(playId);

      await qc.cancelQueries({ queryKey: keys.caught });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousCaught = qc.getQueryData(keys.caught);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.caught, (old: any) =>
        updateCaughtOptimistically(old, [speciesId], true),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, 1),
      );

      return { previousCaught, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.caught, context.previousCaught);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
  });
};

// =============================================================================
// UNCHECK SINGLE POKEMON
// =============================================================================

export const useUncheckPlayPokemonCaught = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, speciesId, formId }: CheckPokemonParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/uncheck?speciesId=${speciesId}&formId=${formId}`,
      );
    },
    onMutate: async ({ playId, speciesId }) => {
      const keys = getQueryKeys(playId);

      await qc.cancelQueries({ queryKey: keys.caught });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousCaught = qc.getQueryData(keys.caught);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.caught, (old: any) =>
        updateCaughtOptimistically(old, [speciesId], false),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, -1),
      );

      return { previousCaught, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.caught, context.previousCaught);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
  });
};

// =============================================================================
// CHECK BULK POKEMON
// =============================================================================

export const useCheckPlayPokemonCaughtBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, pokemon }: CheckPokemonBulkParams) => {
      return postFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/bulk-check`,
        { pokemon },
      );
    },
    onMutate: async ({ playId, pokemon }) => {
      const keys = getQueryKeys(playId);
      const speciesIds = pokemon.map((p) => p.speciesId);

      await qc.cancelQueries({ queryKey: keys.caught });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousCaught = qc.getQueryData(keys.caught);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.caught, (old: any) =>
        updateCaughtOptimistically(old, speciesIds, true),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, pokemon.length),
      );

      return { previousCaught, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.caught, context.previousCaught);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokemon-caught"] });
    },
  });
};

// =============================================================================
// UNCHECK BULK POKEMON
// =============================================================================

export const useUncheckPlayPokemonCaughtBulk = () => {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async ({ playId, speciesIds }: UncheckPokemonBulkParams) => {
      return deleteFetcher(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/bulk-uncheck`,
        { speciesIds },
      );
    },
    onMutate: async ({ playId, speciesIds }) => {
      const keys = getQueryKeys(playId);

      await qc.cancelQueries({ queryKey: keys.caught });
      await qc.cancelQueries({ queryKey: keys.categories });

      const previousCaught = qc.getQueryData(keys.caught);
      const previousCategories = qc.getQueryData(keys.categories);

      qc.setQueryData(keys.caught, (old: any) =>
        updateCaughtOptimistically(old, speciesIds, false),
      );
      qc.setQueryData(keys.categories, (old: any) =>
        updateCategoriesOptimistically(old, -speciesIds.length),
      );

      return { previousCaught, previousCategories, keys };
    },
    onError: (_err, _vars, context) => {
      if (context) {
        qc.setQueryData(context.keys.caught, context.previousCaught);
        qc.setQueryData(context.keys.categories, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId }) => {
      qc.invalidateQueries({ queryKey: ["play", playId, "pokemon-caught"] });
    },
  });
};
