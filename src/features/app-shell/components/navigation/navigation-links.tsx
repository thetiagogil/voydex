"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  isCurrentLink,
  type AppNavigationLink,
} from "@/features/app-shell/utils/app-navigation";
import { getBarLinkClassName, SteadyLabel } from "@/shared/components/bar-link";
import { cn } from "@/shared/utils/cn";

type NavigationLinksProps = {
  ariaLabel: string;
  className?: string;
  links: readonly AppNavigationLink[];
};

/*
 * The bar's sections (v3 `.links`): quiet words straight on the page's band,
 * with no surface of their own, so the bar never pulls focus from the page.
 * The current one is a small sticker in the selected tint, as every pick
 * is. It swaps at once, never fades, so a change of section doesn't flicker
 * between the two links.
 */
export const NavigationLinks = ({
  ariaLabel,
  className,
  links,
}: NavigationLinksProps) => {
  const pathname = usePathname();

  return (
    <nav aria-label={ariaLabel} className={cn("items-center gap-1", className)}>
      {links.map((link) => {
        const isCurrent = isCurrentLink(pathname, link);

        return (
          <Link
            key={link.href}
            href={link.href}
            aria-current={isCurrent ? "page" : undefined}
            className={getBarLinkClassName(isCurrent)}
          >
            <SteadyLabel>{link.label}</SteadyLabel>
          </Link>
        );
      })}
    </nav>
  );
};
