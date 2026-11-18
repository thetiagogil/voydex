import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { ForgotPasswordPage } from "@/features/auth/components/forgot-password-page";

export default function Page() {
  return (
    <PublicAppShell bar="account">
      <Suspense>
        <ForgotPasswordPage />
      </Suspense>
    </PublicAppShell>
  );
}
