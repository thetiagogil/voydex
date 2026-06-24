import {
  AuthPanel,
  type AuthMode,
} from "@/features/auth/components/auth-panel";
import { DEFAULT_MODULE_KEY, modules } from "@/config/modules";
import { getSafeAuthRedirectPath } from "@/lib/navigation";
import { PublicAppShell } from "@/shared/components/app-shell/public-app-shell";

type LoginPageProps = {
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

export const LoginPage = async ({ searchParams }: LoginPageProps) => {
  const params = await searchParams;
  const defaultNext = modules[DEFAULT_MODULE_KEY].defaultHref;
  const next = getSafeAuthRedirectPath(params?.next, defaultNext);
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";

  return (
    <PublicAppShell showAuthAction={false}>
      <div className="flex w-full min-w-0 flex-1 items-center justify-center py-4 lg:py-8">
        <div className="mx-auto w-full max-w-[calc(100vw-2rem)] min-w-0 sm:max-w-md">
          <h1 className="sr-only">Log in to Voydex</h1>
          <AuthPanel error={params?.error} mode={mode} next={next} />
        </div>
      </div>
    </PublicAppShell>
  );
};
