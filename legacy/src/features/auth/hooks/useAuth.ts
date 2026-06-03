import { useDatabaseStatus } from "@/contexts/database-status.context";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { authApi } from "../api";
import type { AuthCredentials } from "../types";

const authClaimsKey = ["auth", "claims"] as const;

export const useClaims = () => {
  const { isDbAvailable, isChecking } = useDatabaseStatus();

  return useQuery({
    queryKey: authClaimsKey,
    queryFn: authApi.getClaims,
    enabled: isDbAvailable && !isChecking,
    retry: false,
    placeholderData: false,
    staleTime: 1000 * 30,
  });
};

export const useLogin = () => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (auth: AuthCredentials) => authApi.login(auth),
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: authClaimsKey });
    },
  });
};

export const useSignup = () => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: (auth: AuthCredentials) => authApi.signup(auth),
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: authClaimsKey });
    },
  });
};

export const useLogout = () => {
  const queryClient = useQueryClient();
  return useMutation({
    mutationFn: authApi.logout,
    onSuccess: async () => {
      await queryClient.invalidateQueries({ queryKey: authClaimsKey });
    },
  });
};
