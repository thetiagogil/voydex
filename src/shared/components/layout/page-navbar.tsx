"use client";

import { useClaims, useLogout } from "@/features/auth/hooks/useAuth";
import { toastPromise } from "@/lib/utils/toast-promise";
import { Logo } from "@/shared/components/logo";
import {
  PAGE_CONTAINER_WIDTH,
  PageContainerWidth,
} from "@/shared/constants/layout";
import {
  getAdventuresRoute,
  getCollectionRoute,
  getDashboardRoute,
} from "@/shared/constants/routes";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { PageNavbarMenu } from "./page-navbar-menu";
import { PageNavbarProfile } from "./page-navbar-profile";

type PageNavbarProps = {
  width?: PageContainerWidth;
}

export const PageNavbar = ({ width = "xl" }: PageNavbarProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const { data: isAuth, isFetching } = useClaims();
  const { mutateAsync: logout } = useLogout();
  const isAuthenticated = isAuth ?? false;

  const handleLogout = async () => {
    try {
      await toastPromise(logout(), {
        loading: "Logging you out…",
        success: "Log out successful!",
        error: (err) => err?.message || "Logout failed",
      });

      router.push("/");
    } catch (err) {
      console.error("Logout error:", err);
    }
  };

  const links = [
    { name: "Dashboard", href: getDashboardRoute() },
    { name: "Adventures", href: getAdventuresRoute() },
    { name: "Collection", href: getCollectionRoute() },
  ];

  const detectedPage = links.find((link) => {
    const href = link.href;

    // Exact root match
    if (href === "/") return pathname === "/";

    // Direct prefix match
    if (pathname.startsWith(href)) return true;

    // Dashboard should be active for related feature routes
    if (link.name === "Dashboard") {
      return (
        pathname.startsWith(getDashboardRoute()) ||
        pathname.startsWith("/generations") ||
        pathname.startsWith("/generation") ||
        pathname.startsWith("/games") ||
        pathname.startsWith("/game") ||
        pathname.startsWith("/plays") ||
        pathname.startsWith("/play")
      );
    }

    return false;
  })?.name;

  return (
    <nav>
      <div
        className={`${PAGE_CONTAINER_WIDTH[width]} mx-auto grid h-16 grid-cols-2 items-center px-4 sm:px-8 md:grid-cols-3`}
      >
        <div className="flex items-center">
          <Link href="/" className="flex-shrink-0">
            <Logo showText size="sm" />
          </Link>
        </div>

        <div className="hidden md:flex md:items-center md:justify-center md:gap-4">
          {!isFetching &&
            isAuthenticated &&
            links.map((link) => (
              <Link
                key={link.name}
                href={link.href}
                className={`rounded-xl px-4 py-2 text-sm font-medium transition-colors ${
                  detectedPage === link.name
                    ? "bg-primary/10 text-primary"
                    : "text-muted-foreground hover:text-foreground hover:bg-muted"
                }`}
              >
                {link.name}
              </Link>
            ))}
        </div>

        <div className="flex items-center justify-end gap-2">
          {!isFetching && isAuthenticated && (
            <span className="md:hidden">
              <PageNavbarMenu />
            </span>
          )}
          <PageNavbarProfile
            isFetching={isFetching}
            isAuth={isAuth ?? null}
            handleLogout={handleLogout}
          />
        </div>
      </div>
    </nav>
  );
};
