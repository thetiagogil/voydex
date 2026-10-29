"use client";

import { useEffect, useState, type MouseEvent } from "react";

import { cn } from "@/shared/utils/cn";
import { getScrollBehavior } from "@/shared/utils/motion";

type SettingsSection = { href: `#${string}`; label: string };

/* Room under the docked bar where a card counts as the one you're at. */
const readingLine = () =>
  (Number.parseFloat(
    getComputedStyle(document.documentElement).getPropertyValue(
      "--play-dock-offset",
    ),
  ) || 0) + 120;

/*
 * The card you're reading: the last one whose top has passed the reading
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

      setCurrent(`#${(passed.at(-1) ?? targets[0])?.id ?? ""}`);
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
 * The side list of Settings' cards on wide screens. It follows the scroll and
 * marks the card you're reading with the selected tint; a pick glides to its
 * card instead of jumping (unless you ask for less motion) and still updates
 * the address, as a plain link would.
 */
export const SettingsSectionNav = ({
  sections,
}: {
  sections: SettingsSection[];
}) => {
  const current = useCurrentSection(sections.map((section) => section.href));

  const glideTo = (
    event: MouseEvent<HTMLAnchorElement>,
    href: `#${string}`,
  ) => {
    const target = document.getElementById(href.slice(1));

    if (!target || event.metaKey || event.ctrlKey || event.shiftKey) {
      return;
    }

    event.preventDefault();
    target.scrollIntoView({ behavior: getScrollBehavior(), block: "start" });
    window.history.pushState(null, "", href);
  };

  return (
    <nav
      aria-label="Settings sections"
      className="sticky-column hidden lg:block"
    >
      <ul className="grid gap-1">
        {sections.map((section) => {
          const isCurrent = section.href === current;

          return (
            <li key={section.href}>
              <a
                href={section.href}
                aria-current={isCurrent ? "location" : undefined}
                onClick={(event) => glideTo(event, section.href)}
                className={cn(
                  "text-15 focus-ring-inset flex min-h-10 items-center rounded-lg px-3.5 py-2.5 font-extrabold transition-colors",
                  isCurrent
                    ? "bg-select-soft text-select-ink"
                    : "text-ink-2 hover:bg-hover hover:text-ink",
                )}
              >
                {section.label}
              </a>
            </li>
          );
        })}
      </ul>
    </nav>
  );
};
