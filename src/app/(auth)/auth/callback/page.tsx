import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { AuthCallbackPage } from "@/features/auth/components/auth-callback-page";

export default function Page() {
  return (
    <PublicAppShell bar="none">
      <Suspense>
        <AuthCallbackPage />
      </Suspense>
    </PublicAppShell>
  );
}
