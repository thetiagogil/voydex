"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  isCurrentLink,
  type AppNavigationLink,
} from "@/features/app-shell/utils/app-navigation";
import { cn } from "@/shared/utils/cn";

type NavigationLinksProps = {
  ariaLabel: string;
  className?: string;
  links: readonly AppNavigationLink[];
};

/*
 * A link's label, as wide as its bold self whether or not it is current, so
 * moving between sections never nudges the bar's other links.
 */
export const SteadyLabel = ({ children }: { children: string }) => (
  <span className="grid justify-items-center">
    <span className="col-start-1 row-start-1">{children}</span>
    <span
      aria-hidden
      className="invisible col-start-1 row-start-1 font-extrabold"
    >
      {children}
    </span>
  </span>
);

/*
 * The bar's sections (v3 `.links`): quiet words; the current one sits on the
 * surface, or on the game's strong shade when the bar is on a tinted band.
 * The current mark swaps at once, never fades, so a change of section
 * doesn't flicker between the two links.
 */
export const NavigationLinks = ({
  ariaLabel,
  className,
  links,
}: NavigationLinksProps) => {
  const pathname = usePathname();

  return (
    /*
     * The sections on one white island, a sticker like the rest of the
     * app's pieces, so the bar stands apart from any page under it.
     */
    <nav
      aria-label={ariaLabel}
      className={cn(
        "bubble items-center gap-0.5 rounded-full bg-(--bar-control) p-1",
        className,
      )}
    >
      {links.map((link) => {
        const isCurrent = isCurrentLink(pathname, link);

        return (
          <Link
            key={link.href}
            href={link.href}
            aria-current={isCurrent ? "page" : undefined}
            className={cn(
              "text-14 hover:text-ink inline-flex h-9 items-center rounded-full px-3 font-semibold whitespace-nowrap text-(--bar-ink-2) hover:bg-(--bar-hover)",
              isCurrent &&
                "bg-(--bar-current) font-extrabold text-(--bar-current-ink) hover:bg-(--bar-current) hover:text-(--bar-current-ink)",
            )}
          >
            <SteadyLabel>{link.label}</SteadyLabel>
          </Link>
        );
      })}
    </nav>
  );
};
