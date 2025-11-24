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
