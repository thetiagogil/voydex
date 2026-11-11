import { appRoutes } from "@/config/routes";
import { ActiveModuleMark } from "@/features/app-shell/components/active-module-mark";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { AppTabBar } from "@/features/app-shell/components/navigation/app-tab-bar";
import { MotionPreferenceMark } from "@/features/app-shell/components/motion-preference-mark";
import { CodexMenu } from "@/features/app-shell/components/navigation/codex-menu";
import { NavigationLinks } from "@/features/app-shell/components/navigation/navigation-links";
import { PublicMenu } from "@/features/app-shell/components/navigation/public-menu";
import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import { SiteFooter } from "@/features/app-shell/components/site-footer";
import { AppAccountProvider } from "@/features/app-shell/components/app-account-provider";
import {
  getBrandHref,
  mainlineLinks,
  publicLinks,
} from "@/features/app-shell/utils/app-navigation";
import { AccountFoldsProvider } from "@/features/app-shell/components/account-folds-provider";
import { buttonVariants } from "@/shared/components/ui/button";
import { Toaster } from "@/shared/components/ui/sonner";
import { cn } from "@/shared/utils/cn";
import { Link } from "@/shared/components/link";

type AppShellProps = {
  /*
   * `app` for the app and the Codex, which everyone uses with their data on
   * this device; `site` (the default) for the site and the log-in pages.
   */
  frame?: "app" | "site";
  /*
   * The site's top bar: `full` (the V and name, how it works, the Codex,
   * Log in), `door` (the front door: Log in alone, no pill, the meadow
   * carries the name) or `none` (the log-in pages, which link home
   * themselves). The app's bar is always full.
   */
  bar?: "door" | "full" | "none";
  children: React.ReactNode;
};

/*
 * v3's two bars. Signed in: the V tile and the name (to Mainline Home), Mainline's views
 * in the middle, the Codex menu and your icon on the right; on phones and tablets
 * the views, the Codex and You move to a bottom bar. Signed out: the V tile
 * with the name, how it works and the Codex, and Log in; on phones the links
 * fold into a menu with Start a Play. The front door shows Log in alone, and
 * the log-in pages show no bar. The signed-out frame ends on the site footer.
 * The bar is transparent: a page that opens on a band (`page-band`) runs it
 * edge to edge under the bar, which sits on the band's colour.
 */
export const AppShell = ({
  bar = "full",
  children,
  frame = "site",
}: AppShellProps) => {
  const isApp = frame === "app";
  const logIn = (
    <Link
      href={appRoutes.login}
      className={buttonVariants({
        className: "bg-(--bar-control) hover:bg-(--bar-control-hover)",
        /* Small, so it sits inside the bar's pill with room round it. */
        size: "sm",
        variant: "secondary",
      })}
    >
      Log in
    </Link>
  );

  const frameTree = (
    <div
      className={cn(
        "relative isolate flex min-h-svh w-full flex-col overflow-x-clip",
        isApp
          ? "pb-[calc(4.75rem+env(safe-area-inset-bottom))] [--toast-bottom:5.75rem] lg:pb-0 lg:[--toast-bottom:1.5rem]"
          : "[--toast-bottom:1.5rem]",
      )}
    >
      <ActiveModuleMark />
      {isApp ? <MotionPreferenceMark /> : null}
      {isApp ? (
        <AppNavbar
          brandHref={getBrandHref(true)}
          showName
          center={
            /* Every place you go together: the sections, then the Codex. */
            <div className="hidden items-center gap-1 lg:flex">
              <NavigationLinks
                ariaLabel="Main"
                links={mainlineLinks}
                className="flex"
              />
              <CodexMenu />
            </div>
          }
          end={
            <div className="hidden items-center lg:flex">
              <UserMenu />
            </div>
          }
        />
      ) : bar === "none" ? null : bar === "door" ? (
        <AppNavbar bare brandHref={getBrandHref(false)} end={logIn} />
      ) : (
        <AppNavbar
          brandHref={getBrandHref(false)}
          showName
          center={
            <div className="hidden items-center gap-1 sm:flex">
              <NavigationLinks
                ariaLabel="Main"
                links={publicLinks}
                className="flex"
              />
              <CodexMenu />
            </div>
          }
          end={
            <>
              {logIn}
              <PublicMenu className="sm:hidden" />
            </>
          }
        />
      )}
      <main className="page-column relative z-10 flex min-w-0 flex-1 flex-col pt-(--page-top) pb-12 lg:pb-18">
        <div className="flex min-h-0 min-w-0 flex-1 flex-col gap-2">
          {isApp ? (
            <AccountFoldsProvider>{children}</AccountFoldsProvider>
          ) : (
            children
          )}
        </div>
      </main>
      {isApp ? <AppTabBar /> : <SiteFooter />}
      <Toaster />
    </div>
  );

  return isApp ? (
    <AppAccountProvider>{frameTree}</AppAccountProvider>
  ) : (
    frameTree
  );
};
