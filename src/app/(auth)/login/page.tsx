import { ArrowLeftIcon } from "lucide-react";
import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { buttonVariants } from "@/components/ui/button";
import {
  AuthPanel,
  type AuthMode,
} from "@/features/auth/components/auth-panel";
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
  const next = params?.next?.startsWith("/") ? params.next : "/dashboard";
  const mode: AuthMode = params?.mode === "sign-up" ? "sign-up" : "log-in";

  return (
    <main className="relative isolate flex min-h-screen items-center justify-center px-4 py-12">
      <AppBackground variant="home" />
      <div className="relative z-10 flex w-full max-w-md flex-col gap-5">
        <Link
          href="/"
          className={cn(
            buttonVariants({ variant: "outline" }),
            "bg-card/88 w-fit backdrop-blur-md",
          )}
        >
          <ArrowLeftIcon className="size-4" aria-hidden />
          Back to home
        </Link>
        <DatabaseHealthBanner />
        <AuthPanel error={params?.error} mode={mode} next={next} />
      </div>
    </main>
  );
}
