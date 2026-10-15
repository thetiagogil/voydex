"use client";

import type { MouseEvent } from "react";

const scrollBehavior = (): ScrollBehavior =>
  window.matchMedia("(prefers-reduced-motion: reduce)").matches
    ? "auto"
    : "smooth";

/*
 * The side list of Settings' cards on wide screens. A pick glides to its
 * card instead of jumping (unless you ask for less motion) and still updates
 * the address, as a plain link would.
 */
export const SettingsSectionNav = ({
  sections,
}: {
  sections: { href: `#${string}`; label: string }[];
}) => {
  const glideTo = (
    event: MouseEvent<HTMLAnchorElement>,
    href: `#${string}`,
  ) => {
    const target = document.getElementById(href.slice(1));

    if (!target || event.metaKey || event.ctrlKey || event.shiftKey) {
      return;
    }

    event.preventDefault();
    target.scrollIntoView({ behavior: scrollBehavior(), block: "start" });
    window.history.pushState(null, "", href);
  };

  return (
    <nav
      aria-label="Settings sections"
      className="sticky-column hidden lg:block"
    >
      <ul className="grid gap-1">
        {sections.map((section) => (
          <li key={section.href}>
            <a
              href={section.href}
              onClick={(event) => glideTo(event, section.href)}
              className="text-ink-2 text-14 hover:bg-hover hover:text-ink focus-visible:outline-focus flex min-h-10 items-center rounded-md px-3.5 font-bold focus-visible:outline-3 focus-visible:outline-solid"
            >
              {section.label}
            </a>
          </li>
        ))}
      </ul>
    </nav>
  );
};
