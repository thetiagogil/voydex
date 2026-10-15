"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import {
  codexLink,
  isCurrentLink,
  type AppNavigationLink,
} from "@/features/app-shell/utils/app-navigation";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
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
const SteadyLabel = ({ children }: { children: string }) => (
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
    <nav aria-label={ariaLabel} className={cn("items-center gap-1", className)}>
      {links.map((link) => {
        const isCurrent = isCurrentLink(pathname, link);

        return (
          <Link
            key={link.href}
            href={link.href}
            aria-current={isCurrent ? "page" : undefined}
            className={cn(
              "text-14 hover:text-ink inline-flex h-9 items-center rounded-full px-3 font-semibold whitespace-nowrap text-(color:--bar-ink-2) hover:bg-(--bar-hover)",
              isCurrent &&
                "bg-(--bar-current) font-extrabold text-(color:--bar-current-ink) hover:bg-(--bar-current) hover:text-(color:--bar-current-ink)",
            )}
          >
            <SteadyLabel>{link.label}</SteadyLabel>
          </Link>
        );
      })}
    </nav>
  );
};

/* The Codex beside your account (v3 `.codex-link`): bold while you're in it. */
export const CodexUtilityLink = ({ className }: { className?: string }) => {
  const pathname = usePathname();
  const isCurrent = isCurrentLink(pathname, codexLink);

  return (
    <Link
      href={codexLink.href}
      aria-current={isCurrent ? "page" : undefined}
      className={cn(
        "text-14 hover:text-ink inline-flex h-10 items-center gap-1.5 rounded-full px-2.5 font-semibold text-(color:--bar-ink-2) hover:bg-(--bar-hover)",
        isCurrent && "text-ink font-extrabold",
        className,
      )}
    >
      <AppIcon icon={appIcons.modules.codex} className="size-4.5" />
      <SteadyLabel>{codexLink.label}</SteadyLabel>
    </Link>
  );
};
