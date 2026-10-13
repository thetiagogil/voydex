"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";
import { readScrollEdges, type ScrollEdges } from "@/shared/utils/scroll-edges";

type ShelfArrowsProps = {
  /* Holds the sideways scroller, marked `data-slot="shelf-scroller"`. */
  children: ReactNode;
  className?: string;
  /* Names the arrows: "Earlier games" and "Later games". */
  earlierLabel: string;
  /*
   * The arrows at first paint, before the shelf is measured: where the shelf
   * opens. A shelf that opens at its end shows only Earlier; one that opens
   * in the middle shows both.
   */
  initialEdges: ScrollEdges;
  laterLabel: string;
};

/* The selector a shelf marks its scroller with. */
const SCROLLER_SELECTOR = "[data-slot=shelf-scroller]";
const FOCUSABLE_SELECTOR = "a[href], button:not(:disabled), [tabindex]";

const scrollBehavior = (): ScrollBehavior =>
  window.matchMedia("(prefers-reduced-motion: reduce)").matches
    ? "auto"
    : "smooth";

/*
 * v3's paging arrows for every sideways shelf (the game picker, Home's Plays):
 * Earlier and Later float over the shelf's ends on wider screens, each shown
 * while there is more that way. They show from the first paint as
 * `initialEdges` says, then follow the shelf as it scrolls, resizes and its
 * images load: an arrow goes only when the shelf touches its end, and both
 * go when everything fits. An arrow about to go while it has focus hands
 * focus to the item at that end, so focus never falls out.
 */
export const ShelfArrows = ({
  children,
  className,
  earlierLabel,
  initialEdges,
  laterLabel,
}: ShelfArrowsProps) => {
  const rootRef = useRef<HTMLDivElement>(null);
  const earlierRef = useRef<HTMLButtonElement>(null);
  const laterRef = useRef<HTMLButtonElement>(null);
  const [edges, setEdges] = useState(initialEdges);

  const getScroller = () =>
    rootRef.current?.querySelector<HTMLElement>(SCROLLER_SELECTOR) ?? null;

  useEffect(() => {
    const scroller =
      rootRef.current?.querySelector<HTMLElement>(SCROLLER_SELECTOR);

    if (!scroller) {
      return;
    }

    const readEdges = () => {
      const next = readScrollEdges(scroller);
      const focused = document.activeElement;
      const items =
        (!next.canScrollStart && focused === earlierRef.current) ||
        (!next.canScrollEnd && focused === laterRef.current)
          ? scroller.querySelectorAll<HTMLElement>(FOCUSABLE_SELECTOR)
          : null;
      const endItem =
        focused === earlierRef.current ? items?.[0] : items?.[items.length - 1];

      endItem?.focus({ preventScroll: true });
      setEdges((current) =>
        current.canScrollEnd === next.canScrollEnd &&
        current.canScrollStart === next.canScrollStart
          ? current
          : next,
      );
    };
    /*
     * The scroller's width follows the window. Its first observation lands
     * after the shelf placed itself and before the paint. Scroll events come
     * at most once a frame, and an unchanged reading renders nothing.
     */
    const resizeObserver = new ResizeObserver(readEdges);

    resizeObserver.observe(scroller);
    scroller.addEventListener("scroll", readEdges, { passive: true });
    // A cover without a known shape grows the shelf as it loads.
    scroller.addEventListener("load", readEdges, true);

    return () => {
      resizeObserver.disconnect();
      scroller.removeEventListener("scroll", readEdges);
      scroller.removeEventListener("load", readEdges, true);
    };
  }, []);

  const page = (direction: -1 | 1) => {
    const scroller = getScroller();

    scroller?.scrollBy({
      behavior: scrollBehavior(),
      left: direction * scroller.clientWidth * 0.7,
    });
  };

  // v3 .hh-arr: the quiet button's lip plus a float shadow, pressing onto it.
  const arrowClassName =
    "absolute top-[calc(50%+12px)] z-10 size-11.5 -translate-y-1/2 rounded-full text-ink-2 shadow-[var(--shadow-quiet-value),var(--shadow-float-value)] hover:text-ink active:not-aria-[haspopup]:translate-y-[calc(-50%+3px)] active:not-aria-[haspopup]:shadow-float max-sm:hidden";

  return (
    <div ref={rootRef} className={cn("relative", className)}>
      {edges.canScrollStart ? (
        <Button
          ref={earlierRef}
          type="button"
          variant="outline"
          size="icon"
          aria-label={earlierLabel}
          onClick={() => page(-1)}
          className={cn(arrowClassName, "left-5")}
        >
          <AppIcon icon={appIcons.actions.previous} size="lg" />
        </Button>
      ) : null}
      {children}
      {edges.canScrollEnd ? (
        <Button
          ref={laterRef}
          type="button"
          variant="outline"
          size="icon"
          aria-label={laterLabel}
          onClick={() => page(1)}
          className={cn(arrowClassName, "right-5")}
        >
          <AppIcon icon={appIcons.actions.next} size="lg" />
        </Button>
      ) : null}
    </div>
  );
};
