/*
 * Whether the page should keep still: the Motion setting (`data-motion` on
 * the root element, "full" or "reduced") first, then the device's own
 * reduced-motion preference. Browser only; `app-base.css` and the
 * `motion-reduce` / `motion-safe` variants follow the same order.
 */
export const isMotionReduced = (): boolean => {
  if (typeof document === "undefined") return false;

  const motion = document.documentElement.dataset.motion;

  if (motion === "reduced") return true;
  if (motion === "full") return false;

  return window.matchMedia("(prefers-reduced-motion: reduce)").matches;
};

/* The scroll behaviour for a programmatic scroll: smooth unless motion is reduced. */
export const getScrollBehavior = (): ScrollBehavior =>
  isMotionReduced() ? "auto" : "smooth";
