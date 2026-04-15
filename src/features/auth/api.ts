import { fetcher, postFetcher } from "@/lib/utils/fetcher";
import type { AuthCredentials } from "./types";

export const authApi = {
  getClaims: async () => {
    try {
      return await fetcher<boolean>("/api/auth/claims");
    } catch {
      return false;
    }
  },
  login: (credentials: AuthCredentials) => {
    return postFetcher("/api/auth/login", credentials);
  },
  signup: (credentials: AuthCredentials) => {
    return postFetcher("/api/auth/signup", credentials);
  },
  logout: () => {
    return postFetcher("/api/auth/logout");
  },
};
