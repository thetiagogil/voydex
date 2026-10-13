import Link from "next/link";

import { CodexSectionSwitch } from "@/modules/codex/shared/components/codex-section-switch";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

export type CodexCrumb = {
  /* Omitted on the last step, the page you're on. */
  href?: string;
  label: string;
};

type CodexHeadProps = {
  /* The path after the section switch, as in "/ Sword and Shield / Galar Pokédex". */
  trail?: readonly CodexCrumb[];
};

/*
 * The head of every Codex page (v3 `codexHead`): the book and "Codex" as one
 * piece, the Pokémon | Games switch, then the path, which wraps as one piece.
 */
export const CodexHead = ({ trail = [] }: CodexHeadProps) => {
  return (
    <nav
      aria-label="Breadcrumb"
      className="text-14 text-ink-3 flex flex-wrap items-center gap-2 pt-2.5 font-bold"
    >
      <span className="inline-flex items-center gap-2">
        <AppIcon icon={appIcons.modules.codex} size={18} />
        Codex
      </span>
      <CodexSectionSwitch />
      {trail.length ? (
        <ol className="inline-flex min-w-0 flex-wrap items-center gap-2">
          {trail.map((crumb) => (
            <li
              key={crumb.href ?? crumb.label}
              className="inline-flex items-center gap-2"
            >
              <span aria-hidden>/</span>
              {crumb.href ? (
                <Link
                  href={crumb.href}
                  className="hover:text-ink rounded-xs transition-colors"
                >
                  {crumb.label}
                </Link>
              ) : (
                <span aria-current="page" className="text-ink">
                  {crumb.label}
                </span>
              )}
            </li>
          ))}
        </ol>
      ) : null}
    </nav>
  );
};
