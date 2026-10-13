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

/* The bar's sections (v3 `.links`): quiet words; the current one sits on the surface. */
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
              "text-14 text-ink-2 hover:bg-surface-2 hover:text-ink inline-flex h-9 items-center rounded-full px-3 font-semibold whitespace-nowrap transition-colors",
              isCurrent &&
                "bg-surface text-ink hover:bg-surface font-extrabold",
            )}
          >
            {link.label}
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
        "text-14 text-ink-2 hover:text-ink inline-flex h-10 items-center gap-1.5 rounded-full px-2 font-semibold transition-colors",
        isCurrent && "text-ink font-extrabold",
        className,
      )}
    >
      <AppIcon icon={appIcons.modules.codex} className="size-4.5" />
      {codexLink.label}
    </Link>
  );
};
