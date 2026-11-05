"use client";

import { useCallback, type KeyboardEvent } from "react";

const tabbableSelector = [
  "a[href]",
  "button:not([disabled])",
  'input:not([disabled]):not([type="hidden"])',
  "select:not([disabled])",
  "textarea:not([disabled])",
  '[tabindex]:not([tabindex="-1"])',
].join(", ");

/* Everything Tab reaches inside `root`, in document order. */
export const listTabbable = (root: HTMLElement): HTMLElement[] =>
  [...root.querySelectorAll<HTMLElement>(tabbableSelector)].filter(
    (element) =>
      element.tabIndex >= 0 &&
      !element.closest("[inert]") &&
      element.getAttribute("aria-hidden") !== "true" &&
      element.getClientRects().length > 0,
  );

/*
 * Where Tab wraps: the first tabbable from the last going forward, the last
 * from the first going back, and nowhere else (null) so the browser moves
 * focus itself inside the list.
 */
export const getFocusWrapTarget = <Element>({
  active,
  backwards,
  tabbables,
}: {
  active: Element | null;
  backwards: boolean;
  tabbables: readonly Element[];
}): Element | null => {
  if (!tabbables.length || active === null) return null;

  const first = tabbables[0];
  const last = tabbables[tabbables.length - 1];

  if (backwards) return active === first ? last : null;

  return active === last ? first : null;
};

/*
 * Keeps Tab inside an open overlay even when the keys come faster than the
 * dialog's own guards, which hand focus back a frame later: the wrap
 * happens in the key event itself. Spread the handler onto the popup.
 */
export const useFocusWrap = () =>
  useCallback((event: KeyboardEvent<HTMLElement>) => {
    if (event.key !== "Tab" || event.defaultPrevented) return;

    const target = getFocusWrapTarget<HTMLElement>({
      active:
        document.activeElement instanceof HTMLElement
          ? document.activeElement
          : null,
      backwards: event.shiftKey,
      tabbables: listTabbable(event.currentTarget),
    });

    if (target) {
      event.preventDefault();
      target.focus();
    }
  }, []);
