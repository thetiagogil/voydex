import { describe, expect, it, vi } from "vitest";

import { subscribeConnection } from "./use-online";

describe("subscribeConnection", () => {
  it("hears the connection go and come back", () => {
    const target = new EventTarget();
    const listener = vi.fn();

    subscribeConnection(target as unknown as Window, listener);
    target.dispatchEvent(new Event("offline"));
    target.dispatchEvent(new Event("online"));

    expect(listener).toHaveBeenCalledTimes(2);
  });

  it("stops listening once it is stopped", () => {
    const target = new EventTarget();
    const listener = vi.fn();

    subscribeConnection(target as unknown as Window, listener)();
    target.dispatchEvent(new Event("offline"));
    target.dispatchEvent(new Event("online"));

    expect(listener).not.toHaveBeenCalled();
  });
});
