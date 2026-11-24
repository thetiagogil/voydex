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

/* Frames queued like the browser's, run only when a test flushes them. */
let queuedFrames = new Map<number, () => void>();
let nextFrame = 1;
const flushFrames = () => {
  const run = [...queuedFrames.values()];

  queuedFrames = new Map();
  for (const frame of run) frame();
};

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
    const id = nextFrame++;

    queuedFrames.set(id, run);
    return id;
  });
  vi.stubGlobal("cancelAnimationFrame", (id: number) => {
    queuedFrames.delete(id);
  });
};

type FakeCard = {
  children: FakeCard[];
  classList: { contains: (name: string) => boolean };
  contains: (node: unknown) => boolean;
  dataset: DOMStringMap;
  getBoundingClientRect: () => typeof box;
  properties: Map<string, string>;
  querySelectorAll: () => FakeCard[];
  style: {
    removeProperty: (name: string) => boolean;
    setProperty: (name: string, value: string) => Map<string, string>;
  };
};

/* A card element: its class, its data, its style variables and its box. */
const fakeCard = ({
  children = [],
  classes = ["card-tilt"],
}: { children?: FakeCard[]; classes?: string[] } = {}): FakeCard => {
  const properties = new Map<string, string>();
  const card: FakeCard = {
    children,
    classList: { contains: (name) => classes.includes(name) },
    contains: (node) =>
      node === card || children.some((child) => child.contains(node)),
    dataset: {},
    getBoundingClientRect: () => box,
    properties,
    querySelectorAll: () =>
      children.flatMap((child) => [child, ...child.querySelectorAll()]),
    style: {
      removeProperty: (name) => properties.delete(name),
      setProperty: (name, value) => properties.set(name, value),
    },
  };

  return card;
};

const pointer = (
  card: FakeCard,
  x: number,
  y: number,
  {
    pointerType = "mouse",
    target = card as unknown,
  }: {
    pointerType?: string;
    target?: unknown;
  } = {},
) =>
  ({
    clientX: x,
    clientY: y,
    currentTarget: card,
    pointerType,
    target,
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
    queuedFrames = new Map();
    stubPage({});
  });

  afterEach(() => {
    vi.useRealTimers();
    vi.unstubAllGlobals();
  });

  const turnOf = (card: FakeCard) => [
    card.properties.get("--tilt-x"),
    card.properties.get("--tilt-y"),
  ];

  it("turns once a frame, to the latest place of the pointer", () => {
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    expect(card.dataset.tilt).toBe("on");
    expect(turnOf(card)).toEqual([undefined, undefined]);

    /* Two moves before a frame make one turn, to the second place. */
    cardTiltHandlers.onPointerMove(pointer(card, 260, 250));
    expect(queuedFrames.size).toBe(1);
    flushFrames();
    expect(turnOf(card)).toEqual([`${cardTiltMax}deg`, `-${cardTiltMax}deg`]);

    /* A later move turns it again. */
    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();
    expect(turnOf(card)).toEqual([`-${cardTiltMax}deg`, `${cardTiltMax}deg`]);
  });

  it("settles flat on leave, then clears its turn", () => {
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();
    cardTiltHandlers.onPointerLeave(pointer(card, 0, 0));
    expect(card.dataset.tilt).toBe("settle");
    expect(turnOf(card)).toEqual(["0deg", "0deg"]);

    vi.runAllTimers();
    expect(card.dataset.tilt).toBeUndefined();
    expect(card.properties.size).toBe(0);
  });

  it("drops a frame still waiting when the pointer leaves", () => {
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    cardTiltHandlers.onPointerLeave(pointer(card, 0, 0));
    expect(queuedFrames.size).toBe(0);
    flushFrames();
    expect(turnOf(card)).toEqual(["0deg", "0deg"]);
  });

  it("settles when a drag or the browser cancels the pointer", () => {
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();
    cardTiltHandlers.onPointerCancel(pointer(card, 100, 50));
    expect(card.dataset.tilt).toBe("settle");
    expect(turnOf(card)).toEqual(["0deg", "0deg"]);
  });

  it("settles when the pointer moves into a popover opened from the card", () => {
    const card = fakeCard();
    const popover = fakeCard({ classes: [] });

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();
    /* React passes the popover's move up to the card, with no leave. */
    cardTiltHandlers.onPointerMove(pointer(card, 120, 60, { target: popover }));
    expect(card.dataset.tilt).toBe("settle");
    expect(queuedFrames.size).toBe(0);
    expect(turnOf(card)).toEqual(["0deg", "0deg"]);
  });

  it("follows a move over something inside the card", () => {
    const inner = fakeCard({ classes: [] });
    const card = fakeCard({ children: [inner] });

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50, { target: inner }));
    flushFrames();
    expect(card.dataset.tilt).toBe("on");
    expect(turnOf(card)).toEqual([`-${cardTiltMax}deg`, `${cardTiltMax}deg`]);
  });

  it("turns only while the card wears the class, and settles a turn left from before", () => {
    const card = fakeCard({ classes: [] });

    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();
    expect(card.dataset.tilt).toBeUndefined();

    /* Turned, then the class was taken off (the Planner's replace mode). */
    card.dataset.tilt = "on";
    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    expect(card.dataset.tilt).toBe("settle");
    vi.runAllTimers();
    expect(card.dataset.tilt).toBeUndefined();
  });

  it("leaves the card alone on touch and under reduced motion", () => {
    const card = fakeCard();

    cardTiltHandlers.onPointerMove(
      pointer(card, 100, 50, { pointerType: "touch" }),
    );
    stubPage({ reduced: true });
    cardTiltHandlers.onPointerMove(pointer(card, 100, 50));
    flushFrames();

    expect(card.dataset.tilt).toBeUndefined();
    expect(card.properties.size).toBe(0);
  });

  it("flattens a turned card at once for a drag, the root or one inside it", () => {
    const inner = fakeCard();
    const slot = fakeCard({ children: [inner], classes: [] });

    cardTiltHandlers.onPointerMove(pointer(inner, 100, 50));
    flushFrames();
    flattenCardTilt(slot as unknown as HTMLElement);
    expect(inner.dataset.tilt).toBeUndefined();
    expect(inner.properties.size).toBe(0);

    const root = fakeCard();

    cardTiltHandlers.onPointerMove(pointer(root, 100, 50));
    flushFrames();
    flattenCardTilt(root as unknown as HTMLElement);
    expect(root.dataset.tilt).toBeUndefined();
    expect(queuedFrames.size).toBe(0);
  });
});
