/*
 * What shows past the page's ends when it is pulled further than it goes
 * (the rubber band on a Mac trackpad and on phones). Browsers paint that
 * with the root's colour, one colour for every edge, so the root takes the
 * red of the bar's strip while you are in the page's top half and the wall's
 * colour past it: pulling down at the top shows red above the bar, pulling
 * up at the bottom shows the wall.
 */

/* Set on <html> while the bottom half is in view. */
export const pageEndAttribute = "data-page-end";

type PagePosition = {
  scrollHeight: number;
  scrollY: number;
  viewportHeight: number;
};

/*
 * Whether the bottom of the page is the nearer end. Safari reports the pull
 * itself (above 0 at the top, past the end at the bottom). Chrome doesn't,
 * so on a page too short to scroll the direction of the pull decides
 * (`pullY`, a wheel's `deltaY`: down is past the bottom), and with no pull
 * the colour stays as it was (`wasNearEnd`).
 */
export const isNearPageEnd = ({
  pullY = 0,
  scrollHeight,
  scrollY,
  viewportHeight,
  wasNearEnd = false,
}: PagePosition & { pullY?: number; wasNearEnd?: boolean }) => {
  const maxScroll = Math.max(0, scrollHeight - viewportHeight);

  if (maxScroll < 1 && scrollY === 0) {
    return pullY === 0 ? wasNearEnd : pullY > 0;
  }

  return scrollY > maxScroll / 2;
};

/*
 * Runs inline in <head>, before the page paints, and follows the scroll from
 * then on. It is serialised into the HTML, so it uses nothing from outside
 * itself: `nearEnd` is `isNearPageEnd`, passed in as source.
 */
export const followPageEnd = (
  attribute: string,
  nearEnd: typeof isNearPageEnd,
) => {
  const root = document.documentElement;
  const update = (pullY = 0) => {
    root.toggleAttribute(
      attribute,
      nearEnd({
        pullY,
        scrollHeight: root.scrollHeight,
        scrollY: window.scrollY,
        viewportHeight: window.innerHeight,
        wasNearEnd: root.hasAttribute(attribute),
      }),
    );
  };

  window.addEventListener("scroll", () => update(), { passive: true });
  window.addEventListener("resize", () => update(), { passive: true });
  window.addEventListener("wheel", (event) => update(event.deltaY), {
    passive: true,
  });
  update();
};

export const pageOverscrollScript = `(${followPageEnd.toString()})(${JSON.stringify(
  pageEndAttribute,
)}, ${isNearPageEnd.toString()})`;
