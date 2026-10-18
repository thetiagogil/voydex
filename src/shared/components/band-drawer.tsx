"use client";

import { useEffect, useId, useRef, useState, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

/* How long the fold takes, so it stops clipping once it has opened. */
const FOLD_MS = 200;

const isTyping = (target: EventTarget | null) =>
  target instanceof HTMLElement &&
  (target.isContentEditable ||
    ["INPUT", "SELECT", "TEXTAREA"].includes(target.tagName));

/* "/" anywhere on the page (outside a field) opens the fold. */
export const useSlashToOpen = (onOpen: () => void) => {
  const onOpenRef = useRef(onOpen);

  useEffect(() => {
    onOpenRef.current = onOpen;
  });

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
      onOpenRef.current();
    };

    window.addEventListener("keydown", onKeyDown);

    return () => window.removeEventListener("keydown", onKeyDown);
  }, []);
};

/*
 * What folds: it grows open, then its contents fade in; it folds back the
 * other way. Opening moves focus to its search. Once fully open it stops
 * clipping, so a bar's shadow and focus rings show whole. Closed, its
 * contents are inert, so the keyboard skips them.
 */
export const FoldPanel = ({
  children,
  id,
  open,
}: {
  children: ReactNode;
  id: string;
  open: boolean;
}) => {
  const [isSettled, setIsSettled] = useState(open);
  const contentRef = useRef<HTMLDivElement>(null);
  const wasOpen = useRef(open);

  useEffect(() => {
    if (open && !wasOpen.current) {
      contentRef.current
        ?.querySelector<HTMLInputElement>("input")
        ?.focus({ preventScroll: true });
    }

    wasOpen.current = open;

    /* Clip again at once on closing; stop clipping once fully open. */
    const timer = window.setTimeout(
      () => setIsSettled(open),
      open ? FOLD_MS : 0,
    );

    return () => window.clearTimeout(timer);
  }, [open]);

  return (
    <div
      id={id}
      inert={!open}
      className={cn(
        "grid transition-[grid-template-rows] duration-200 ease-out motion-reduce:transition-none",
        open ? "grid-rows-[1fr]" : "grid-rows-[0fr]",
      )}
    >
      <div className={cn("min-h-0", !(open && isSettled) && "overflow-hidden")}>
        <div
          ref={contentRef}
          className={cn(
            "transition-opacity duration-200 ease-out motion-reduce:transition-none",
            open ? "opacity-100 delay-100" : "opacity-0",
          )}
        >
          {children}
        </div>
      </div>
    </div>
  );
};

const foldLabel = (open: boolean) =>
  open ? "Hide search and filters" : "Show search and filters";

/* A dot on a fold's button while it is closed with a filter on. */
const FilterDot = () => (
  <span
    aria-hidden
    className="bg-action bubble pointer-events-none absolute -top-1 -right-1 size-2.5 rounded-full"
  />
);

/*
 * A page with no band folds its bar from its title row: a round search
 * button at the row's end, the bar opening under the title.
 */
export const FoldToggle = ({
  activeCount = 0,
  controls,
  onOpenChange,
  open,
}: {
  activeCount?: number;
  controls: string;
  onOpenChange: (open: boolean) => void;
  open: boolean;
}) => (
  <span className="relative shrink-0">
    <Button
      type="button"
      variant={open ? "secondary" : "tint"}
      size="icon-sm"
      aria-expanded={open}
      aria-controls={controls}
      aria-keyshortcuts="/"
      aria-label={foldLabel(open)}
      onClick={() => onOpenChange(!open)}
    >
      <AppIcon icon={open ? appIcons.actions.close : appIcons.actions.search} />
    </Button>
    {!open && activeCount ? <FilterDot /> : null}
  </span>
);

type BandDrawerProps = {
  /* How many filters are set: a dot on the handle while it is closed. */
  activeCount?: number;
  /* What opens, such as the list's search and filter bar. */
  children: ReactNode;
  /* Opens it on arrival: a search or a filter is already narrowing the list. */
  defaultOpen?: boolean;
};

/*
 * A list's search and filter bar, folded away under a small wide tab on the
 * band's bottom edge, half on the band and half on the page. Pressed, the
 * band grows downward and the bar fades in once it has room; pressed again,
 * it folds back up. "/" anywhere on the page opens it and jumps to the
 * search. Place it last in a `PageBand`.
 */
export const BandDrawer = ({
  activeCount = 0,
  children,
  defaultOpen = false,
}: BandDrawerProps) => {
  const [isOpen, setIsOpen] = useState(defaultOpen);
  const contentId = useId();

  useSlashToOpen(() => {
    setIsOpen(true);
    /* Already open: jump to the search (closed, the panel focuses it as it opens). */
    document
      .getElementById(contentId)
      ?.querySelector<HTMLInputElement>("input")
      ?.focus({ preventScroll: true });
  });

  return (
    <>
      <FoldPanel id={contentId} open={isOpen}>
        {children}
      </FoldPanel>
      {/* On the band's bottom edge: the band is the positioned box. */}
      <span className="absolute bottom-0 left-1/2 z-10 -translate-x-1/2 translate-y-1/2">
        <button
          type="button"
          aria-expanded={isOpen}
          aria-controls={contentId}
          aria-keyshortcuts="/"
          aria-label={foldLabel(isOpen)}
          onClick={() => setIsOpen((open) => !open)}
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
        {!isOpen && activeCount ? <FilterDot /> : null}
      </span>
    </>
  );
};
