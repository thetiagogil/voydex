import Link from "next/link";
import type { ModuleKey } from "@/config/modules";
import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/shared/components/app-shell/app-navbar";
import { ModuleNavigationMenu } from "@/shared/components/app-shell/module-navigation-menu";
import { ModuleViewNav } from "@/shared/components/app-shell/module-view-nav";
import { UserMenu } from "@/shared/components/app-shell/user-menu";
import { buttonVariants } from "@/shared/components/ui/button";

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
    <div className="relative isolate flex min-h-screen flex-col">
      <AppNavbar
        showLogoText={!moduleSelectorKey}
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
                className={buttonVariants({ variant: "outline", size: "lg" })}
              >
                Log in
              </Link>
            ) : null}
          </>
        }
      />
      <main className="relative z-10 mx-auto flex w-full max-w-7xl flex-1 flex-col gap-6 px-4 py-6 sm:px-6 lg:px-8 lg:py-8">
        {children}
      </main>
    </div>
  );
};
