"use client";

import { useEffect, useState, type RefObject } from "react";

/*
 * Whether a `position: sticky` element is pinned right now: its own box has
 * scrolled past its sticky `top`, so it's held at the top while its container
 * goes on underneath. Lets a pinned head dress as the top of its card.
 */
export const useIsPinned = (
  element: RefObject<HTMLElement | null>,
  container: RefObject<HTMLElement | null>,
) => {
  const [isPinned, setIsPinned] = useState(false);

  useEffect(() => {
    const update = () => {
      const node = element.current;
      const box = container.current;

      if (!node || !box) {
        return;
      }

      const top = Number.parseFloat(getComputedStyle(node).top) || 0;

      /* The container's top has passed the line the element sticks at. */
      setIsPinned(box.getBoundingClientRect().top < top - 0.5);
    };

    update();
    window.addEventListener("scroll", update, { passive: true });
    window.addEventListener("resize", update);

    return () => {
      window.removeEventListener("scroll", update);
      window.removeEventListener("resize", update);
    };
  }, [container, element]);

  return isPinned;
};
