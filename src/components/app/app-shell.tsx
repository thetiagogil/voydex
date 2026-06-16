import type { User } from "@supabase/supabase-js";
import Link from "next/link";

import { MainNav } from "@/components/app/main-nav";
import { signOut } from "@/features/auth/actions";

type AppShellProps = {
  children: React.ReactNode;
  user: User;
};

export function AppShell({ children, user }: AppShellProps) {
  return (
    <div className="flex min-h-screen flex-col bg-zinc-50 text-zinc-950 dark:bg-zinc-950 dark:text-zinc-50">
      <header className="border-b border-zinc-200 bg-white/90 dark:border-zinc-800 dark:bg-zinc-950/90">
        <div className="mx-auto flex w-full max-w-7xl flex-col gap-4 px-4 py-4 sm:px-6 lg:px-8">
          <div className="flex flex-wrap items-center justify-between gap-3">
            <Link
              href="/dashboard"
              className="text-lg font-semibold tracking-tight"
            >
              Voydex
            </Link>
            <div className="flex items-center gap-3 text-sm">
              <Link
                href="/settings/profile"
                className="max-w-48 truncate text-zinc-600 hover:text-zinc-950 dark:text-zinc-300 dark:hover:text-white"
              >
                {user.email}
              </Link>
              <form action={signOut}>
                <button
                  type="submit"
                  className="rounded-md border border-zinc-300 px-3 py-2 font-medium text-zinc-700 transition-colors hover:border-zinc-950 hover:text-zinc-950 dark:border-zinc-700 dark:text-zinc-200 dark:hover:border-zinc-100 dark:hover:text-white"
                >
                  Sign out
                </button>
              </form>
            </div>
          </div>
          <MainNav />
        </div>
      </header>
      <main className="mx-auto flex w-full max-w-7xl flex-1 flex-col px-4 py-8 sm:px-6 lg:px-8">
        {children}
      </main>
    </div>
  );
}
