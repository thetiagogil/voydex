import { cn } from "@/shared/utils/cn";

/*
 * The one hover focus of Voydex's tables and charts (`useHoverFocus`): what
 * is picked out stays as it is and everything else fades, at one strength.
 */
export const getHoverFocusClassName = (isDimmed: boolean) =>
  cn("transition-opacity", isDimmed && "opacity-40");

/* A part picked out on its own: a chart slice, a chip, a Play's card. */
export const isOutsideKeyFocus = <TKey>(focus: TKey | null, key: TKey) =>
  focus !== null && focus !== key;

/*
 * A table's place: a body cell has both, a column head only its column, a
 * row head (or a row's total) only its row.
 */
export type GridFocus = { column: number | null; row: number | null };

/*
 * A table picks out a cross: hovering a cell keeps its whole row and its
 * whole column, a column head its column, a row head its row.
 */
export const isOutsideGridFocus = (focus: GridFocus | null, part: GridFocus) =>
  focus !== null &&
  !(part.row !== null && part.row === focus.row) &&
  !(part.column !== null && part.column === focus.column);
