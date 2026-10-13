import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { LegalPage } from "@/features/site/components/legal-page";

export default function Page() {
  return (
    <PublicAppShell>
      <LegalPage kind="terms" />
    </PublicAppShell>
  );
}
