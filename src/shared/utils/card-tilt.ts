import type { PointerEvent } from "react";

import { isMotionReduced } from "@/shared/utils/motion";

/*
 * A card that is yours (a collector card) tilts toward the pointer, as a
 * real card turns in the hand, instead of rising. The element takes
 * `cardTiltClassName` and spreads `cardTiltHandlers`: the pointer's place is
 * written into CSS variables on the element once a frame (no React state, so
 * a Collection of hundreds of cards stays smooth), and `card-tilt` turns it
 * by them, while its glint crosses it as before. Only for a
 * real pointer that hovers: never on touch, the keyboard (focus keeps its
 * ring alone), Motion None or a device that asks for reduced motion.
 */
export const cardTiltClassName = "card-tilt group/tilt";

/* The most a card turns on each axis, in degrees. */
export const cardTiltMax = 9;

/* How long a card takes to settle flat once the pointer leaves (card-tilt). */
const settleMs = 400;

type Box = { height: number; left: number; top: number; width: number };

const clamp = (value: number) => Math.min(1, Math.max(-1, value));

/*
 * The turn for a pointer at (x, y) over a card's box: the corner under the
 * pointer comes toward you, flat at the centre, `cardTiltMax` at an edge.
 * The edge under the pointer grows, so the pointer never slips off it and
 * the card never flickers flat at its edge.
 */
export const getCardTilt = (x: number, y: number, box: Box) => {
  const across = box.width ? clamp(((x - box.left) / box.width) * 2 - 1) : 0;
  const down = box.height ? clamp(((y - box.top) / box.height) * 2 - 1) : 0;
  const round = (value: number) => Math.round(value * 100) / 100 || 0;

  return {
    rotateX: round(down * cardTiltMax),
    rotateY: round(-across * cardTiltMax),
  };
};

/* Whether this pointer may tilt a card: a fine one that hovers, with motion on. */
export const canCardTilt = (pointerType: string) =>
  pointerType !== "touch" &&
  typeof window !== "undefined" &&
  window.matchMedia("(hover: hover) and (pointer: fine)").matches &&
  !isMotionReduced();

const frames = new WeakMap<HTMLElement, number>();
const points = new WeakMap<HTMLElement, { x: number; y: number }>();
const settles = new WeakMap<HTMLElement, number>();

const write = (
  element: HTMLElement,
  { rotateX, rotateY }: ReturnType<typeof getCardTilt>,
) => {
  element.style.setProperty("--tilt-x", `${rotateX}deg`);
  element.style.setProperty("--tilt-y", `${rotateY}deg`);
};

const clear = (element: HTMLElement) => {
  const frame = frames.get(element);

  if (frame !== undefined) cancelAnimationFrame(frame);
  frames.delete(element);
  window.clearTimeout(settles.get(element));
  settles.delete(element);
  delete element.dataset.tilt;
  for (const name of ["--tilt-x", "--tilt-y"]) {
    element.style.removeProperty(name);
  }
};

const follow = (event: PointerEvent<HTMLElement>) => {
  const element = event.currentTarget;

  if (!canCardTilt(event.pointerType)) return;

  window.clearTimeout(settles.get(element));
  settles.delete(element);
  element.dataset.tilt = "on";
  points.set(element, { x: event.clientX, y: event.clientY });
  if (frames.has(element)) return;

  frames.set(
    element,
    requestAnimationFrame(() => {
      frames.delete(element);
      const point = points.get(element);

      if (!point || element.dataset.tilt !== "on") return;
      write(
        element,
        getCardTilt(point.x, point.y, element.getBoundingClientRect()),
      );
    }),
  );
};

/* The pointer left: ease back flat, then drop the turn altogether. */
const settle = (event: PointerEvent<HTMLElement>) => {
  const element = event.currentTarget;

  if (!element.dataset.tilt) return;

  const frame = frames.get(element);

  if (frame !== undefined) cancelAnimationFrame(frame);
  frames.delete(element);
  element.dataset.tilt = "settle";
  write(element, { rotateX: 0, rotateY: 0 });
  window.clearTimeout(settles.get(element));
  settles.set(
    element,
    window.setTimeout(() => {
      if (element.dataset.tilt === "settle") clear(element);
    }, settleMs),
  );
};

export const cardTiltHandlers = {
  onPointerCancel: settle,
  onPointerLeave: settle,
  onPointerMove: follow,
};

/*
 * Flat at once, for a card about to be dragged: the browser draws the drag
 * picture from the page as it is, so a turned card would fly turned.
 */
export const flattenCardTilt = (root: HTMLElement) => {
  for (const element of [
    root,
    ...root.querySelectorAll<HTMLElement>("[data-tilt]"),
  ]) {
    if (element.dataset.tilt) clear(element);
  }
};
