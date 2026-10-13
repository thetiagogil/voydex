import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import type { SignedInAccount } from "@/features/app-shell/types";

export type PublicAppShellData = {
  account: SignedInAccount | null;
};

/* A public page shows the signed-in bar when someone is signed in. */
export const getPublicAppShellData = async (): Promise<PublicAppShellData> => ({
  account: await getSignedInAccount(),
});
