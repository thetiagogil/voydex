import { ArrowLeftIcon } from "lucide-react";
import Link from "next/link";

import { AppNavbar } from "@/shared/components/app/app-navbar";
import { buttonVariants } from "@/shared/components/ui/button";
import { AuthPanel, type AuthMode } from "@/shared/auth/components/auth-panel";
import { getSafeAuthRedirectPath } from "@/lib/navigation";
import { cn } from "@/lib/utils";

type LoginPageProps = {
  searchParams?: Promise<{
    error?: string;
    mode?: string;
    next?: string;
  }>;
};

export default async function LoginPage({ searchParams }: LoginPageProps) {
  const params = await searchParams;
  const next = getSafeAuthRedirectPath(params?.next);
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";

  return (
    <main className="text-foreground min-h-screen">
      <AppNavbar />

      <div className="mx-auto grid min-h-[calc(100vh-4rem)] w-full max-w-7xl items-center px-4 py-10 sm:px-6 lg:px-8">
        <div className="mx-auto flex w-full max-w-md flex-col gap-5">
          <Link
            href="/"
            className={cn(buttonVariants({ variant: "ghost" }), "w-fit")}
          >
            <ArrowLeftIcon data-icon="inline-start" aria-hidden />
            Back home
          </Link>
          <AuthPanel error={params?.error} mode={mode} next={next} />
        </div>
      </div>
    </main>
  );
}
