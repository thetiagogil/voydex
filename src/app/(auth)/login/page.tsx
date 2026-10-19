import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import {
  LoginPage,
  type LoginSearchParams,
} from "@/features/auth/components/login-page";
import { publicArt } from "@/modules/reference/public-art";

import { resolveStartIntent } from "@/modules/reference/features/games/server/start-intent-resolver";

export default function Page({
  searchParams,
}: {
  searchParams?: Promise<LoginSearchParams>;
}) {
  return (
    <PublicAppShell bar="none">
      <LoginPage
        art={publicArt}
        resolveIntent={resolveStartIntent}
        searchParams={searchParams}
      />
    </PublicAppShell>
  );
}
