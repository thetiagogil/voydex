"use client";

import { useClaims, useLogout } from "@/hooks/useAuth";
import {
  PAGE_CONTAINER_WIDTH,
  PageContainerWidth,
} from "@/lib/constants/layout";
import { toastPromise } from "@/lib/utils/toast-promise";
import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";
import { Logo } from "../shared/logo";
import { PageNavigationMenu } from "./page-navigation-menu";
import { PageNavigationProfile } from "./page-navigation-profile";

interface PageNavigationProps {
  width?: PageContainerWidth;
}

export const PageNavigation = ({ width = "xl" }: PageNavigationProps) => {
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
    { name: "Adventures", href: "/adventures" },
    { name: "Plays", href: "/plays" },
    { name: "Collection", href: "/collection" },
  ];

  const detectedPage = links.find((link) =>
    link.href === "/" ? pathname === "/" : pathname.startsWith(link.href),
  )?.name;

  return (
    <nav>
      <div
        className={`${PAGE_CONTAINER_WIDTH[width]} mx-auto flex h-16 items-center justify-between px-4 sm:px-8`}
      >
        <div>
          <Link href="/" className="flex-shrink-0">
            <Logo showText size="sm" />
          </Link>
        </div>

        {!isFetching && isAuth && (
          <div className="hidden items-center gap-4 md:flex">
            {links.map((link) => (
              <Link
                key={link.name}
                href={link.href}
                className={`font-medium transition-colors ${
                  detectedPage === link.name
                    ? "text-primary"
                    : "hover:text-primary/80"
                }`}
              >
                {link.name}
              </Link>
            ))}
          </div>
        )}

        <div className="flex items-center gap-2">
          <PageNavigationProfile
            isFetching={isFetching}
            isAuth={isAuth}
            handleLogout={handleLogout}
          />
          <span className="md:hidden">
            <PageNavigationMenu links={links} />
          </span>
        </div>
      </div>
    </nav>
  );
};
