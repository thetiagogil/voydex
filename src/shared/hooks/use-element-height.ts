"use client";

import { useEffect, useState } from "react";

/*
 * An element's height as it changes, for something laid out around it (the
 * side panel stuck below Story's pinned stamp card). Returns the height (0
 * until measured) and the callback to pass as its `ref`.
 */
export const useElementHeight = <TElement extends HTMLElement>() => {
  /* A callback ref: the element can mount after the hook. */
  const [element, setElement] = useState<TElement | null>(null);
  const [height, setHeight] = useState(0);

  useEffect(() => {
    if (!element) {
      return;
    }

    const observer = new ResizeObserver(() => setHeight(element.offsetHeight));

    /* The observer reports once on observe, so the first height comes too. */
    observer.observe(element);

    return () => observer.disconnect();
  }, [element]);

  return [height, setElement] as const;
};
