import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  CheckEmailPage,
  type CheckEmailSearchParams,
} from "@/features/auth/components/check-email-page";
import { publicArt } from "@/modules/reference/public-art";

import { resolveStartIntent } from "@/modules/reference/features/games/server/start-intent-resolver";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<CheckEmailSearchParams>;
}) {
  return (
    <PublicAppShell showAuthAction={false}>
      <CheckEmailPage
        art={publicArt}
        resolveIntent={resolveStartIntent}
        searchParams={searchParams}
      />
    </PublicAppShell>
  );
}
