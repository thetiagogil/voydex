"use client";

import { type CSSProperties, useEffect, useState } from "react";

/* Space kept between a stuck panel and the screen's edge. */
const EDGE_GAP = 12;

/*
 * A detail panel that follows the scroll beside a longer list, as a whole:
 * one that fits the screen sticks under the docked bar (the `sticky-panel`
 * utility); one taller than the screen scrolls with the page until its
 * bottom shows, then sticks there. It never scrolls on its own, so nothing
 * in it hides behind a second scrollbar. Returns the panel's style and the
 * callback to pass as its `ref`.
 */
export const useStickyPanel = <TElement extends HTMLElement>() => {
  /* A callback ref: the panel can mount after the hook, as on wide screens. */
  const [panel, setPanel] = useState<TElement | null>(null);
  const [top, setTop] = useState<number | null>(null);

  useEffect(() => {
    if (!panel) {
      return;
    }

    const update = () => {
      const dockOffset =
        Number.parseFloat(
          getComputedStyle(document.documentElement).getPropertyValue(
            "--play-dock-offset",
          ),
        ) || 0;
      const room = window.innerHeight - dockOffset - EDGE_GAP * 2;
      const height = panel.offsetHeight;

      setTop(height > room ? window.innerHeight - height - EDGE_GAP : null);
    };

    const observer = new ResizeObserver(update);

    observer.observe(panel);
    window.addEventListener("resize", update);
    update();

    return () => {
      observer.disconnect();
      window.removeEventListener("resize", update);
    };
  }, [panel]);

  const style: CSSProperties | undefined =
    top === null ? undefined : { top: `${top}px` };

  return [style, setPanel] as const;
};
