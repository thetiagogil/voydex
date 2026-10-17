/*
 * The one look for every picker's popup: selects, dropdown menus, the bar's
 * menus and searchable lists. A white panel with a hairline on the float
 * shadow; each option a 48px row (two lines with a description) that lights
 * up under the pointer or the keyboard and takes the selected tint, with a
 * check at its end, when it is the pick.
 */
export const menuPanelClassName =
  "bg-surface text-ink shadow-menu rounded-lg p-1.5";

/* One option's row. Items mark the highlighted and the picked option. */
export const menuOptionClassName =
  "relative flex min-h-12 w-full cursor-default items-center gap-3 rounded-md py-1.5 pr-10 pl-2 text-15 font-bold outline-hidden select-none transition-colors data-highlighted:bg-hover data-highlighted:text-ink data-disabled:pointer-events-none data-disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:shrink-0";

/* The picked option, where the item marks it with `data-selected`. */
export const menuOptionSelectedClassName =
  "data-selected:bg-select-soft data-selected:text-select-ink data-selected:data-highlighted:bg-select-soft data-selected:data-highlighted:text-select-ink";

/* Where the check sits at the end of the picked option's row. */
export const menuCheckClassName =
  "pointer-events-none absolute right-3 flex size-5 items-center justify-center text-select-ink";

/* A group's quiet heading inside a panel. */
export const menuGroupLabelClassName =
  "px-2 pt-2 pb-1 text-13 font-bold text-ink-3";
