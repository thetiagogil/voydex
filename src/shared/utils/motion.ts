/*
 * Whether the page should keep still: Motion None (`data-motion="none"` on
 * the root element), or the device's own reduced-motion preference. Browser
 * only; `app-base.css` follows the same rule.
 */
export const isMotionReduced = (): boolean => {
  if (typeof document === "undefined") return false;

  const motion = document.documentElement.dataset.motion;

  if (motion === "none") return true;

  return window.matchMedia("(prefers-reduced-motion: reduce)").matches;
};

/* The scroll behaviour for a programmatic scroll: smooth unless motion is reduced. */
export const getScrollBehavior = (): ScrollBehavior =>
  isMotionReduced() ? "auto" : "smooth";
