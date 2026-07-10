import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { PublicNotFoundPage } from "@/features/system/components/public-not-found-page";

export default function NotFound() {
  return (
    <PublicAppShell>
      <PublicNotFoundPage />
    </PublicAppShell>
  );
}
