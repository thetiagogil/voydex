import { TextLink } from "@/shared/components/text-link";
import type { ReactNode } from "react";

export type CodexCrumb = {
  /* Omitted on the last step, the page you're on. */
  href?: string;
  label: string;
};

type CodexHeadProps = {
  /* The path from the Codex page, as in "Games / Sword and Shield / Galar Pokédex". */
  trail: readonly CodexCrumb[];
  /* A last step that is more than a label, such as the Pokémon picker. */
  trailEnd?: ReactNode;
};

/*
 * The path at the top of a Codex page inside Pokémon or Games, back to its
 * list. The lists open on their own title: the bar's Codex menu moves
 * between them.
 */
export const CodexHead = ({ trail, trailEnd }: CodexHeadProps) => {
  return (
    <nav
      aria-label="Breadcrumb"
      className="text-14 text-ink-3 pt-2.5 font-bold"
    >
      <ol className="flex min-w-0 flex-wrap items-center gap-2">
        {trail.map((crumb, index) => (
          <li
            key={crumb.href ?? crumb.label}
            className="inline-flex items-center gap-2"
          >
            {index ? <span aria-hidden>/</span> : null}
            {crumb.href ? (
              <TextLink href={crumb.href} tone="quiet">
                {crumb.label}
              </TextLink>
            ) : (
              <span aria-current="page" className="text-ink">
                {crumb.label}
              </span>
            )}
          </li>
        ))}
        {trailEnd ? (
          <li className="inline-flex min-w-0 items-center gap-0.5">
            <span aria-hidden>/</span>
            {trailEnd}
          </li>
        ) : null}
      </ol>
    </nav>
  );
};
