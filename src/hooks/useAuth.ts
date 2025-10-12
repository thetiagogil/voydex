import { type Auth } from "@/types/api";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export function useAuth() {
  return useQuery({
    queryKey: ["auth", "claims"],
    queryFn: async () => {
      const res = await fetch("/api/auth/claims");
      const data = await res.json();
      if (!res.ok) return false;
      return data?.claims ? true : false;
    },
    retry: false,
    placeholderData: false,
    staleTime: 1000 * 30,
  });
}

export function useLogin() {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: async (auth: Auth) => {
      const res = await fetch("/api/auth/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(auth),
      });

      if (!res.ok) {
        throw new Error("Failed to authenticate user");
      }

      return await res.json();
    },
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: ["auth", "claims"] });
    },
  });
}

export function useLogout() {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: async () => {
      const res = await fetch("/api/auth/logout", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
      });

      if (!res.ok) {
        throw new Error("Failed to logout user");
      }

      return await res.json();
    },
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: ["auth", "claims"] });
    },
  });
}
