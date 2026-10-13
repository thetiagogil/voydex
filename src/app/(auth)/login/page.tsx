import { publicArt } from "@/modules/reference/public-art";
import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";
import { LoginPage } from "@/features/auth/components/login-page";

type LoginRouteProps = {
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

export default function Page({ searchParams }: LoginRouteProps) {
  return (
    <PublicAppShell showAuthAction={false}>
      <LoginPage art={publicArt} searchParams={searchParams} />
    </PublicAppShell>
  );
}
