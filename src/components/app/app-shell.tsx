import Link from "next/link";

import { Logo } from "@/components/app/logo";
import { MainNav } from "@/components/app/main-nav";
import { MobileNav } from "@/components/app/mobile-nav";
import { UserMenu } from "@/components/app/user-menu";

type AppShellProps = {
  children: React.ReactNode;
  userEmail: string;
};

export function AppShell({ children, userEmail }: AppShellProps) {
  return (
    <div className="relative isolate flex min-h-screen flex-col">
      <header className="bg-background/90 sticky top-0 z-40 border-b backdrop-blur-xl">
        <div className="mx-auto flex h-16 w-full max-w-7xl items-center justify-between gap-4 px-4 sm:px-6 lg:px-8">
          <Link href="/" aria-label="Voydex home">
            <Logo />
          </Link>
          <div className="hidden lg:flex">
            <MainNav />
          </div>
          <div className="flex items-center gap-1">
            <div className="lg:hidden">
              <MobileNav />
            </div>
            <UserMenu email={userEmail} />
          </div>
        </div>
      </header>
      <main className="relative z-10 mx-auto flex w-full max-w-7xl flex-1 flex-col gap-6 px-4 py-8 sm:px-6 lg:px-8">
        {children}
      </main>
    </div>
  );
}
