"use client";

import { mergeProps } from "@base-ui/react/merge-props";
import { useRender } from "@base-ui/react/use-render";
import { useEffect, useRef, useState, type ComponentProps } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";
import { readScrollEdges, type ScrollEdges } from "@/shared/utils/scroll-edges";

type CarouselProps = useRender.ComponentProps<"div"> & {
  /*
   * The spacing between and around the items: `compact` for the game picker's
   * covers, `roomy` for Home's Plays, which carry a sticker each.
   */
  density?: "compact" | "roomy";
  /* Names the arrows, such as "Earlier games" and "Later games". */
  earlierLabel: string;
  /* Fades both ends of the row, as the game picker does. */
  fadeEdges?: boolean;
  /*
   * The arrows at first paint, before the row is measured: where it opens. A
   * row that opens at its end shows only Earlier; one that opens in the
   * middle shows both.
   */
  initialEdges: ScrollEdges;
  laterLabel: string;
  /* Each item settles centred after a swipe. */
  snap?: boolean;
};

const FOCUSABLE_SELECTOR = "a[href], button:not(:disabled), [tabindex]";

const densityClassNames = {
  compact: "gap-3 px-4.5 sm:gap-4 sm:px-16",
  roomy: "gap-5 px-6 sm:gap-6.5 sm:px-16",
} as const;

const scrollBehavior = (): ScrollBehavior =>
  window.matchMedia("(prefers-reduced-motion: reduce)").matches
    ? "auto"
    : "smooth";

// v3 .hh-arr: the quiet button's lip plus a float shadow, pressing onto it.
const arrowClassName =
  "absolute top-[calc(50%+12px)] z-10 size-11.5 -translate-y-1/2 rounded-full text-ink-2 shadow-[var(--shadow-quiet-value),var(--shadow-float-value)] hover:text-ink active:not-aria-[haspopup]:translate-y-[calc(-50%+3px)] active:not-aria-[haspopup]:shadow-float max-sm:hidden";

/*
 * v3's sideways shelf for every row of covers (the game picker, Home's
 * Plays): one row that scrolls sideways with no scrollbar, centred while it
 * all fits, with room above for a picked item to stand up. The element is
 * the scroller itself, a `div` unless `render` makes it another (`<ul />`
 * for a list); its props, ref and keyboard handling are the caller's.
 *
 * Earlier and Later float over the row's ends on wider screens, each shown
 * while there is more that way, and page through it; phones swipe. They show
 * from the first paint as `initialEdges` says, then follow the row as it
 * scrolls, resizes and its images load: an arrow goes only when the row
 * touches its end, and both go when everything fits. An arrow about to go
 * while it has focus hands focus to the item at that end, so focus never
 * falls out.
 */
export const Carousel = ({
  className,
  density = "compact",
  earlierLabel,
  fadeEdges = false,
  initialEdges,
  laterLabel,
  ref,
  render,
  snap = false,
  ...props
}: CarouselProps) => {
  const scrollerRef = useRef<HTMLElement>(null);
  const earlierRef = useRef<HTMLButtonElement>(null);
  const laterRef = useRef<HTMLButtonElement>(null);
  const [edges, setEdges] = useState(initialEdges);

  useEffect(() => {
    const scroller = scrollerRef.current;

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
     * after the row placed itself and before the paint. Scroll events come
     * at most once a frame, and an unchanged reading renders nothing.
     */
    const resizeObserver = new ResizeObserver(readEdges);

    resizeObserver.observe(scroller);
    scroller.addEventListener("scroll", readEdges, { passive: true });
    // A cover without a known shape grows the row as it loads.
    scroller.addEventListener("load", readEdges, true);

    return () => {
      resizeObserver.disconnect();
      scroller.removeEventListener("scroll", readEdges);
      scroller.removeEventListener("load", readEdges, true);
    };
  }, []);

  const page = (direction: -1 | 1) => {
    const scroller = scrollerRef.current;

    scroller?.scrollBy({
      behavior: scrollBehavior(),
      left: direction * scroller.clientWidth * 0.7,
    });
  };

  const scrollerProps: ComponentProps<"div"> & { "data-slot": string } = {
    "data-slot": "carousel",
    className: cn(
      // Positioned, so the items' offsets are measured from the row.
      "no-scrollbar relative flex items-end justify-center-safe overflow-x-auto pt-9 pb-4 sm:pt-10",
      densityClassNames[density],
      fadeEdges &&
        "mask-[linear-gradient(90deg,transparent,black_7%,black_93%,transparent)]",
      snap && "snap-x *:snap-center",
      className,
    ),
  };
  const scroller = useRender({
    defaultTagName: "div",
    props: mergeProps<"div">(scrollerProps, props),
    ref: ref ? [scrollerRef, ref] : scrollerRef,
    render,
  });

  return (
    <div className="relative">
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
      {scroller}
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
