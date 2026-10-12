import type { ModuleKey } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { ModuleNavigationMenu } from "@/features/app-shell/components/navigation/module-navigation-menu";
import { ModuleViewNav } from "@/features/app-shell/components/navigation/module-view-nav";
import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import { buttonVariants } from "@/shared/components/ui/button";
import Link from "next/link";

type AppShellProps = {
  activeModuleKey?: ModuleKey;
  children: React.ReactNode;
  moduleSelectorKey?: ModuleKey;
  showAuthAction?: boolean;
  userEmail?: string | null;
};

export const AppShell = ({
  activeModuleKey,
  children,
  moduleSelectorKey = activeModuleKey,
  showAuthAction = true,
  userEmail,
}: AppShellProps) => {
  const isAuthenticated = Boolean(userEmail);
  return (
    <div className="relative isolate flex min-h-svh w-full flex-col">
      <AppNavbar
        afterLogo={
          moduleSelectorKey ? (
            <ModuleNavigationMenu
              activeModuleKey={moduleSelectorKey}
              isAuthenticated={isAuthenticated}
            />
          ) : null
        }
        center={
          activeModuleKey ? (
            <div className="hidden lg:flex">
              <ModuleViewNav activeModuleKey={activeModuleKey} />
            </div>
          ) : null
        }
        end={
          <>
            {userEmail ? (
              <UserMenu email={userEmail} />
            ) : showAuthAction ? (
              <Link
                href={appRoutes.login}
                className={buttonVariants({ variant: "outline", size: "sm" })}
              >
                Log in
              </Link>
            ) : null}
          </>
        }
      />
      <main className="relative z-10 mx-auto flex w-full max-w-320 min-w-0 flex-1 flex-col overflow-x-clip px-4 pt-2 pb-10 sm:px-6 lg:px-8 lg:pb-16">
        <div className="flex min-h-0 min-w-0 flex-1 flex-col gap-2">
          {children}
        </div>
      </main>
    </div>
  );
};
