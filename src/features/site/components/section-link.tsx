"use client";

import type { ReactNode } from "react";

type SectionLinkProps = {
  children: ReactNode;
  className?: string;
  /* The id of the part of this page it goes to. */
  section: string;
};

/*
 * A link to a part of the page it is on: the page glides down to it
 * instead of jumping (it jumps for anyone who asked for less motion). The
 * address takes the part's name, and keyboard focus moves there with it.
 */
export const SectionLink = ({
  children,
  className,
  section,
}: SectionLinkProps) => (
  <a
    href={`#${section}`}
    className={className}
    onClick={(event) => {
      const target = document.getElementById(section);

      if (!target) return;

      event.preventDefault();
      target.scrollIntoView({
        behavior: window.matchMedia("(prefers-reduced-motion: reduce)").matches
          ? "auto"
          : "smooth",
        block: "start",
      });
      window.history.pushState(null, "", `#${section}`);
      target.focus({ preventScroll: true });
    }}
  >
    {children}
  </a>
);
