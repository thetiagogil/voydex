import { ArrowLeftIcon } from "lucide-react";
import Link from "next/link";

import { buttonVariants } from "@/shared/components/ui/button";
import { surfaceClassNames } from "@/shared/components/ui/surface";
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
    <main className="flex min-h-screen items-center justify-center px-4 py-12">
      <div className="flex w-full max-w-md flex-col gap-5">
        <Link
          href="/"
          className={cn(
            buttonVariants({ variant: "ghost" }),
            surfaceClassNames.control,
            "w-fit",
          )}
        >
          <ArrowLeftIcon className="size-4" aria-hidden />
          Back to home
        </Link>
        <AuthPanel error={params?.error} mode={mode} next={next} />
      </div>
    </main>
  );
}
