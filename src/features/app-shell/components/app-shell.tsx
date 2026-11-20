import { appRoutes } from "@/config/routes";
import { AppBarSections } from "@/features/app-shell/components/navigation/app-bar-sections";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { AppTabBar } from "@/features/app-shell/components/navigation/app-tab-bar";
import { MotionPreferenceMark } from "@/features/app-shell/components/motion-preference-mark";
import { NavigationLinks } from "@/features/app-shell/components/navigation/navigation-links";
import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import { SiteFooter } from "@/features/app-shell/components/site-footer";
import { AppAccountProvider } from "@/features/app-shell/components/app-account-provider";
import {
  getBrandHref,
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
   * The site's top bar. `full` (the default): the V and name, the front
   * page's parts and Log in, as the quiet pill on the page's own ground
   * (Privacy, Terms). `front` and `account` are the same bar for a page
   * that opens on the red band, where it is part of the red (white words on
   * the band's darker top): `front` for the front page, and `account`,
   * which drops Log in, for the log-in pages. `none`: no bar (the moment an email link is finished). The
   * app's bar is always full.
   */
  bar?: "account" | "front" | "full" | "none";
  children: React.ReactNode;
};

/*
 * The two bars. The app's: the V tile and the name (to Mainline Home),
 * Mainline's views and the Codex in the middle (Team Planner, Collection and
 * the Codex each open a menu of their pages), and your icon on the right;
 * on phones and tablets the views, the Codex and You move to a bottom bar.
 * The site's: the V tile with the name, How it works and Install (parts of
 * the front page), and Log in; on phones only the V tile and Log in. Both
 * sit on the red strip. The site frame ends on the site footer.
 */
export const AppShell = ({
  bar = "full",
  children,
  frame = "site",
}: AppShellProps) => {
  const isApp = frame === "app";
  /* On the red bar: white, with the action's ink. */
  const logIn = (
    <Link
      href={appRoutes.login}
      className={buttonVariants({ size: "sm", variant: "inverse" })}
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
      {isApp ? <MotionPreferenceMark /> : null}
      {isApp ? (
        <AppNavbar
          brandHref={getBrandHref(true)}
          showName
          center={
            /* Every place you go together: the sections, then the Codex. */
            <AppBarSections className="hidden lg:flex" />
          }
          end={
            <div className="hidden items-center lg:flex">
              <UserMenu />
            </div>
          }
        />
      ) : bar === "none" ? null : (
        <AppNavbar
          brandHref={getBrandHref(false)}
          showName
          center={
            <NavigationLinks
              ariaLabel="Main"
              links={publicLinks}
              className="hidden sm:flex"
            />
          }
          end={bar === "account" ? null : logIn}
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
