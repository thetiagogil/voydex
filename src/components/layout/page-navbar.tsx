"use client";

import { useClaims, useLogout } from "@/features/auth/hooks/useAuth";
import { toastPromise } from "@/lib/utils/toast-promise";
import {
  PAGE_CONTAINER_WIDTH,
  PageContainerWidth,
} from "@/shared/constants/layout";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { Logo } from "../shared/logo";
import { PageNavbarMenu } from "./page-navbar-menu";
import { PageNavbarProfile } from "./page-navbar-profile";

interface PageNavbarProps {
  width?: PageContainerWidth;
}

export const PageNavbar = ({ width = "xl" }: PageNavbarProps) => {
  const pathname = usePathname();
  const router = useRouter();
  const { data: isAuth, isFetching } = useClaims();
  const { mutateAsync: logout } = useLogout();

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
    { name: "Dashboard", href: "/dashboard" },
    { name: "Plays", href: "/plays" },
    { name: "Collection", href: "/collection" },
  ];

  const detectedPage = links.find((link) =>
    link.href === "/" ? pathname === "/" : pathname.startsWith(link.href),
  )?.name;

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
            isAuth &&
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
          {!isFetching && isAuth && (
            <span className="md:hidden">
              <PageNavbarMenu />
            </span>
          )}
          <PageNavbarProfile
            isFetching={isFetching}
            isAuth={isAuth}
            handleLogout={handleLogout}
          />
        </div>
      </div>
    </nav>
  );
};
