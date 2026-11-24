import type { PointerEvent } from "react";
import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import {
  canCardTilt,
  cardTiltHandlers,
  cardTiltMax,
  flattenCardTilt,
  getCardTilt,
} from "./card-tilt";

const box = { height: 200, left: 100, top: 50, width: 160 };

describe("getCardTilt", () => {
  it("is flat at the centre", () => {
    expect(getCardTilt(180, 150, box)).toEqual({
      rotateX: 0,
      rotateY: 0,
    });
  });

  it("brings the corner under the pointer toward you, at most cardTiltMax", () => {
    expect(getCardTilt(100, 50, box)).toEqual({
      rotateX: -cardTiltMax,
      rotateY: cardTiltMax,
    });
    expect(getCardTilt(260, 250, box)).toEqual({
      rotateX: cardTiltMax,
      rotateY: -cardTiltMax,
    });
  });

  it("never turns past cardTiltMax outside the box", () => {
    expect(getCardTilt(-500, 900, box)).toEqual({
      rotateX: cardTiltMax,
      rotateY: cardTiltMax,
    });
  });

  it("stays flat on a card with no size", () => {
    expect(
      getCardTilt(10, 10, { height: 0, left: 0, top: 0, width: 0 }),
    ).toEqual({ rotateX: 0, rotateY: 0 });
  });
});

const stubPage = ({
  fineHover = true,
  motion,
  reduced = false,
}: {
  fineHover?: boolean;
  motion?: "none";
  reduced?: boolean;
}) => {
  vi.stubGlobal("document", { documentElement: { dataset: { motion } } });
  vi.stubGlobal("window", {
    clearTimeout,
    matchMedia: (query: string) => ({
      matches: query.includes("reduced-motion") ? reduced : fineHover,
    }),
    setTimeout,
  });
  vi.stubGlobal("requestAnimationFrame", (run: () => void) => {
    run();
    return 1;
  });
  vi.stubGlobal("cancelAnimationFrame", () => {});
};

/* A card element: its data, its style variables and its box. */
const fakeCard = () => {
  const properties = new Map<string, string>();

  return {
    dataset: {} as DOMStringMap,
    getBoundingClientRect: () => box,
    properties,
    querySelectorAll: () => [],
    style: {
      removeProperty: (name: string) => properties.delete(name),
      setProperty: (name: string, value: string) => properties.set(name, value),
    },
  };
};

const pointer = (
  card: ReturnType<typeof fakeCard>,
  x: number,
  y: number,
  pointerType = "mouse",
) =>
  ({
    clientX: x,
    clientY: y,
    currentTarget: card,
    pointerType,
  }) as unknown as PointerEvent<HTMLElement>;

describe("canCardTilt", () => {
  afterEach(() => {
    vi.unstubAllGlobals();
  });

  it("tilts for a mouse that hovers, with motion on", () => {
    stubPage({});
    expect(canCardTilt("mouse")).toBe(true);
  });

  it("never tilts on touch", () => {
    stubPage({});
    expect(canCardTilt("touch")).toBe(false);
    stubPage({ fineHover: false });
    expect(canCardTilt("mouse")).toBe(false);
  });

  it("never tilts when motion is reduced, by the device or Motion None", () => {
    stubPage({ reduced: true });
    expect(canCardTilt("mouse")).toBe(false);
    stubPage({ motion: "none" });
    expect(canCardTilt("mouse")).toBe(false);
  });
});

describe("cardTiltHandlers", () => {
  beforeEach(() => {
    vi.useFakeTimers();
  });

  afterEach(() => {
    vi.useRealTimers();
    vi.unstubAllGlobals();
  });

  it("writes the turn into the card's style, then settles flat and clears it on leave", () => {
    stubPage({});
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    expect(card.dataset.tilt).toBe("on");
    expect(card.properties.get("--tilt-x")).toBe(`-${cardTiltMax}deg`);
    expect(card.properties.get("--tilt-y")).toBe(`${cardTiltMax}deg`);

    cardTiltHandlers.onPointerLeave(pointer(card, 0, 0));
    expect(card.dataset.tilt).toBe("settle");
    expect(card.properties.get("--tilt-x")).toBe("0deg");
    expect(card.properties.get("--tilt-y")).toBe("0deg");

    vi.runAllTimers();
    expect(card.dataset.tilt).toBeUndefined();
    expect(card.properties.size).toBe(0);
  });

  it("leaves the card alone on touch and under reduced motion", () => {
    const card = fakeCard();

    stubPage({});
    cardTiltHandlers.onPointerMove(pointer(card, 100, 50, "touch"));
    stubPage({ reduced: true });
    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));

    expect(card.dataset.tilt).toBeUndefined();
    expect(card.properties.size).toBe(0);
  });

  it("flattens a turned card at once for a drag", () => {
    stubPage({});
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flattenCardTilt(card as unknown as HTMLElement);

    expect(card.dataset.tilt).toBeUndefined();
    expect(card.properties.size).toBe(0);
  });
});
