import { appRoutes } from "@/config/routes";
import { AppNavbar } from "@/features/app-shell/components/navigation/app-navbar";
import { AppTabBar } from "@/features/app-shell/components/navigation/app-tab-bar";
import { CodexMenu } from "@/features/app-shell/components/navigation/codex-menu";
import { NavigationLinks } from "@/features/app-shell/components/navigation/navigation-links";
import { PublicMenu } from "@/features/app-shell/components/navigation/public-menu";
import { UserMenu } from "@/features/app-shell/components/navigation/user-menu";
import { SiteFooter } from "@/features/app-shell/components/site-footer";
import type { SignedInAccount } from "@/features/app-shell/types";
import {
  getBrandHref,
  mainlineLinks,
  publicLinks,
} from "@/features/app-shell/utils/app-navigation";
import { buttonVariants } from "@/shared/components/ui/button";
import { Toaster } from "@/shared/components/ui/sonner";
import { cn } from "@/shared/utils/cn";
import Link from "next/link";

type AppShellProps = {
  /* Who is signed in; null or left out for the signed-out frame. */
  account?: SignedInAccount | null;
  children: React.ReactNode;
  showAuthAction?: boolean;
  /* The signed-out bar's name beside the V tile; Home leaves it to the meadow. */
  showBrandName?: boolean;
};

/*
 * v3's two bars. Signed in: the V tile and the name (to Mainline Home), Mainline's views
 * in the middle, the Codex menu and your icon on the right; on phones and tablets
 * the views, the Codex and You move to a bottom bar. Signed out: the V tile
 * with the name, how it works and the Codex, and Log in; on phones the links
 * fold into a menu with Start a Play. Home's bar shows the tile alone: the
 * meadow carries the name. The signed-out frame ends on the site footer.
 * The bar is transparent: a page that opens on a band (`page-band`) runs it
 * edge to edge under the bar, which sits on the band's colour.
 */
export const AppShell = ({
  account,
  children,
  showAuthAction = true,
  showBrandName = true,
}: AppShellProps) => {
  return (
    <div
      className={cn(
        "relative isolate flex min-h-svh w-full flex-col overflow-x-clip",
        account
          ? "pb-[calc(4.75rem+env(safe-area-inset-bottom))] [--toast-bottom:5.75rem] lg:pb-0 lg:[--toast-bottom:1.5rem]"
          : "[--toast-bottom:1.5rem]",
      )}
    >
      {account ? (
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
              <UserMenu account={account} />
            </div>
          }
        />
      ) : (
        <AppNavbar
          brandHref={getBrandHref(false)}
          showName={showBrandName}
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
              {showAuthAction ? (
                <Link
                  href={appRoutes.login}
                  className={buttonVariants({
                    className:
                      "bg-(--bar-control) hover:bg-(--bar-control-hover)",
                    variant: "secondary",
                  })}
                >
                  Log in
                </Link>
              ) : null}
              <PublicMenu className="sm:hidden" />
            </>
          }
        />
      )}
      <main className="page-column relative z-10 flex min-w-0 flex-1 flex-col pt-(--page-top) pb-12 lg:pb-18">
        <div className="flex min-h-0 min-w-0 flex-1 flex-col gap-2">
          {children}
        </div>
      </main>
      {account ? <AppTabBar account={account} /> : <SiteFooter />}
      <Toaster />
    </div>
  );
};
