"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { cn } from "@/shared/utils/cn";

const codexSections = [
  { href: appRoutes.codexPokemon, label: "Pokémon" },
  { href: appRoutes.codexGames, label: "Games" },
] as const;

/* The section's own list is the page; a page inside the section is "true". */
const getSectionCurrent = (pathname: string, href: string) => {
  if (pathname === href) {
    return "page";
  }

  return pathname.startsWith(`${href}/`) ? "true" : undefined;
};

/*
 * The Codex's two sections, the first step of every Codex crumb (v3
 * `codexSwitch`): an inset track whose current section takes the one
 * selected style, the soft tint of the context colour. The address says which
 * section you're in.
 */
export const CodexSectionSwitch = () => {
  const pathname = usePathname();

  return (
    <span
      role="group"
      aria-label="Codex sections"
      className="bg-surface-2 mx-0.5 inline-flex gap-1 rounded-full p-1"
    >
      {codexSections.map((section) => {
        const current = getSectionCurrent(pathname, section.href);
        const isCurrent = current !== undefined;

        return (
          <Link
            key={section.href}
            href={section.href}
            aria-current={current}
            className={cn(
              "text-13 inline-flex h-10 items-center rounded-full px-3.25 font-extrabold transition-colors sm:h-7.5",
              isCurrent
                ? "bg-select-soft text-select-ink"
                : "text-ink-2 hover:bg-hover hover:text-ink",
            )}
          >
            {section.label}
          </Link>
        );
      })}
    </span>
  );
};
