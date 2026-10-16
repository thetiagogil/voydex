/* Which ends of a sideways scroller have more to show. */
export type ScrollEdges = {
  canScrollEnd: boolean;
  canScrollStart: boolean;
};

/* A pixel of slack: fractional scroll positions never quite reach the end. */
const EDGE_SLACK = 1;

/*
 * Whether a horizontal scroller can move back and forward from where it is:
 * neither when its content fits.
 */
export const readScrollEdges = ({
  clientWidth,
  scrollLeft,
  scrollWidth,
}: Pick<
  HTMLElement,
  "clientWidth" | "scrollLeft" | "scrollWidth"
>): ScrollEdges => {
  const maxScroll = scrollWidth - clientWidth;

  if (maxScroll <= EDGE_SLACK) {
    return { canScrollEnd: false, canScrollStart: false };
  }

  return {
    canScrollEnd: scrollLeft < maxScroll - EDGE_SLACK,
    canScrollStart: scrollLeft > EDGE_SLACK,
  };
};
