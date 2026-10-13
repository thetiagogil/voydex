import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { AppTabBar } from "@/features/app-shell/components/navigation/app-tab-bar";
import {
  CodexUtilityLink,
  NavigationLinks,
} from "@/features/app-shell/components/navigation/navigation-links";
import { PublicMenu } from "@/features/app-shell/components/navigation/public-menu";
import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import { SiteFooter } from "@/features/app-shell/components/site-footer";
import {
  mainlineLinks,
  publicLinks,
} from "@/features/app-shell/utils/app-navigation";
import { buttonVariants } from "@/shared/components/ui/button";
import { Toaster } from "@/shared/components/ui/sonner";
import { cn } from "@/shared/utils/cn";
import Link from "next/link";

type AppShellProps = {
  children: React.ReactNode;
  /*
   * A full-width band between the bar and the page, such as Home's meadow.
   * It runs edge to edge and slides up under the bar, which sits on it.
   */
  hero?: React.ReactNode;
  showAuthAction?: boolean;
  userEmail?: string | null;
};

/*
 * v3's two bars. Signed in: the V tile, Mainline's sections in the middle,
 * the Codex and your icon on the right; on phones and tablets the sections
 * and You move to a bottom bar. Signed out: the V tile with the name, how it
 * works and the Codex, and Log in; on phones the links fold into a menu. The
 * signed-out frame ends on the site footer.
 */
export const AppShell = ({
  children,
  hero,
  showAuthAction = true,
  userEmail,
}: AppShellProps) => {
  return (
    <div
      className={cn(
        "relative isolate flex min-h-svh w-full flex-col",
        userEmail
          ? "pb-[calc(4.75rem+env(safe-area-inset-bottom))] [--toast-bottom:5.75rem] lg:pb-0 lg:[--toast-bottom:1.5rem]"
          : "[--toast-bottom:1.5rem]",
      )}
    >
      {userEmail ? (
        <AppNavbar
          center={
            <NavigationLinks
              ariaLabel="Main"
              links={mainlineLinks}
              className="hidden lg:flex"
            />
          }
          end={
            <div className="hidden items-center gap-2.5 lg:flex">
              <CodexUtilityLink />
              <UserMenu email={userEmail} />
            </div>
          }
        />
      ) : (
        <AppNavbar
          showName
          center={
            <NavigationLinks
              ariaLabel="Main"
              links={publicLinks}
              className="hidden sm:flex"
            />
          }
          end={
            <>
              {showAuthAction ? (
                <Link
                  href={appRoutes.login}
                  className={buttonVariants({ variant: "outline" })}
                >
                  Log in
                </Link>
              ) : null}
              <PublicMenu className="sm:hidden" />
            </>
          }
        />
      )}
      {hero}
      <main className="relative z-10 mx-auto flex w-full max-w-320 min-w-0 flex-1 flex-col overflow-x-clip px-4 pt-2 pb-12 sm:px-6 lg:px-8 lg:pb-18">
        <div className="flex min-h-0 min-w-0 flex-1 flex-col gap-2">
          {children}
        </div>
      </main>
      {userEmail ? <AppTabBar email={userEmail} /> : <SiteFooter />}
      <Toaster />
    </div>
  );
};
