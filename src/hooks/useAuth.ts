import { useDatabaseStatus } from "@/contexts/database-status";
import type { AuthCredentials } from "@/types/api";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";

export const useClaims = () => {
  const { isDbAvailable, isChecking } = useDatabaseStatus();

  return useQuery({
    queryKey: ["auth", "claims"],
    queryFn: async () => {
      const res = await fetch("/api/auth/claims");
      const data = await res.json();
      if (!res.ok) return false;
      return data;
    },
    enabled: isDbAvailable && !isChecking,
    retry: false,
    placeholderData: false,
    staleTime: 1000 * 30,
  });
};

export const useLogin = () => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: async (auth: AuthCredentials) => {
      const res = await fetch("/api/auth/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(auth),
      });

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.message || "Failed to authenticate user");
      }

      return await res.json();
    },
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: ["auth", "claims"] });
    },
  });
};

export const useSignup = () => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: async (auth: AuthCredentials) => {
      const res = await fetch("/api/auth/signup", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(auth),
      });

      if (!res.ok) {
        const errorData = await res.json().catch(() => null);
        throw new Error(errorData?.message || "Failed to create account");
      }

      return await res.json();
    },
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: ["auth", "claims"] });
    },
  });
};

export const useLogout = () => {
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
};
