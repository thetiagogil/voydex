"use client";

import {
  type FocusEvent,
  type PointerEvent,
  useCallback,
  useMemo,
  useState,
} from "react";

/* A tap on a touch screen is not a hover, so it never leaves anything dimmed. */
const isHoverPointer = (event: PointerEvent<HTMLElement | SVGElement>) =>
  event.pointerType !== "touch";

/* Only a keyboard focus picks something out; a click or a returned focus doesn't. */
const isKeyboardFocus = (event: FocusEvent<HTMLElement | SVGElement>) =>
  event.target.matches(":focus-visible");

/*
 * The one hover focus of Voydex's tables and charts: hovering a part, or
 * moving the keyboard onto it, picks it out and the rest fades
 * (`getHoverFocusClassName` with `isOutsideKeyFocus` or `isOutsideGridFocus`).
 * `focus` is whatever names a part: a Play, a type, a table's row and column.
 * Spread `getFocusProps(part)` on each part and `scopeProps` on the one
 * element around them all, so moving between parts never flickers through
 * "nothing picked".
 */
export const useHoverFocus = <TFocus>() => {
  const [focus, setFocus] = useState<TFocus | null>(null);
  const clear = useCallback(() => setFocus(null), []);

  const getFocusProps = useCallback(
    (part: TFocus) => ({
      onBlur: clear,
      onFocus: (event: FocusEvent<HTMLElement | SVGElement>) => {
        if (isKeyboardFocus(event)) setFocus(part);
      },
      onPointerEnter: (event: PointerEvent<HTMLElement | SVGElement>) => {
        if (isHoverPointer(event)) setFocus(part);
      },
    }),
    [clear],
  );
  const scopeProps = useMemo(() => ({ onPointerLeave: clear }), [clear]);

  return { clear, focus, getFocusProps, scopeProps };
};
