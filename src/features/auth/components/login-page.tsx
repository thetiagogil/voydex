import { AppNavbar } from "@/shared/components/app-shell/app-navbar";
import {
  AuthPanel,
  type AuthMode,
} from "@/features/auth/components/auth-panel";
import { getActiveModuleDefaultHrefFromCookies } from "@/lib/modules/active-module";
import { getSafeAuthRedirectPath } from "@/lib/navigation";

type LoginPageProps = {
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

export const LoginPage = async ({ searchParams }: LoginPageProps) => {
  const params = await searchParams;
  const defaultNext = await getActiveModuleDefaultHrefFromCookies();
  const next = getSafeAuthRedirectPath(params?.next, defaultNext);
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";

  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar showLogoText />

      <div className="mx-auto grid min-h-[calc(100svh-4rem-1px)] w-full max-w-7xl min-w-0 items-center gap-10 overflow-hidden px-4 py-10 sm:px-6 lg:grid-cols-[minmax(0,0.9fr)_minmax(22rem,0.65fr)] lg:px-8">
        <div className="hidden max-w-2xl lg:block">
          <h1 className="text-4xl leading-tight font-bold tracking-normal">
            Return to the place your journeys live.
          </h1>
          <p className="text-foreground/72 mt-5 max-w-xl text-base leading-7">
            Log in once, then Voydex opens the right module after your account
            and active workspace are resolved.
          </p>
        </div>
        <div className="mx-auto w-full max-w-[calc(100vw-2rem)] min-w-0 sm:max-w-md">
          <h1 className="sr-only">Log in to Voydex</h1>
          <AuthPanel error={params?.error} mode={mode} next={next} />
        </div>
      </div>
    </main>
  );
};
