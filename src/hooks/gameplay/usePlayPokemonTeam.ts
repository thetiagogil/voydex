import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

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
        species_id?: number;
        form_id?: number;
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
