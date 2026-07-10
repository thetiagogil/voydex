import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { IntroPage } from "@/features/site/components/intro-page";

export default function Page() {
  return (
    <PublicAppShell>
      <IntroPage />
    </PublicAppShell>
  );
}
