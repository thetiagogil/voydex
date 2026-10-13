import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { getSignedInAccount } from "@/features/app-shell/server/signed-in-account-query";
import {
  ResetPasswordPage,
  type ResetPasswordSearchParams,
} from "@/features/auth/components/reset-password-page";
import { publicArt } from "@/modules/reference/public-art";

export default async function Page({
  searchParams,
}: {
  searchParams?: Promise<ResetPasswordSearchParams>;
}) {
  const account = await getSignedInAccount();

  return (
    <PublicAppShell showAuthAction={false}>
      <ResetPasswordPage
        art={publicArt}
        email={account?.email ?? null}
        isSignedIn={Boolean(account)}
        searchParams={searchParams}
      />
    </PublicAppShell>
  );
}
