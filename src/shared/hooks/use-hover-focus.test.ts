import type { FocusEvent, PointerEvent } from "react";
import { describe, expect, it, vi } from "vitest";

import { getHoverFocusHandlers } from "./use-hover-focus";

const pointer = (pointerType: string) =>
  ({ pointerType }) as PointerEvent<HTMLElement>;

const focusEvent = (isFocusVisible: boolean) =>
  ({
    target: { matches: () => isFocusVisible },
  }) as unknown as FocusEvent<HTMLElement>;

describe("getHoverFocusHandlers", () => {
  it("picks a part out under a mouse or a pen", () => {
    const setFocus = vi.fn();
    const handlers = getHoverFocusHandlers("fire", setFocus);

    handlers.onPointerEnter(pointer("mouse"));
    handlers.onPointerEnter(pointer("pen"));

    expect(setFocus).toHaveBeenCalledTimes(2);
    expect(setFocus).toHaveBeenLastCalledWith("fire");
  });

  it("ignores a tap, so nothing stays faded on a touch screen", () => {
    const setFocus = vi.fn();

    getHoverFocusHandlers("fire", setFocus).onPointerEnter(pointer("touch"));

    expect(setFocus).not.toHaveBeenCalled();
  });

  it("follows the keyboard, not a click or a returned focus", () => {
    const setFocus = vi.fn();
    const handlers = getHoverFocusHandlers("fire", setFocus);

    handlers.onFocus(focusEvent(false));
    expect(setFocus).not.toHaveBeenCalled();

    handlers.onFocus(focusEvent(true));
    expect(setFocus).toHaveBeenCalledWith("fire");
  });

  it("lets go on blur", () => {
    const setFocus = vi.fn();

    getHoverFocusHandlers("fire", setFocus).onBlur();

    expect(setFocus).toHaveBeenCalledWith(null);
  });
});
