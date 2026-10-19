import { TextLink } from "@/shared/components/text-link";
import type { ReactNode } from "react";

/*
 * A last step that opens a picker (the Pokémon's or the game's name): the
 * page's name in ink, a quiet pill under the pointer, its chevron after it.
 * 40px to tap on phones, 32px from 768px. The heights are forced so a
 * select trigger's own field heights never win.
 */
export const codexHeadPickerTriggerClassName =
  "text-14 text-ink hover:text-ink h-10! max-w-full gap-1 rounded-full px-2.5 font-extrabold md:h-8!";

export type CodexCrumb = {
  /* Omitted on the last step, the page you're on. */
  href?: string;
  label: string;
};

type CodexHeadProps = {
  /* The path from the Codex page, as in "Games / Sword and Shield / Galar Pokédex". */
  trail: readonly CodexCrumb[];
  /* A last step that is more than a label, such as the Pokémon or game picker. */
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
