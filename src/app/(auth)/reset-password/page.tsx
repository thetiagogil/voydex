import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { ResetPasswordPage } from "@/features/auth/components/reset-password-page";

export default function Page() {
  return (
    <PublicAppShell bar="account">
      <Suspense>
        <ResetPasswordPage />
      </Suspense>
    </PublicAppShell>
  );
}
