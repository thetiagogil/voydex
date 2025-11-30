import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export const usePlay = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayPokemonTeam = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "pokemon-team"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/pokemon-team`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayProgressCategories = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "progress", "categories"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/progress/categories`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayProgressItems = (playId?: string, categoryId?: number) => {
  const enabled = Boolean(
    playId && categoryId !== undefined && categoryId !== null,
  );
  return useQuery({
    queryKey: ["play", playId, "progress", "category", categoryId, "items"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/progress/category/${categoryId}/items`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

export const usePlayPokemonCaught = (playId?: string) => {
  const enabled = Boolean(playId);
  return useQuery({
    queryKey: ["play", playId, "pokemon-caught"],
    queryFn: async () => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId || "")}/pokemon-caught`,
      );
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled,
    staleTime: 1000 * 30,
  });
};

// Mutations
export const useAddPokemonToTeam = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      pokemon,
    }: {
      playId: string;
      pokemon: {
        species_id: number;
        form_id: number;
        position: number;
        nickname?: string;
        level: number;
        gender?: string;
        is_shiny?: boolean;
        nature_id?: number;
        ability_id?: number;
        move1_id?: number;
        move2_id?: number;
        move3_id?: number;
        move4_id?: number;
      };
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-team/add`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(pokemon),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to add Pokemon to team");
      }

      return await res.json();
    },
    onSuccess: (_data, variables) => {
      qc.invalidateQueries({
        queryKey: ["play", variables.playId, "pokemon-team"],
      });
    },
  });
};

export const useUpdatePokemonInTeam = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      pokemonId,
      updates,
    }: {
      playId: string;
      pokemonId: string;
      updates: {
        position?: number;
        nickname?: string;
        level?: number;
        gender?: string;
        is_shiny?: boolean;
        nature_id?: number;
        ability_id?: number;
        move1_id?: number;
        move2_id?: number;
        move3_id?: number;
        move4_id?: number;
      };
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
        {
          method: "PATCH",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(updates),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to update Pokemon");
      }

      return await res.json();
    },
    onSuccess: (_data, variables) => {
      qc.invalidateQueries({
        queryKey: ["play", variables.playId, "pokemon-team"],
      });
    },
  });
};

export const useRemovePokemonFromTeam = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      pokemonId,
    }: {
      playId: string;
      pokemonId: string;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-team/${encodeURIComponent(pokemonId)}`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(
          errorData?.error || "Failed to remove Pokemon from team",
        );
      }

      return await res.json();
    },
    onSuccess: (_data, variables) => {
      qc.invalidateQueries({
        queryKey: ["play", variables.playId, "pokemon-team"],
      });
    },
  });
};

// Progress mutations
export const useCheckProgressItem = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemId,
      categoryId,
    }: {
      playId: string;
      progressItemId: number;
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/check`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ progressItemId }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to check progress item");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemId, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      // Cancel outgoing refetches
      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      // Snapshot previous values
      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items (set userProgress.completed to true)
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          item.id === progressItemId
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: true,
                  completed_at: new Date().toISOString(),
                },
              }
            : item,
        );
      });

      // Optimistically update categories (increment completed count)
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
            const newCompleted = (cat.items_completed || 0) + 1;
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
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      // Rollback on error
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      // Only refetch items - categories are already correct from optimistic update
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

export const useUncheckProgressItem = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemId,
      categoryId,
    }: {
      playId: string;
      progressItemId: number;
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/uncheck?progressItemId=${progressItemId}`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncheck progress item");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemId, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      // Cancel outgoing refetches
      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      // Snapshot previous values
      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items (set userProgress.completed to false)
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          item.id === progressItemId
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: false,
                  completed_at: null,
                },
              }
            : item,
        );
      });

      // Optimistically update categories (decrement completed count)
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
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
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      // Rollback on error
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      // Only refetch items - categories are already correct from optimistic update
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

// Pokemon caught mutations
export const useCheckPokemonCaught = () => {
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
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/check`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ speciesId, formId }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(
          errorData?.error || "Failed to check pokemon as caught",
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

      // Optimistically update to mark as caught
      qc.setQueryData(caughtQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((pokemon: any) =>
          pokemon.species_id === speciesId
            ? { ...pokemon, caught: true }
            : pokemon,
        );
      });

      // Optimistically update categories (increment completed for Pokedex category)
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.slug?.includes("pokedex")) {
            const newCompleted = (cat.items_completed || 0) + 1;
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

export const useUncheckPokemonCaught = () => {
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

// Batch mutations for progress items
export const useCheckProgressItemBatch = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemIds,
      categoryId,
    }: {
      playId: string;
      progressItemIds: number[];
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/batch-check`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ progressItemIds, categoryId }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to check progress items");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemIds, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          progressItemIds.includes(item.id)
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: true,
                  completed_at: new Date().toISOString(),
                },
              }
            : item,
        );
      });

      // Optimistically update categories
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
            const newCompleted =
              (cat.items_completed || 0) + progressItemIds.length;
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
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

export const useUncheckProgressItemBatch = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      progressItemIds,
      categoryId,
    }: {
      playId: string;
      progressItemIds: number[];
      categoryId: number;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/progress/batch-uncheck`,
        {
          method: "DELETE",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ progressItemIds, categoryId }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to uncheck progress items");
      }

      return await res.json();
    },
    onMutate: async ({ playId, progressItemIds, categoryId }) => {
      const itemsQueryKey = [
        "play",
        playId,
        "progress",
        "category",
        categoryId,
        "items",
      ];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      await qc.cancelQueries({ queryKey: itemsQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      const previousItems = qc.getQueryData(itemsQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      // Optimistically update items
      qc.setQueryData(itemsQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((item: any) =>
          progressItemIds.includes(item.id)
            ? {
                ...item,
                userProgress: {
                  ...item.userProgress,
                  completed: false,
                  completed_at: null,
                },
              }
            : item,
        );
      });

      // Optimistically update categories
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.id === categoryId) {
            const newCompleted = Math.max(
              0,
              (cat.items_completed || 0) - progressItemIds.length,
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
        previousItems,
        previousCategories,
        itemsQueryKey,
        categoriesQueryKey,
      };
    },
    onError: (_err, _variables, context) => {
      if (context?.previousItems) {
        qc.setQueryData(context.itemsQueryKey, context.previousItems);
      }
      if (context?.previousCategories) {
        qc.setQueryData(context.categoriesQueryKey, context.previousCategories);
      }
    },
    onSettled: (_data, _error, { playId, categoryId }) => {
      qc.invalidateQueries({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
      });
    },
  });
};

// Batch mutations for pokemon caught
export const useCheckPokemonCaughtBatch = () => {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async ({
      playId,
      pokemon,
    }: {
      playId: string;
      pokemon: Array<{ speciesId: number; formId: number }>;
    }) => {
      const res = await fetch(
        `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught/batch-check`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ pokemon }),
        },
      );

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.error || "Failed to check pokemon");
      }

      return await res.json();
    },
    onMutate: async ({ playId, pokemon }) => {
      const caughtQueryKey = ["play", playId, "pokemon-caught"];
      const categoriesQueryKey = ["play", playId, "progress", "categories"];

      await qc.cancelQueries({ queryKey: caughtQueryKey });
      await qc.cancelQueries({ queryKey: categoriesQueryKey });

      const previousCaught = qc.getQueryData(caughtQueryKey);
      const previousCategories = qc.getQueryData(categoriesQueryKey);

      const speciesIds = pokemon.map((p) => p.speciesId);

      // Optimistically update pokemon caught
      qc.setQueryData(caughtQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((p: any) =>
          speciesIds.includes(p.species_id) ? { ...p, caught: true } : p,
        );
      });

      // Optimistically update categories
      qc.setQueryData(categoriesQueryKey, (old: any) => {
        if (!old) return old;
        return old.map((cat: any) => {
          if (cat.slug?.includes("pokedex")) {
            const newCompleted = (cat.items_completed || 0) + pokemon.length;
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

export const useUncheckPokemonCaughtBatch = () => {
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

// Prefetch helpers
export const usePlayProgressPrefetch = () => {
  const qc = useQueryClient();
  return {
    prefetchCategories: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "progress", "categories"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/progress/categories`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchItems: async (playId: string, categoryId: number) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "progress", "category", categoryId, "items"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/progress/category/${categoryId}/items`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
    prefetchPokemonCaught: async (playId: string) =>
      qc.prefetchQuery({
        queryKey: ["play", playId, "pokemon-caught"],
        queryFn: async () => {
          const res = await fetch(
            `/api/gameplay/play/${encodeURIComponent(playId)}/pokemon-caught`,
          );
          const data = await res.json();
          if (!res.ok) return false;
          return data;
        },
      }),
  };
};
