import { Suspense } from "react";

import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { CheckEmailPage } from "@/features/auth/components/check-email-page";

export default function Page() {
  return (
    <PublicAppShell bar="none">
      <Suspense>
        <CheckEmailPage />
      </Suspense>
    </PublicAppShell>
  );
}
