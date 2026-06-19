import Link from "next/link";

import type { ModuleKey } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/shared/components/app/app-navbar";
import { ModuleNavigationMenu } from "@/shared/components/app/module-navigation-menu";
import { ModuleViewNav } from "@/shared/components/app/module-view-nav";
import { UserMenu } from "@/shared/components/app/user-menu";
import { buttonVariants } from "@/shared/components/ui/button";

type AppShellProps = {
  activeModuleKey: ModuleKey;
  children: React.ReactNode;
  userEmail?: string | null;
};

export function AppShell({
  activeModuleKey,
  children,
  userEmail,
}: AppShellProps) {
  return (
    <div className="relative isolate flex min-h-screen flex-col">
      <AppNavbar
        afterLogo={<ModuleNavigationMenu activeModuleKey={activeModuleKey} />}
        center={
          <div className="hidden lg:flex">
            <ModuleViewNav activeModuleKey={activeModuleKey} />
          </div>
        }
        end={
          <>
            {userEmail ? (
              <UserMenu email={userEmail} />
            ) : (
              <Link
                href={appRoutes.login}
                className={buttonVariants({ variant: "outline", size: "lg" })}
              >
                Log in
              </Link>
            )}
          </>
        }
      />
      <main className="relative z-10 mx-auto flex w-full max-w-7xl flex-1 flex-col gap-6 px-4 py-8 sm:px-6 lg:px-8">
        {children}
      </main>
    </div>
  );
}
