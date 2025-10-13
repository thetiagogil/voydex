"use client";

import { ChevronRight, Home } from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { Fragment } from "react";

interface BreadcrumbItem {
  label: string;
  href: string;
  current?: boolean;
}

export function PageBreadcrumbsNavigation() {
  const pathname = usePathname();

  const getBreadcrumbs = (): BreadcrumbItem[] => {
    const segments = pathname.split("/").filter(Boolean);
    const breadcrumbs: BreadcrumbItem[] = [];

    // Always start with Dashboard if we're in protected routes
    if (
      segments.includes("protected") ||
      pathname.startsWith("/dashboard") ||
      pathname.startsWith("/gen")
    ) {
      breadcrumbs.push({ label: "Dashboard", href: "/dashboard" });
    }

    // Handle generation routes
    if (segments.includes("gen")) {
      const genIndex = segments.indexOf("gen");
      const genSlug = segments[genIndex + 1];

      if (genSlug) {
        // Convert numeric gen to Roman numerals: 1 to "Gen I", 2 to "Gen II", etc.
        const genNumber = parseInt(genSlug);
        const genRoman =
          ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"][
            genNumber - 1
          ] || genSlug;

        breadcrumbs.push({
          label: `Gen ${genRoman}`,
          href: `/gen/${genSlug}`,
        });

        // Handle game routes
        if (segments.includes("game")) {
          const gameIndex = segments.indexOf("game");
          const gameSlug = segments[gameIndex + 1];

          if (gameSlug) {
            // Capitalize game names: red -> Red, soul-silver -> Soul Silver
            const gameName = gameSlug
              .split("-")
              .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
              .join(" ");

            breadcrumbs.push({
              label: gameName,
              href: `/gen/${genSlug}/game/${gameSlug}`,
            });

            // Handle play routes
            if (segments.includes("play")) {
              const playIndex = segments.indexOf("play");
              const playId = segments[playIndex + 1];

              if (playId && playId !== "create") {
                breadcrumbs.push({
                  label: "My Playthrough", // TODO: Get real play title from API
                  href: `/gen/${genSlug}/game/${gameSlug}/play/${playId}`,
                  current: segments.length === playIndex + 2,
                });

                // Add sub-routes (team, progress, etc.)
                const subRoute = segments[playIndex + 2];
                if (subRoute) {
                  const subRouteNames: Record<string, string> = {
                    team: "Team Builder",
                    progress: "Progress",
                    pokedex: "Pokédex",
                  };

                  breadcrumbs.push({
                    label:
                      subRouteNames[subRoute] ||
                      subRoute.charAt(0).toUpperCase() + subRoute.slice(1),
                    href: pathname,
                    current: true,
                  });
                }
              } else if (playId === "create") {
                breadcrumbs.push({
                  label: "New Playthrough",
                  href: pathname,
                  current: true,
                });
              }
            }
          }
        }
      }
    }

    // Handle other routes
    if (segments.includes("me")) {
      if (segments.includes("plays")) {
        breadcrumbs.push({
          label: "My Plays",
          href: "/me/plays",
        });

        const playId = segments[segments.indexOf("plays") + 1];
        if (playId) {
          breadcrumbs.push({
            label: "Play Details",
            href: pathname,
            current: true,
          });
        }
      } else {
        breadcrumbs.push({
          label: "Profile",
          href: "/me",
          current: pathname === "/me",
        });
      }
    }

    // Mark the last item as current if not already marked
    if (breadcrumbs.length > 0 && !breadcrumbs.some((b) => b.current)) {
      breadcrumbs[breadcrumbs.length - 1].current = true;
    }

    return breadcrumbs;
  };

  const breadcrumbs = getBreadcrumbs();

  if (breadcrumbs.length <= 1) {
    return null; // Don't show breadcrumbs if there's only one or no items
  }

  return (
    <nav
      className="flex items-center space-x-1 text-sm text-muted-foreground mb-4"
      aria-label="Breadcrumb"
    >
      <Home className="h-4 w-4" />
      {breadcrumbs.map((item, index) => (
        <Fragment key={item.href}>
          {index > 0 && <ChevronRight className="h-4 w-4 mx-1" />}
          {item.current ? (
            <span className="font-medium text-foreground" aria-current="page">
              {item.label}
            </span>
          ) : (
            <Link
              href={item.href}
              className="hover:text-foreground transition-colors"
            >
              {item.label}
            </Link>
          )}
        </Fragment>
      ))}
    </nav>
  );
}
