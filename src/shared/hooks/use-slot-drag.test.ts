import type { DragEvent } from "react";
import { describe, expect, it, vi } from "vitest";

const flattenCardTilt = vi.hoisted(() => vi.fn());

vi.mock("@/shared/utils/card-tilt", () => ({ flattenCardTilt }));

import { startSlotDrag } from "./use-slot-drag";

describe("startSlotDrag", () => {
  it("flattens a turned card before the drag picture is taken, and carries the item", () => {
    const calls: string[] = [];

    flattenCardTilt.mockImplementation(() => calls.push("flatten"));
    const slot = {
      querySelector: () => {
        calls.push("drag picture");
        return null;
      },
    };
    const dataTransfer = {
      effectAllowed: "none",
      setData: vi.fn(),
      setDragImage: vi.fn(),
    };

    startSlotDrag(
      {
        currentTarget: slot,
        dataTransfer,
      } as unknown as DragEvent<HTMLElement>,
      3,
    );

    expect(flattenCardTilt).toHaveBeenCalledWith(slot);
    expect(calls).toEqual(["flatten", "drag picture"]);
    expect(dataTransfer.effectAllowed).toBe("move");
    expect(dataTransfer.setData).toHaveBeenCalledWith("text/plain", "3");
  });
});
