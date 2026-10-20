"use client";

import { useEffect, useState, type MouseEvent, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

export type SectionIndexLink = {
  /* A quiet line under the name, such as a row of what the section holds. */
  detail?: ReactNode;
  href: `#${string}`;
  label: string;
  /* A quiet word after the name, such as "9 moments". */
  meta?: ReactNode;
};

export type SectionIndexGroup = {
  /* A small heading over its links, such as a year; none for a flat list. */
  label?: string;
  sections: SectionIndexLink[];
};

const scrollBehavior = (): ScrollBehavior =>
  window.matchMedia("(prefers-reduced-motion: reduce)").matches
    ? "auto"
    : "smooth";

/* Room under the docked bar where a section counts as the one you're at. */
const readingLine = () =>
  (Number.parseFloat(
    getComputedStyle(document.documentElement).getPropertyValue(
      "--play-dock-offset",
    ),
  ) || 0) + 120;

/*
 * The section you're reading: the last one whose top has passed the reading
 * line under the docked bar, or the first while none has.
 */
const useCurrentSection = (hrefs: string[]) => {
  const [current, setCurrent] = useState<string | null>(null);
  const key = hrefs.join(" ");

  useEffect(() => {
    const targets = key
      .split(" ")
      .filter(Boolean)
      .map((href) => document.getElementById(href.slice(1)))
      .filter((target): target is HTMLElement => target !== null);
    let frame = 0;

    const update = () => {
      frame = 0;
      const line = readingLine();
      const passed = targets.filter(
        (target) => target.getBoundingClientRect().top <= line,
      );

      setCurrent(`#${(passed.at(-1) ?? targets[0])?.id ?? ""}` as `#${string}`);
    };
    const schedule = () => {
      if (!frame) {
        frame = window.requestAnimationFrame(update);
      }
    };

    schedule();
    window.addEventListener("scroll", schedule, { passive: true });
    window.addEventListener("resize", schedule);

    return () => {
      window.cancelAnimationFrame(frame);
      window.removeEventListener("scroll", schedule);
      window.removeEventListener("resize", schedule);
    };
  }, [key]);

  return current;
};

/*
 * The side index of a long page on wide screens (Play settings' cards,
 * History's months): it follows the scroll, marks the section you're reading
 * with the selected tint, and a pick glides to its section instead of
 * jumping (unless you ask for less motion) while still updating the
 * address, as a plain link would. A group's label is a Fredoka heading (a
 * year); a link can carry a `meta` word and a `detail` line. Hidden below
 * 1024px, where the page is one column.
 */
export const SectionIndexNav = ({
  className,
  groups,
  label,
  placement = "column",
}: {
  className?: string;
  groups: SectionIndexGroup[];
  /* Names the index for screen readers, such as "History months". */
  label: string;
  /*
   * `column`: its own sticky column (Play settings). `inline`: part of a
   * column that sticks as a whole (History's aside).
   */
  placement?: "column" | "inline";
}) => {
  const current = useCurrentSection(
    groups.flatMap((group) => group.sections.map((section) => section.href)),
  );

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
      aria-label={label}
      className={cn(
        "hidden lg:block",
        placement === "column" ? "sticky-column" : "min-w-0",
        className,
      )}
    >
      <div className="grid gap-5">
        {groups.map((group, index) => (
          <div key={group.label ?? index} className="grid gap-1.5">
            {group.label ? (
              <p className="title-card text-ink px-3.5 pb-1 tabular-nums">
                {group.label}
              </p>
            ) : null}
            <ul className="grid gap-1">
              {group.sections.map((section) => {
                const isCurrent = section.href === current;

                return (
                  <li key={section.href}>
                    <a
                      href={section.href}
                      aria-current={isCurrent ? "location" : undefined}
                      onClick={(event) => glideTo(event, section.href)}
                      className={cn(
                        "focus-ring-inset grid min-h-10 content-center gap-1.5 rounded-lg px-3.5 py-2.5 transition-colors",
                        isCurrent
                          ? "bg-select-soft text-select-ink"
                          : "text-ink-2 hover:bg-hover hover:text-ink",
                      )}
                    >
                      <span className="flex items-baseline justify-between gap-3">
                        <span className="text-15 truncate font-extrabold">
                          {section.label}
                        </span>
                        {section.meta === undefined ? null : (
                          <span className="text-13 shrink-0 font-semibold tabular-nums opacity-80">
                            {section.meta}
                          </span>
                        )}
                      </span>
                      {section.detail}
                    </a>
                  </li>
                );
              })}
            </ul>
          </div>
        ))}
      </div>
    </nav>
  );
};
