"use client";

import type { MouseEvent } from "react";

import { Link } from "@/shared/components/link";
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
 * A link to a part of the page you are on (`/#install` on the front page):
 * the page glides down to it instead of jumping (it jumps for anyone who
 * asked for less motion). The address takes the part's name, and keyboard
 * focus moves there with it. Anything else is left to the link.
 */
const glideToPart = (
  event: MouseEvent<HTMLAnchorElement>,
  pathname: string,
  href: string,
) => {
  const [path, part] = href.split("#");
  const target =
    part && path === pathname ? document.getElementById(part) : null;

  if (!target) return;

  event.preventDefault();
  target.scrollIntoView({
    behavior: window.matchMedia("(prefers-reduced-motion: reduce)").matches
      ? "auto"
      : "smooth",
    block: "start",
  });
  window.history.pushState(null, "", `#${part}`);
  target.focus({ preventScroll: true });
};

/*
 * The bar's sections (v3 `.links`), inside the top bar's pill. The current one is a small sticker in the selected tint, as every pick is.
 * It swaps at once, never fades, so a change of section doesn't flicker
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
            onClick={(event) => glideToPart(event, pathname, link.href)}
            className={getBarLinkClassName(isCurrent)}
          >
            <SteadyLabel>{link.label}</SteadyLabel>
          </Link>
        );
      })}
    </nav>
  );
};
