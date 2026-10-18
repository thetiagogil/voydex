"use client";

import { useEffect, useId, useRef, useState, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type BandDrawerProps = {
  /* How many filters are set: a dot on the handle while it is closed. */
  activeCount?: number;
  /* What opens, such as the list's search and filter bar. */
  children: ReactNode;
  /* Opens it on arrival: a search or a filter is already narrowing the list. */
  defaultOpen?: boolean;
};

const isTyping = (target: EventTarget | null) =>
  target instanceof HTMLElement &&
  (target.isContentEditable ||
    ["INPUT", "SELECT", "TEXTAREA"].includes(target.tagName));

/*
 * The bottom of a page's band, folded: a round handle centred under the head.
 * Pressed, the band grows downward and its contents (a list's search and
 * filter bar) fade in once it has room; pressed again, it folds back up. "/"
 * anywhere on the page opens it and jumps to the search. Closed, its
 * contents are inert, so the keyboard skips them. Place it last in a
 * `PageBand`.
 */
export const BandDrawer = ({
  activeCount = 0,
  children,
  defaultOpen = false,
}: BandDrawerProps) => {
  const [isOpen, setIsOpen] = useState(defaultOpen);
  const contentId = useId();
  const contentRef = useRef<HTMLDivElement>(null);
  const shouldFocusSearch = useRef(false);

  useEffect(() => {
    const onKeyDown = (event: KeyboardEvent) => {
      if (
        event.key !== "/" ||
        event.metaKey ||
        event.ctrlKey ||
        event.altKey ||
        isTyping(event.target)
      ) {
        return;
      }

      event.preventDefault();
      shouldFocusSearch.current = true;
      setIsOpen(true);
      contentRef.current
        ?.querySelector<HTMLInputElement>("input")
        ?.focus({ preventScroll: true });
    };

    window.addEventListener("keydown", onKeyDown);

    return () => window.removeEventListener("keydown", onKeyDown);
  }, []);

  useEffect(() => {
    if (isOpen && shouldFocusSearch.current) {
      shouldFocusSearch.current = false;
      contentRef.current
        ?.querySelector<HTMLInputElement>("input")
        ?.focus({ preventScroll: true });
    }
  }, [isOpen]);

  return (
    <>
      <div
        id={contentId}
        inert={!isOpen}
        className={cn(
          "grid transition-[grid-template-rows] duration-300 ease-out motion-reduce:transition-none",
          isOpen ? "grid-rows-[1fr]" : "grid-rows-[0fr]",
        )}
      >
        {/* Room inside the fold, so the bar's shadow and focus rings aren't cut. */}
        <div className="-mx-3 min-h-0 overflow-hidden px-3 pb-1">
          <div
            ref={contentRef}
            className={cn(
              "transition-opacity duration-200 ease-out motion-reduce:transition-none",
              isOpen ? "opacity-100 delay-150" : "opacity-0",
            )}
          >
            {children}
          </div>
        </div>
      </div>
      <div className="-mb-3 flex justify-center pt-3 sm:-mb-5">
        <span className="relative">
          <Button
            type="button"
            variant="secondary"
            size="icon-sm"
            aria-expanded={isOpen}
            aria-controls={contentId}
            aria-keyshortcuts="/"
            aria-label={
              isOpen ? "Hide search and filters" : "Show search and filters"
            }
            onClick={() => {
              shouldFocusSearch.current = !isOpen;
              setIsOpen((open) => !open);
            }}
          >
            <AppIcon
              icon={appIcons.actions.expand}
              className={cn(
                "transition-transform duration-300 ease-out motion-reduce:transition-none",
                isOpen && "rotate-180",
              )}
            />
          </Button>
          {!isOpen && activeCount ? (
            <span
              aria-hidden
              className="bg-action bubble pointer-events-none absolute -top-0.5 -right-0.5 size-3 rounded-full"
            />
          ) : null}
        </span>
      </div>
    </>
  );
};
