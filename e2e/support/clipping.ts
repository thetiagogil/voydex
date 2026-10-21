import { expect, type Page } from "@playwright/test";

type Measured = { clipped: Clipped[]; measured: number };

type Clipped = {
  clippedBy: string;
  /* The element's and the parent's left-right and top-bottom, in pixels. */
  boxes: string;
  element: string;
  sides: string;
};

/*
 * What the page draws outside an element's box (a keyboard focus ring, a
 * corner mark's white band) must not be cut off by a parent that clips
 * (`overflow` other than visible). Each element is focused the way the
 * keyboard does, so its real ring (width plus offset) is measured, then its
 * reach is compared with every clipping ancestor it sits inside of.
 */
const findClipped = async (
  page: Page,
  selector: string,
  reach: "ring" | "mark",
): Promise<Measured> => {
  /* A page that redirects as it settles (Progress opens a sub-view) is read once it has. */
  for (let attempt = 0; ; attempt += 1) {
    try {
      await page.waitForLoadState("load");
      return await measure(page, selector, reach);
    } catch (error) {
      if (
        attempt >= 2 ||
        !String(error).includes("Execution context was destroyed")
      ) {
        throw error;
      }
    }
  }
};

const measure = async (
  page: Page,
  selector: string,
  reach: "ring" | "mark",
): Promise<Measured> =>
  page.evaluate(
    ({ markReach, ringSelector, which }) => {
      const found: Clipped[] = [];
      let measured = 0;
      const describe = (element: Element) =>
        `${element.tagName.toLowerCase()}${
          element.getAttribute("aria-label")
            ? `[${element.getAttribute("aria-label")}]`
            : ""
        }${
          typeof element.className === "string" && element.className
            ? `.${element.className.trim().split(/\s+/).slice(0, 3).join(".")}`
            : ""
        } "${(element.textContent ?? "").trim().slice(0, 24)}"`;

      for (const element of document.querySelectorAll(ringSelector)) {
        const style = getComputedStyle(element);
        const rect = element.getBoundingClientRect();
        if (
          style.display === "none" ||
          style.visibility === "hidden" ||
          !rect.width ||
          !rect.height ||
          element.closest("[inert], [aria-hidden=true]")
        ) {
          continue;
        }

        let reachPx = markReach;
        if (which === "ring") {
          if (element instanceof HTMLElement) {
            element.focus({
              focusVisible: true,
              preventScroll: true,
            } as FocusOptions);
          }
          const focused = getComputedStyle(element);
          reachPx =
            focused.outlineStyle === "none"
              ? 0
              : parseFloat(focused.outlineWidth) +
                parseFloat(focused.outlineOffset || "0");
          if (element instanceof HTMLElement) {
            element.blur();
          }
        }
        if (reachPx <= 0) {
          continue;
        }
        measured += 1;

        for (
          let parent = element.parentElement;
          parent && parent !== document.body;
          parent = parent.parentElement
        ) {
          const parentStyle = getComputedStyle(parent);
          const clipsX = parentStyle.overflowX !== "visible";
          const clipsY = parentStyle.overflowY !== "visible";
          if (!clipsX && !clipsY) {
            continue;
          }
          const box = parent.getBoundingClientRect();
          const inside =
            rect.left >= box.left - 1 &&
            rect.right <= box.right + 1 &&
            rect.top >= box.top - 1 &&
            rect.bottom <= box.bottom + 1;
          /* Scrolled out of its scroller, or a sheet's own frame: not a cut. */
          if (!inside) {
            continue;
          }
          const edge = (width: string) => parseFloat(width) || 0;
          /*
           * A scroller shows its padding only at its ends: an item scrolled
           * to an edge mid-way is cut by design, and an end it is not at yet
           * is not a cut.
           */
          const atStart = (scrolled: number) => scrolled <= 1;
          /* The screen's own edge cuts anything, so it is not the page's doing. */
          const onScreenX = box.left > 0 && box.right < window.innerWidth - 1;
          const onScreenY = box.top > 0;
          const atEnd = (scrolled: number, total: number, shown: number) =>
            scrolled >= total - shown - 1;
          const sides = [
            clipsX &&
              onScreenX &&
              atStart(parent.scrollLeft) &&
              rect.left - reachPx <
                box.left + edge(parentStyle.borderLeftWidth) - 0.5 &&
              "left",
            clipsX &&
              onScreenX &&
              atEnd(
                parent.scrollLeft,
                parent.scrollWidth,
                parent.clientWidth,
              ) &&
              rect.right + reachPx >
                box.right - edge(parentStyle.borderRightWidth) + 0.5 &&
              "right",
            clipsY &&
              onScreenY &&
              atStart(parent.scrollTop) &&
              rect.top - reachPx <
                box.top + edge(parentStyle.borderTopWidth) - 0.5 &&
              "top",
            clipsY &&
              atEnd(
                parent.scrollTop,
                parent.scrollHeight,
                parent.clientHeight,
              ) &&
              rect.bottom + reachPx >
                box.bottom - edge(parentStyle.borderBottomWidth) + 0.5 &&
              "bottom",
          ].filter(Boolean);
          if (sides.length) {
            const at = (a: DOMRect) =>
              `${Math.round(a.left)}-${Math.round(a.right)} x ${Math.round(a.top)}-${Math.round(a.bottom)}`;
            found.push({
              boxes: `${at(rect)} in ${at(box)}, reach ${reachPx}`,
              clippedBy: describe(parent),
              element: describe(element),
              sides: sides.join("+"),
            });
          }
        }
      }

      return { clipped: found, measured };
    },
    {
      markReach: reach === "mark" ? 3 : 0,
      ringSelector: selector,
      which: reach,
    },
  );

const focusableSelector =
  'a[href], button, input, select, textarea, [role="button"], [tabindex]:not([tabindex="-1"])';

/* Fails with every focusable element whose focus ring a parent would cut off. */
export const expectNoClippedFocusRings = async (page: Page) => {
  const { clipped, measured } = await findClipped(
    page,
    focusableSelector,
    "ring",
  );

  /* A page whose controls show no ring when focused would pass without this. */
  expect(measured, "controls with a focus ring were measured").toBeGreaterThan(
    0,
  );
  expect(clipped).toEqual([]);
};

/* Fails with every corner mark (and its 3px white band) a parent would cut off. */
export const expectNoClippedCornerMarks = async (page: Page) => {
  const { clipped } = await findClipped(page, "[data-corner] > *", "mark");

  expect(clipped).toEqual([]);
};

/* Fails when a page that should show corner marks shows none. */
export const expectCornerMarksShown = async (page: Page) => {
  await expect(page.locator("[data-corner]").first()).toBeVisible();
};

/*
 * The corner rule: a mark in a `-left` corner sits in its card's left half and
 * in a `-right` corner in the right half, level with the card's top edge.
 * The card is the closest list item.
 */
export const expectCornerMarksOnTheirSide = async (page: Page) => {
  const misplaced = await page.evaluate(() => {
    const found: string[] = [];
    for (const corner of document.querySelectorAll("[data-corner]")) {
      const card = corner.closest("li");
      const side = corner.getAttribute("data-corner") ?? "";
      if (!card || !corner.getBoundingClientRect().width) {
        continue;
      }
      const box = card.getBoundingClientRect();
      const mark = corner.getBoundingClientRect();
      const centre = mark.left + mark.width / 2;
      const onLeft = centre < box.left + box.width / 2;
      const atTop = mark.top - box.top < 40;
      if (
        (side.endsWith("left") && !onLeft) ||
        (side.endsWith("right") && onLeft) ||
        (side.includes("top") && !atTop)
      ) {
        found.push(
          `${side}: "${(card.textContent ?? "").trim().slice(0, 30)}"`,
        );
      }
    }
    return found;
  });

  expect(misplaced).toEqual([]);
};
