import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { LoginPage } from "@/features/auth/components/login-page";

export default function Page() {
  return (
    <PublicAppShell bar="account">
      <Suspense>
        <LoginPage />
      </Suspense>
    </PublicAppShell>
  );
}
