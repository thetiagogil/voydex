"use client";

import {
  useCallback,
  type KeyboardEvent,
  type KeyboardEventHandler,
} from "react";

const tabbableSelector = [
  "a[href]",
  "button:not(:disabled)",
  'input:not(:disabled):not([type="hidden"])',
  "select:not(:disabled)",
  "textarea:not(:disabled)",
  '[tabindex]:not([tabindex="-1"])',
].join(", ");

/* Everything Tab reaches inside `root`, in document order. */
export const listTabbable = (root: HTMLElement): HTMLElement[] =>
  [...root.querySelectorAll<HTMLElement>(tabbableSelector)].filter(
    (element) =>
      element.tabIndex >= 0 &&
      !element.matches(":disabled") &&
      !element.closest("[inert]") &&
      element.getAttribute("aria-hidden") !== "true" &&
      element.getClientRects().length > 0,
  );

/*
 * Where Tab wraps from `active`: to the first tabbable when none follows
 * it, to the last when none precedes it going back, and nowhere else (null)
 * so the browser moves focus itself. The active element need not be
 * tabbable: an overlay opens with focus on its title, and Shift+Tab from
 * there wraps to the last control.
 */
export const getFocusWrapTarget = <Element>({
  active,
  backwards,
  isBefore,
  tabbables,
}: {
  active: Element | null;
  backwards: boolean;
  /* Whether `left` comes before `right` in the document. */
  isBefore: (left: Element, right: Element) => boolean;
  tabbables: readonly Element[];
}): Element | null => {
  if (!tabbables.length || active === null) return null;

  const others = tabbables.filter((element) => element !== active);

  if (backwards) {
    return others.some((element) => isBefore(element, active))
      ? null
      : tabbables[tabbables.length - 1];
  }

  return others.some((element) => isBefore(active, element))
    ? null
    : tabbables[0];
};

const isBeforeInDocument = (left: HTMLElement, right: HTMLElement) =>
  Boolean(
    left.compareDocumentPosition(right) & Node.DOCUMENT_POSITION_FOLLOWING,
  );

/*
 * Keeps Tab inside an open overlay even when the keys come faster than the
 * dialog's own guards, which hand focus back a frame later: the wrap
 * happens in the key event itself. Spread the handler onto the popup; a
 * handler the caller passes runs first and can claim the key.
 */
export const useFocusWrap = (onKeyDown?: KeyboardEventHandler<HTMLElement>) =>
  useCallback(
    (event: KeyboardEvent<HTMLElement>) => {
      onKeyDown?.(event);

      if (event.key !== "Tab" || event.defaultPrevented) return;

      const target = getFocusWrapTarget<HTMLElement>({
        active:
          document.activeElement instanceof HTMLElement
            ? document.activeElement
            : null,
        backwards: event.shiftKey,
        isBefore: isBeforeInDocument,
        tabbables: listTabbable(event.currentTarget),
      });

      if (target) {
        event.preventDefault();
        target.focus();
      }
    },
    [onKeyDown],
  );
