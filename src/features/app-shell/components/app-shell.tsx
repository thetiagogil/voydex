import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { AppTabBar } from "@/features/app-shell/components/navigation/app-tab-bar";
import { MotionPreferenceMark } from "@/features/app-shell/components/motion-preference-mark";
import { CodexMenu } from "@/features/app-shell/components/navigation/codex-menu";
import { NavigationLinks } from "@/features/app-shell/components/navigation/navigation-links";
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
   * The site's top bar. `full` (the default): the V and name, the front
   * page's parts and Log in, on the page's own ground (Privacy, Terms).
   * `front` and `account` are the same bar for a page that opens on the red
   * band, as a solid white pill: `front` shows the V alone, since the front
   * page's title is the name, and `account` drops Log in (the log-in
   * pages). `none`: no bar (the moment an email link is finished). The
   * app's bar is always full.
   */
  bar?: "account" | "front" | "full" | "none";
  children: React.ReactNode;
};

/*
 * The two bars. The app's: the V tile and the name (to Mainline Home),
 * Mainline's views in the middle, the Codex menu and your icon on the right;
 * on phones and tablets the views, the Codex and You move to a bottom bar.
 * The site's: the V tile with the name, How it works and Install (parts of
 * the front page), and Log in; on phones only the V tile and Log in. On the
 * front page and the log-in pages, which open on the red band, it is a
 * solid white pill. The site frame ends on the site footer.
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
      ) : bar === "none" ? null : (
        <AppNavbar
          brandHref={getBrandHref(false)}
          showName={bar !== "front"}
          solid={bar !== "full"}
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
