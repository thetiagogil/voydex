import Link from "next/link";

import { AppBackground } from "@/components/app/app-background";
import { DatabaseHealthBanner } from "@/components/app/database-health-banner";
import { Logo } from "@/components/app/logo";
import { MainNav } from "@/components/app/main-nav";
import { MobileNav } from "@/components/app/mobile-nav";
import { UserMenu } from "@/components/app/user-menu";
import { buttonVariants } from "@/components/ui/button";

type AppShellProps = {
  children: React.ReactNode;
  userEmail: string;
};

export function AppShell({ children, userEmail }: AppShellProps) {
  return (
    <div className="relative isolate flex min-h-screen flex-col">
      <AppBackground variant="app" />
      <header className="bg-background/84 sticky top-0 z-40 border-b backdrop-blur-xl">
        <div className="mx-auto flex h-16 w-full max-w-7xl items-center justify-between gap-4 px-4 sm:px-6 lg:px-8">
          <Link href="/dashboard" aria-label="Voydex dashboard">
            <Logo />
          </Link>
          <div className="hidden lg:flex">
            <MainNav />
          </div>
          <div className="flex items-center gap-1">
            <Link href="/" className={buttonVariants({ variant: "ghost" })}>
              Home
            </Link>
            <div className="lg:hidden">
              <MobileNav />
            </div>
            <UserMenu email={userEmail} />
          </div>
        </div>
      </header>
      <main className="relative z-10 mx-auto flex w-full max-w-7xl flex-1 flex-col gap-6 px-4 py-8 sm:px-6 lg:px-8">
        <DatabaseHealthBanner />
        {children}
      </main>
    </div>
  );
}
