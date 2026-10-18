"use client";

import { useEffect, useId, useRef, useState, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
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
 * A list's search and filter bar, folded away under a small wide tab on the
 * band's bottom edge, half on the band and half on the page. Pressed, the
 * band grows downward and the bar fades in once it has room; pressed again,
 * it folds back up. Once it has opened the fold stops clipping, so the bar's
 * shadow and focus rings show whole. "/" anywhere on the page opens it and
 * jumps to the search. Closed, the bar is inert, so the keyboard skips it.
 * Place it last in a `PageBand`.
 */
export const BandDrawer = ({
  activeCount = 0,
  children,
  defaultOpen = false,
}: BandDrawerProps) => {
  const [isOpen, setIsOpen] = useState(defaultOpen);
  /* Fully open, not moving: the fold no longer needs to clip. */
  const [isSettled, setIsSettled] = useState(defaultOpen);
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

  const handle = (
    <>
      <button
        type="button"
        aria-expanded={isOpen}
        aria-controls={contentId}
        aria-keyshortcuts="/"
        aria-label={
          isOpen ? "Hide search and filters" : "Show search and filters"
        }
        onClick={() => {
          shouldFocusSearch.current = !isOpen;
          setIsSettled(false);
          setIsOpen((open) => !open);
        }}
        className="bg-surface text-ink-2 hover:text-ink focus-visible:outline-focus grid h-5 w-12 place-items-center rounded-full shadow-[0_2px_6px_-2px_rgb(var(--shade)/0.35)] transition-colors outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
      >
        <AppIcon
          icon={appIcons.actions.expand}
          className={cn(
            "size-3.5 stroke-3 transition-transform duration-200 ease-out motion-reduce:transition-none",
            isOpen && "rotate-180",
          )}
        />
      </button>
      {!isOpen && activeCount ? (
        <span
          aria-hidden
          className="bg-action bubble pointer-events-none absolute -top-1 -right-1 size-2.5 rounded-full"
        />
      ) : null}
    </>
  );

  return (
    <>
      <div
        id={contentId}
        inert={!isOpen}
        onTransitionEnd={(event) => {
          if (
            event.target === event.currentTarget &&
            event.propertyName === "grid-template-rows"
          ) {
            setIsSettled(isOpen);
          }
        }}
        className={cn(
          "grid transition-[grid-template-rows] duration-200 ease-out motion-reduce:transition-none",
          isOpen ? "grid-rows-[1fr]" : "grid-rows-[0fr]",
        )}
      >
        <div
          className={cn("min-h-0", !(isOpen && isSettled) && "overflow-hidden")}
        >
          <div
            ref={contentRef}
            className={cn(
              "transition-opacity duration-200 ease-out motion-reduce:transition-none",
              isOpen ? "opacity-100 delay-100" : "opacity-0",
            )}
          >
            {children}
          </div>
        </div>
      </div>
      {/* On the band's bottom edge: the band is the positioned box. */}
      <span className="absolute bottom-0 left-1/2 z-10 -translate-x-1/2 translate-y-1/2">
        {handle}
      </span>
    </>
  );
};
