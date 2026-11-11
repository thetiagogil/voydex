import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { readSession } from "@/features/app-shell/server/session-query";
import {
  ResetPasswordPage,
  type ResetPasswordSearchParams,
} from "@/features/auth/components/reset-password-page";

export default async function Page({
  searchParams,
}: {
  searchParams?: Promise<ResetPasswordSearchParams>;
}) {
  const session = await readSession();

  return (
    <PublicAppShell bar="none">
      <ResetPasswordPage
        email={session?.email ?? null}
        isSignedIn={Boolean(session)}
        searchParams={searchParams}
      />
    </PublicAppShell>
  );
}
