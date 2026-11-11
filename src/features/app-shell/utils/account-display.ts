import type { AppAccount } from "@/features/app-shell/types";

/* The name the bars and the account menu show: your display name, else your email. */
export const getAccountName = (account: AppAccount): string =>
  account.displayName ?? account.email ?? "You";

/* The letter on your avatar until you pick a Pokémon icon. */
export const getAccountInitial = (account: AppAccount): string =>
  getAccountName(account).trim().charAt(0).toUpperCase() || "?";
